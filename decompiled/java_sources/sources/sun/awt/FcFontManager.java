package sun.awt;

import java.awt.Font;
import sun.font.FcFontConfiguration;
import sun.font.FontConfigManager;
import sun.font.SunFontManager;

/* loaded from: classes16.dex */
public class FcFontManager extends SunFontManager {
    private FontConfigManager fcManager = null;

    @Override // sun.font.SunFontManager
    public FontConfiguration createFontConfiguration() {
        FcFontConfiguration fcFontConfiguration = new FcFontConfiguration(this);
        if (fcFontConfiguration.init()) {
            return fcFontConfiguration;
        }
        throw new InternalError("failed to initialize fontconfig");
    }

    @Override // sun.font.SunFontManager
    public String[] getDefaultPlatformFont() {
        String str;
        String[] strArr = new String[2];
        getFontConfigManager().initFontConfigFonts(false);
        FontConfigManager.FcCompFont[] fontConfigFonts = getFontConfigManager().getFontConfigFonts();
        if (fontConfigFonts != null) {
            int i = 0;
            while (true) {
                if (i >= fontConfigFonts.length) {
                    break;
                }
                if ("sans".equals(fontConfigFonts[i].fcFamily)) {
                    FontConfigManager.FcCompFont fcCompFont = fontConfigFonts[i];
                    if (fcCompFont.style == 0) {
                        strArr[0] = fcCompFont.firstFont.fullName;
                        strArr[1] = fontConfigFonts[i].firstFont.fontFile;
                        break;
                    }
                }
                i++;
            }
        }
        if (strArr[0] == null) {
            if (fontConfigFonts != null && fontConfigFonts.length > 0) {
                FontConfigManager.FontConfigFont fontConfigFont = fontConfigFonts[0].firstFont;
                if (fontConfigFont.fontFile != null && (str = fontConfigFont.fullName) != null) {
                    strArr[0] = str;
                    strArr[1] = fontConfigFonts[0].firstFont.fontFile;
                }
            }
            strArr[0] = Font.DIALOG;
            strArr[1] = "/dialog.ttf";
        }
        return strArr;
    }

    public synchronized FontConfigManager getFontConfigManager() {
        if (this.fcManager == null) {
            this.fcManager = new FontConfigManager();
        }
        return this.fcManager;
    }

    @Override // sun.font.SunFontManager
    public synchronized String getFontPath(boolean z) {
        return getFontPathNative(z, false);
    }

    public native String getFontPathNative(boolean z, boolean z2);

    @Override // sun.font.FontManager
    public boolean usingPerAppContextComposites() {
        return false;
    }

    @Override // sun.font.SunFontManager
    public FontConfiguration createFontConfiguration(boolean z, boolean z2) {
        FcFontConfiguration fcFontConfiguration = new FcFontConfiguration(this, z, z2);
        if (fcFontConfiguration.init()) {
            return fcFontConfiguration;
        }
        throw new InternalError("failed to initialize fontconfig");
    }
}
