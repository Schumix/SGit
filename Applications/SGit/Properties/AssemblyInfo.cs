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
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using SGit.Config;

// Information about this assembly is defined by the following attributes. 
// Change them to the values specific to your project.

[assembly: AssemblyTitle("SGit")]
[assembly: AssemblyDescription(Consts.SGitDescription)]
[assembly: AssemblyConfiguration(Consts.SGitConfiguration)]
[assembly: AssemblyCompany(Consts.SGitCompany)]
[assembly: AssemblyProduct(Consts.SGitProduct)]
[assembly: AssemblyCopyright(Consts.SGitCopyright)]
[assembly: AssemblyTrademark(Consts.SGitTrademark)]

[assembly: CLSCompliant(true)]

// Setting ComVisible to false makes the types in this assembly not visible 
// to COM components.  If you need to access a type in this assembly from 
// COM, set the ComVisible attribute to true on that type.
[assembly: ComVisible(false)]

// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Build and Revision Numbers 
// by using the '*' as shown below:
// [assembly: AssemblyVersion("1.0.*")]
[assembly: AssemblyVersion(Consts.SGitVersion)]
[assembly: AssemblyFileVersion(Consts.SGitFileVersion)]