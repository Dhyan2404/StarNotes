package org.apache.poi.examples;

import java.awt.Font;
import org.apache.commons.lang3.SystemUtils;
import org.apache.poi.style.TextStyles;
import sun.font.FontAccess;
import sun.font.FontManagerFactory;
import sun.font.SunFontManager;

/* loaded from: classes12.dex */
public class MacInit {
    public static void init() {
        if (System.getProperty("os.name").contains("Mac OS")) {
            ((SunFontManager) FontManagerFactory.getInstance()).registerFontsInDir(System.getProperty(SystemUtils.f107421b) + "/Library/Fonts");
            FontAccess.getFontAccess().getFont2D(new Font(TextStyles.FONT_CHINESE, 0, 18));
        }
    }
}
