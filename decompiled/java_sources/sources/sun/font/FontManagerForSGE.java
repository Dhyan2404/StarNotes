package sun.font;

import java.awt.Font;
import java.util.Locale;
import java.util.TreeMap;

/* loaded from: classes16.dex */
public interface FontManagerForSGE extends FontManager {
    Font[] getAllInstalledFonts();

    TreeMap<String, String> getCreatedFontFamilyNames();

    Font[] getCreatedFonts();

    String[] getInstalledFontFamilyNames(Locale locale);

    void useAlternateFontforJALocales();
}
