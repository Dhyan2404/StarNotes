package sun.font;

import com.onyx.common.util.JLog;
import com.onyx.common.util.StringUtils;
import java.awt.Font;
import java.awt.FontFormatException;
import java.io.File;
import java.util.Locale;
import java.util.TreeMap;
import sun.awt.FontConfiguration;

/* loaded from: classes16.dex */
public class AndroidFontManager extends SunFontManager {
    private static final String TAG = "AndroidFontManager";

    @Override // sun.font.SunFontManager, sun.font.FontManager
    public Font2D createFont2D(File file, int i, boolean z, CreatedFontTracker createdFontTracker) throws FontFormatException {
        JLog.m41642e(TAG, "createFont2D: %s", file.getAbsolutePath());
        return super.createFont2D(file, i, z, createdFontTracker);
    }

    @Override // sun.font.SunFontManager
    public FontConfiguration createFontConfiguration() {
        AndroidFontConfiguration androidFontConfiguration = new AndroidFontConfiguration(this);
        if (androidFontConfiguration.init()) {
            return androidFontConfiguration;
        }
        throw new InternalError("failed to initialize fontconfig");
    }

    @Override // sun.font.SunFontManager, sun.font.FontManager
    public void deRegisterBadFont(Font2D font2D) {
        JLog.m41642e(TAG, "deRegisterBadFont: %s", font2D.getFontName(null));
        super.deRegisterBadFont(font2D);
    }

    @Override // sun.font.SunFontManager, sun.font.FontManager
    public Font2D findFont2D(String str, int i, int i2) {
        return super.findFont2D(str, i, i2);
    }

    @Override // sun.font.SunFontManager, sun.font.FontManagerForSGE
    public Font[] getAllInstalledFonts() {
        return super.getAllInstalledFonts();
    }

    @Override // sun.font.SunFontManager, sun.font.FontManagerForSGE
    public TreeMap<String, String> getCreatedFontFamilyNames() {
        return super.getCreatedFontFamilyNames();
    }

    @Override // sun.font.SunFontManager, sun.font.FontManagerForSGE
    public Font[] getCreatedFonts() {
        return super.getCreatedFonts();
    }

    @Override // sun.font.SunFontManager
    public String[] getDefaultPlatformFont() {
        String[] defaultFont = com.trans.android.font.FontManager.getFontProvider().getDefaultFont();
        if (defaultFont == null || defaultFont.length < 2 || StringUtils.isNullOrEmpty(defaultFont[0]) || StringUtils.isNullOrEmpty(defaultFont[1])) {
            throw new InternalError("Not default font");
        }
        return defaultFont;
    }

    @Override // sun.font.SunFontManager
    public String getFontPath(boolean z) {
        String fontPath = com.trans.android.font.FontManager.getFontProvider().getFontPath();
        if (StringUtils.isNullOrEmpty(fontPath)) {
            throw new InternalError("Not font path");
        }
        return fontPath;
    }

    @Override // sun.font.SunFontManager, sun.font.FontManagerForSGE
    public String[] getInstalledFontFamilyNames(Locale locale) {
        return super.getInstalledFontFamilyNames(locale);
    }

    @Override // sun.font.SunFontManager, sun.font.FontManager
    public Font2DHandle getNewComposite(String str, int i, Font2DHandle font2DHandle) {
        JLog.m41642e(TAG, "getNewComposite: %s-%d", str, Integer.valueOf(i));
        return super.getNewComposite(str, i, font2DHandle);
    }

    public void registerDefaultFont() {
        String platformFontPath = getPlatformFontPath(SunFontManager.noType1Font);
        String[] defaultPlatformFont = getDefaultPlatformFont();
        if (defaultPlatformFont[1].startsWith(platformFontPath)) {
            return;
        }
        registerFontFile(defaultPlatformFont[1], null, 0, false, 3);
    }

    @Override // sun.font.SunFontManager, sun.font.FontManager
    public boolean registerFont(Font font) {
        JLog.m41642e(TAG, "registerFont: %s", font.getName());
        return super.registerFont(font);
    }

    @Override // sun.font.SunFontManager
    public void registerFontFile(String str, String[] strArr, int i, boolean z) {
        int i2;
        if (this.registeredFontFiles.contains(str)) {
            return;
        }
        this.registeredFontFiles.add(str);
        if (getTrueTypeFilter().accept(null, str)) {
            i2 = 0;
        } else if (!getType1Filter().accept(null, str)) {
            return;
        } else {
            i2 = 1;
        }
        if (this.fontPath == null) {
            this.fontPath = getPlatformFontPath(SunFontManager.noType1Font);
        }
        File file = new File(this.fontPath, str);
        if (!file.canRead()) {
            addToMissingFontFileList(str);
            return;
        }
        String absolutePath = file.getAbsolutePath();
        if (z) {
            registerDeferredFont(str, absolutePath, strArr, i2, false, i);
        } else {
            registerFontFile(absolutePath, strArr, i2, false, i);
        }
    }

    @Override // sun.font.SunFontManager, sun.font.FontManagerForSGE
    public void useAlternateFontforJALocales() {
    }

    @Override // sun.font.FontManager
    public boolean usingPerAppContextComposites() {
        return false;
    }

    @Override // sun.font.SunFontManager
    public FontConfiguration createFontConfiguration(boolean z, boolean z2) {
        AndroidFontConfiguration androidFontConfiguration = new AndroidFontConfiguration(this, z, z2);
        if (androidFontConfiguration.init()) {
            return androidFontConfiguration;
        }
        throw new InternalError("failed to initialize fontconfig");
    }
}
