# Pra_04 - ASP.NET Web Application

A complete ASP.NET Web Forms project created for the Pra_04 assignment. This repository contains the full Visual Studio solution, source code, configuration files, and NuGet package references required to build, run, and deploy a basic ASP.NET web application.

Repository: https://github.com/raj6400/Pra_04

## Project Description

This application demonstrates a simple ASP.NET Web Forms architecture with a single web form page, code-behind logic, and standard .NET configuration. It is intended as a learning exercise for building and deploying ASP.NET applications using Visual Studio and the .NET Framework.

Key application aspects:

- Web Forms UI using `WebForm1.aspx`
- Server-side event handling in `WebForm1.aspx.cs`
- Designer-generated control declarations in `WebForm1.aspx.designer.cs`
- Application settings in `Web.config`
- NuGet package management via `packages.config`

## Features

- Basic ASP.NET Web Forms page structure
- Code-behind processing for page events
- Standard web configuration for .NET apps
- Buildable Visual Studio solution
- Local development support with IIS Express

## Project Structure

- `WebApplication1.sln` - Visual Studio solution file
- `WebApplication1.csproj` - Project file defining build settings and assembly references
- `Global.asax` - Application event handler file
- `Global.asax.cs` - Code-behind for application-level events
- `WebForm1.aspx` - Main ASP.NET Web Forms page markup
- `WebForm1.aspx.cs` - Page logic and event handlers
- `WebForm1.aspx.designer.cs` - Automatically generated control declarations
- `Web.config` - Application and security configuration settings
- `packages.config` - NuGet package references used by the project
- `bin/` - Compiled output and package content files (generated)

## Requirements

- Visual Studio 2019 or later
- .NET Framework 4.5 or compatible version
- IIS Express or local web server for debugging

## Setup and Run Instructions

1. Clone or download the repository:
   ```bash
   git clone https://github.com/raj6400/Pra_04.git
   ```
2. Open `WebApplication1.sln` in Visual Studio.
3. Restore NuGet packages if prompted.
4. Build the project using `Build > Build Solution`.
5. Run the application with `F5` or by using IIS Express.

## Development Notes

- Make sure Visual Studio restores NuGet packages before running.
- If the project fails to build, verify the installed .NET Framework version matches the project target.
- Any custom UI logic is contained in `WebForm1.aspx.cs` and can be extended with additional web form controls.

## Deployment

This project can be deployed to any IIS-based host that supports ASP.NET Web Forms and the target .NET Framework.

Deployment steps:

1. Publish the site from Visual Studio using `Build > Publish`.
2. Configure the target IIS site or application.
3. Ensure the target server has the required .NET Framework installed.

## Repository Information

- GitHub: https://github.com/raj6400/Pra_04
- Branch: `main`

## Author

- Raj (GitHub: `raj6400`)

## OUTPUT

<img width="286" height="745" alt="image" src="https://github.com/user-attachments/assets/d523fb63-aae2-4df3-a8a9-64f2531762aa" />
