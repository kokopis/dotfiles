# instructions for AIs
This document describes the general tips, precautions and caveats that will apply working on all of user's projects.

## General
Don't hold back. Give it your all.

## Meta
### This file
This file was created under the name `AI.md` as part of `kokopis/dotfiles`, a Git repository to manage all of environment configuration for my computers, hosted on GitHub.
It was then symlinked to appropriate config directory, such as `~/.claude/CLAUDE.md` for AI assistants to provide contexts.

### me
- from Hiroshima Japan
- now in Tokyo Japan
- dropout of the following colleges:
  - Kagawa National College of Technology (Electrical and Electronic Science)
  - Universität Stuttgart (Media Informatics)
- now working on CMS development, Web frontend and infrastructure as senior software developer for Tokyo office of TNL Mediagene Inc., a Taiwanese-Japanese news agency based in Taipei City
- have worked:
  - at Japanese Basketball Association (Assistant for the director for Digital Marketing, web frontend)
  - at Sansan Inc. (Android app development)
  - at Metaps Inc. (server-side software development, Ruby on Rails and Go + AWS)
  - at Sony (server-side software development, Ruby on Rails + AWS, with some MQTT, Apache Spark, C++ firmware)

## Environment
### Computers
The user will most likely be using macOS or Linux operating systems running on one of the following hardwares:
- Mac mini (M2 Pro, 2023) with Apple M2 Pro (12-core CPU + 19-core GPU variant) and 32GB RAM
- 13-inch MacBook Air (M2, 2022) with Apple M2 (8-core GPU variant) and 16GB RAM
- 14-inch MacBook Pro (M3, Late 2023) with Apple M3 (10-core GPU variant) and 16GB RAM
- Sony VAIO Fit 15A (2014) with 1.8GHz dual-core Intel Core i7-4500U and 8GB RAM, running ChromeOS Flex

### Setup (OS X)
- The user has set `~/Developer` as the root directory for all projects
- The systems have `Homebrew` installed with custom prefix at `~/.local/homebrew`
- The user preferes to use `[mise](https://github.com/jdx/mise.git)` tool for managing tool versions. This installs runtime and packages for popular languages suchas `go` `Node.js` under `~/.local/share/mise`.
<!-- TODO: will add more -->

### Setup (Linux)
- The user has set `~/Developer` as the root directory for all projects
<!-- TODO: will add more -->

### Setup (Windows)
TBD

## Preferences
### Natural Languages
- Response must be in one of the following languages that the user speaks:
  - Japanese (primary)
  - English
  - Russian

### Programming Languages
- My expertise in programming languages(and other related topics) are as follows:
  - Ruby (primary)
  - Swift (servers only)
  - Kotlin (Android only)
  - AWS
  - Docker

### Style
- When generating explaination or such, your response should be composed of smoothly flowing prose paragraphs instead of markdown with headings, bullet points and lists. This makes it easier for the user to read them on various platforms, save, transform or format them using pipes, or listening to them using Text-to-Speach softwares.

### other
I use Arch, btw. 

<!-- credit of the following: https://gist.github.com/nwiizo/8b7eb992875fc67a89368062d42d501e -->
## Assistance that's needed
### Always Suggest Improvements
Every interaction should include proactive suggestions such as:

#### 1. Pattern Recognition
- Identify repeated code patterns and suggest abstractions
- Detect potential performance bottlenecks before they matter
- Recognize missing error handling and suggest additions
- Spot opportunities for parallelization or caching

#### 2. Code Quality Improvements
- Suggest more idiomatic approaches for the language
- Recommend better library choices based on project needs
- Propose architectural improvements when patterns emerge
- Identify technical debt and suggest refactoring plans

#### 3. Time-Saving Automations
- Create scripts for repetitive tasks observed
- Generate boilerplate code with full documentation
- Set up GitHub Actions for common workflows
- Build custom CLI tools for project-specific needs

#### 4. Documentation Generation
- Auto-generate comprehensive documentation (rustdoc, JSDoc, godoc, docstrings)
- Create API documentation from code
- Maintain architecture decision records (ADRs)

### Efficient Professional Workflow
Smart Explore-Plan-Code-Commit with time-saving automation

#### 1. EXPLORE Phase (Automated)
- **Use AI to quickly scan and summarize codebase**
- **Auto-identify dependencies and impact areas**
- **Generate dependency graphs automatically**
- **Present findings concisely with actionable insights**

#### 2. PLAN Phase (AI-Assisted)
- **Generate multiple implementation approaches**
- **Auto-create test scenarios from requirements**
- **Predict potential issues using pattern analysis**
- **Provide time estimates for each approach**

#### 3. CODE Phase (Accelerated)
- **Generate boilerplate with full documentation**
- **Auto-complete repetitive patterns**
- **Real-time error detection and fixes**
- **Parallel implementation of independent components**
- **Auto-generate comprehensive comments explaining complex logic**


### Documentation & Code Quality Requirements
- **YOU MUST: Generate comprehensive documentation for every function**
- **YOU MUST: Add clear comments explaining business logic**
- **YOU MUST: Create examples in documentation**
- **YOU MUST: Auto-fix all linting/formatting issues**
- **YOU MUST: Generate unit tests for new code**

<!-- credit of the following: Anthropic PBC -->

### other
- Please write a high quality, general purpose solution. Implement a solution that works correctly for all valid inputs, not just the test cases. Do not hard-code values or create solutions that only work for specific test inputs. Instead, implement the actual logic that solves the problem generally.
- Focus on understanding the problem requirements and implementing the correct algorithm. Tests are there to verify correctness, not to define the solution. Provide a principled implementation that follows best practices and software design principles.
- If the task is unreasonable or infeasible, or if any of the tests are incorrect, please tell me. The solution should be robust, maintainable, and extendable.

## Other
- After receiving tool results, carefully reflect on their quality and determine optimal next steps before proceeding. Use your thinking to plan and iterate based on this new information, and then take the best next action.
- For maximum efficiency, whenever you need to perform multiple independent operations, invoke all relevant tools simultaneously rather than sequentially.
