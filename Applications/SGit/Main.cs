/*
 * This file is part of SGit.
 * 
 * Copyright (C) 2013-2014 Schumix Team <http://schumix.eu/>
 * 
 * SGit is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * SGit is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with SGit.  If not, see <http://www.gnu.org/licenses/>.
 */

using System;
using System.IO;
using NGit;
using NGit.Api;
using SGit.Options;
using SGit.Exceptions;
using SGit.Extensions;

namespace SGit
{
	class MainClass
	{
		private const string TempDir = ".temp";

		public static void Main(string[] args)
		{
			bool help = false;
			bool appveyor = false;
			string repourl = "git://github.com/Schumix/Schumix2.git";
			string branch = "master";

			var os = new OptionSet()
			{
				{ "h|?|help", "Display help.", v => help = true },
				{ "appveyor", "Appveyor enabled.", v => appveyor = true },
				{ "repo-url=", "Set repository url.", v => repourl = v },
				{ "branch=", "Set branch.", v => branch = v },
			};

			try
			{
				os.Parse(args);

				if(help)
				{
					ShowHelp(os);
					return;
				}
			}
			catch(OptionException oe)
			{
				Console.Error.WriteLine("{0} for options '{1}'", oe.Message, oe.OptionName);
				return;
			}

			if(appveyor)
			{
				try
				{
					if(Directory.Exists(TempDir))
						Directory.Delete(TempDir, true);

					var cmd = Git.CloneRepository();
					cmd.SetProgressMonitor(new NullProgressMonitor());
					cmd.SetURI(repourl);
					cmd.SetRemote("origin");
					cmd.SetBranch("refs/heads/" + branch);
					cmd.SetDirectory(Path.Combine(Environment.CurrentDirectory, TempDir));
					cmd.SetCloneSubmodules(true);
					cmd.Call();
				}
				catch(Exception e)
				{
					Console.Error.WriteLine(e);
				}
			}
			else
			{
				try
				{
					if(Directory.Exists(Path.Combine(Environment.CurrentDirectory, ".git")))
						Gitmodule(Environment.CurrentDirectory);
					else
						Console.Error.WriteLine("No such .git directory.");
				}
				catch(Exception e)
				{
					Console.Error.WriteLine(e);
				}
			}

			GC.Collect();
			Console.WriteLine();
			Console.WriteLine("Done");
		}

		private static void ShowHelp(OptionSet os)
		{
			Console.WriteLine("[SGit] Version: {0}", SGit.Config.Consts.SGitVersion);
			Console.WriteLine("Options:");
			os.WriteOptionDescriptions(System.Console.Out);
		}

		private static void Gitmodule(string DirName)
		{
			var cmd = Git.Open(new Sharpen.FilePath(DirName));
			cmd.SubmoduleInit().Call();
			cmd.SubmoduleUpdate().SetProgressMonitor(new TextProgressMonitor()).Call();

			if(File.Exists(Path.Combine(DirName, ".gitmodules")))
			{
				string line = string.Empty;
				var gitmodule = new StreamReader(Path.Combine(DirName, ".gitmodules"));

				while(!(line = gitmodule.ReadLine()).IsNull())
				{
					if(line.Contains("path = "))
						Gitmodule(Path.Combine(DirName, line.Substring(line.IndexOf("path = ") + "path = ".Length))); 
				}
			}
		}
	}
}
