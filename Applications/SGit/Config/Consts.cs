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

namespace SGit.Config
{
	public static class Consts
	{
		public const string SGitDescription = "NGit for Schumix";
#if DEBUG
		public const string SGitConfiguration = "Debug";
#else
		public const string SGitConfiguration = "Release";
#endif
		public const string SGitCompany = "Schumix Productions";
		public const string SGitProduct = "Schumix";
		public const string SGitCopyright = "Copyright (C) 2013 Schumix Team <http://schumix.eu/>";
		public const string SGitTrademark = "GNU General Public License";
		public const string SGitVersion = "1.0.0";
		public const string SGitFileVersion = "1.0.0.0";
	}
}