/*
 * This file is part of SGit.
 * 
 * Copyright (C) 2013 Schumix Team <http://schumix.eu/>
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

namespace SGit
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Gitmodule(Environment.CurrentDirectory);

			GC.Collect();
			Console.WriteLine();
			Console.WriteLine("Done");
		}

		private static void Gitmodule(string DirName)
		{
			var cmd = Git.Open(new Sharpen.FilePath(DirName));
			cmd.SubmoduleInit().Call();
			cmd.SubmoduleUpdate().SetProgressMonitor(new TextProgressMonitor()).Call();

			if(File.Exists(Path.Combine(DirName, ".gitmodules")))
			{
				var gitmodule = new StreamReader(Path.Combine(DirName, ".gitmodules"));
				string line = string.Empty;

				while((line = gitmodule.ReadLine()) != null)
				{
					if(line.Contains("path = "))
						Gitmodule(Path.Combine(DirName, line.Substring(line.IndexOf("path = ") + "path = ".Length))); 
				}
			}
		}
	}
}
