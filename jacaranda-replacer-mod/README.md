# Jacaranda Replacer Mod

## Building the Mod

The mod source code is ready in `jacaranda-replacer-mod/` but needs a JDK to compile.

### Prerequisites
- Install JDK 21: https://adoptium.net/temurin/releases/ (choose JDK, not JRE)
  - Or via choco (requires admin): `choco install microsoft-openjdk21`

### Build Steps
1. Set JAVA_HOME:
   ```powershell
   $env:JAVA_HOME = "C:\Program Files\Eclipse Adoptium\jdk-21.0.x"
   ```

2. Build the mod:
   ```powershell
   cd C:\Users\Ben\curseforge\jacaranda-replacer-mod
   .\gradlew.bat build
   ```

3. The JAR will be in: `build\libs\jacaranda-replacer-1.0.0.jar`

4. Copy it to: `minecraft\Instances\A\mods\`

## How it Works
- Shift + Right Click any block to replace all jacaranda blocks within 20x20x20 area with cherry equivalents
- Replaces all jacaranda variants: logs, planks, leaves, stairs, slabs, fences, doors, signs, etc.
