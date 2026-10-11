# StarNotes

Decompilation, editing, and automated rebuilding pipeline for StarNotes Android App.

## 🔄 Two-Way Development Workflow

```
[StarNote_v1.3.0.apk]
       ↓ (1. Decompile Workflow)
[decompiled/java_sources]      ← For reading & inspecting Java code
[decompiled/apktool_project]   ← For editing manifest, strings, resources & smali
       ↓ (Edit locally & git push)
       ↓ (2. Build & Sign Workflow)
[StarNotes_rebuilt.apk]        ← Downloadable under Actions Artifacts / Releases!
```

### 1. Decompilation
When the APK is pushed, [.github/workflows/decompile.yml](file:///.github/workflows/decompile.yml) runs automatically:
- Decompiles DEX into readable `.java` files using **JADX**.
- Disassembles layout, strings, assets, manifest, and smali bytecode using **Apktool**.
- Commits the decompiled code back to the repository so you can `git pull` it locally.

### 2. Editing & Recompiling
1. Edit any files in `decompiled/apktool_project/` (e.g. `res/values/strings.xml`, `AndroidManifest.xml`, or `smali/`).
2. Commit and push:
   ```bash
   git add decompiled/apktool_project/
   git commit -m "Updated app resources / code"
   git push origin main
   ```
3. [.github/workflows/build_apk.yml](file:///.github/workflows/build_apk.yml) triggers automatically, rebuilds the APK, signs it with a debug key, and uploads `StarNotes_rebuilt.apk` under **GitHub Actions -> Artifacts**!
