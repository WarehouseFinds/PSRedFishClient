# PSScriptModule - PowerShell Script Module Template

A production-ready PowerShell script module template designed to streamline the creation, testing, and delivery of enterprise-grade PowerShell modules. This template implements modern DevOps practices,
automated quality gates, and continuous delivery workflows right out of the box.

[![CI](https://github.com/WarehouseFinds/PSScriptModule/actions/workflows/ci.yml/badge.svg)](https://github.com/WarehouseFinds/PSScriptModule/actions/workflows/ci.yml)
[![Code Coverage](https://img.shields.io/github/actions/workflow/status/WarehouseFinds/PSScriptModule/ci.yml?branch=main&label=code%20coverage)](https://github.com/WarehouseFinds/PSScriptModule/actions/workflows/ci.yml)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/PSScriptModule.svg)](https://www.powershellgallery.com/packages/PSScriptModule)
[![Downloads](https://img.shields.io/powershellgallery/dt/PSScriptModule.svg)](https://www.powershellgallery.com/packages/PSScriptModule)
[![License](https://img.shields.io/github/license/WarehouseFinds/PSScriptModule)](LICENSE)

## 🎯 Purpose

This template solves the common challenge of setting up a professional PowerShell module project from scratch. Instead of manually configuring build scripts, testing frameworks, and CI/CD pipelines,
you can clone this repository and start writing your module's business logic immediately.

**Perfect for:**

- Open-source PowerShell projects
- Rapid prototyping of PowerShell modules
- Learning PowerShell module development best practices

## 🎬 How to Use This Template

1. Click the "Use PowerShell Module Template" button below or use GitHub's "Use this template" button
1. Fill in your module name and description
1. Wait **about 20 seconds** for the automated bootstrap workflow to complete
1. **Refresh the page** to see your customized repository

[![](https://img.shields.io/badge/Use%20Powershell%20Template-%E2%86%92-1f883d?style=for-the-badge&logo=github&labelColor=197935)](https://github.com/new?template_owner=WarehouseFinds&template_name=PSScriptModule&owner=%40me&name=MyProject&description=PS%20Module%20Template&visibility=public)

## 📦 Features

When you create a module from this template, you immediately get:

✅ **CI/CD Ready**

- GitHub Actions workflows for CI, release, publishing and more
- Dependency management and caching
- Compatibility testing on Windows, Linux, and macOS
- Automated publishing to PowerShell Gallery and NuGet.org

✅ **Development Environment**

- VS Code configuration (settings, recommended extensions)
- Build tasks pre-configured
- Run and debug configurations
- Devcontainer support for preconfigured sandboxed environments

✅ **Version Management**

- GitVersion for semantic versioning
- GitHub Flow (v1) release workflow
- Commit-based version bumps with `+semver:` keywords
- Changelog generation based on merged PRs

✅ **Code Quality and Testing**

- Pester test framework for unit tests
- Code coverage reporting
- Security scanning (PSScriptAnalyzer + InjectionHunter + CodeQL)

✅ **Project Documentation**

- Markdown-based help generation with PlatyPS
- Auto-generated external help files for `Get-Help`
- Comprehensive documentation guides in `/docs`

## 📂 Project Structure

```plaintext
PSScriptModule/
├── 📄 PSScriptModule.build.ps1      // Invoke-Build script with all build tasks
├── 📄 requirements.psd1             // PSDepend configuration for dependencies
├── 📄 gitversion.yml                // GitVersion configuration
├── 📄 CONTRIBUTING.md               // Contribution guidelines
├── 📄 AGENTS.md                     // AI agent instructions
├── 📁 src/                          // Source code
│   ├── 📄 PSScriptModule.psd1       // Module manifest
|   ├── 📁 Classes/                  // Classes definitions
│   ├── 📁 Public/                   // Public functions (exported)
│   └── 📁 Private/                  // Private functions (internal only)
├── 📁 tests/                        // Test suites
│   ├── 📁 PSScriptAnalyzer/         // Static code analysis tests
│   └── 📁 InjectionHunter/          // Security vulnerability tests
├── 📁 docs/help/                    // Markdown documentation
└── 📁 build/                        // Build output (generated)
    ├── 📁 src/                      // Copied source for building
    ├── 📁 out/                      // Compiled module output
    └── 📁 help/                     // Generated help files
```

## 🚀 Getting Started

### Prerequisites

**Required:**

- **PowerShell 7.0+**
- **Visual Studio Code** with PowerShell extension (recommended)
- **Git** for version control

*Optional* dependencies:

- **GitHub Copilot** for enhanced development experience
- **Docker or Rancher Desktop** for consistent development environments in devcontainers
- **PowerShell Gallery account** for publishing

### Quick Start

1. Click on the "Use this template" button above to create your own repository from this template.
Personalize it by updating the name, description, and visibility.

1. Clone your new repository locally:

   ```bash
   git clone https://github.com/YourUsername/YourModuleName.git
   cd YourModuleName
   ```

1. Install dependencies:

   > **Note**: If using the devcontainer (`.devcontainer/` folder), dependencies are pre-installed. Skip this step.

   ```powershell
   # Install PSDepend if not already installed
   Install-Module -Name PSDepend -Scope CurrentUser -Force
   
   # Install all project dependencies
   Invoke-PSDepend -Path ./requirements.psd1 -Install -Import -Force
   ```

1. Run Build and test tasks:

   ```powershell
   # Run default build (Clean + Build)
   Invoke-Build
   
   # Run all tests
   Invoke-Build Test
   ```

1. You are now ready to start developing your PowerShell module!

### Next Steps

After setup, customize your module:

1. **Update Module Manifest** (`src/YourModuleName.psd1`):
   - Set `Author`, `CompanyName`, `Copyright`
   - Update `Description` and `Tags`

   > **Note**: Do not change `ModuleVersion`, `RootModule` and `FunctionsToExport`  - it is managed automatically

1. **Start Developing**:
   - Add functions to `src/Public/` (exported) or `src/Private/` (internal)
   - Create corresponding `.Tests.ps1` files

1. **Push your changes** and open a pull request to trigger CI/CD workflows

## Documentation

See the [documentation guides](docs/) for detailed information on:

- [Building](docs/building.md)
- [Testing](docs/testing.md)
- [Generating Help](docs/generating-help.md)
- [Publishing](docs/publishing.md)

## 🤝 Contributing

We welcome contributions! Please see our [CONTRIBUTING](CONTRIBUTING.md) guide for:

- Pull request process
- Code style guidelines
- Testing requirements

## Like this project?

If you find this template useful, please consider supporting it by:

- **Star this repository** if you find it useful
- **Share it** with other PowerShell developers
- **Provide feedback** via issues or discussions
- **Sponsor development** via GitHub Sponsors

---

Built with ❤️ by [Warehouse Finds](https://github.com/WarehouseFinds)
