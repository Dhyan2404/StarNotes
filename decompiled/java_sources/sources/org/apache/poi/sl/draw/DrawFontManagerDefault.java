package org.apache.poi.sl.draw;

import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.GraphicsEnvironment;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.function.IntUnaryOperator;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.common.usermodel.fonts.FontGroup;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.sl.draw.DrawFontManagerDefault;
import org.apache.poi.sl.draw.Drawable;
import org.apache.poi.style.TextStyles;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class DrawFontManagerDefault implements DrawFontManager {
    protected final Set<String> knownSymbolFonts;

    public DrawFontManagerDefault() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        this.knownSymbolFonts = treeSet;
        treeSet.add("Wingdings");
        treeSet.add(TextStyles.FONT_SYMBOL);
    }

    private FontInfo getFontWithFallback(Graphics2D graphics2D, Drawable.DrawableHint drawableHint, FontInfo fontInfo) {
        Map map = (Map) graphics2D.getRenderingHint(drawableHint);
        if (map == null) {
            return fontInfo;
        }
        String str = null;
        String typeface = fontInfo != null ? fontInfo.getTypeface() : null;
        if (map.containsKey(typeface)) {
            str = (String) map.get(typeface);
        } else if (map.containsKey("*")) {
            str = (String) map.get("*");
        }
        return str != null ? new DrawFontInfo(str) : fontInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int mapSymbolChar(int i) {
        return ((32 > i || i > 127) && (160 > i || i > 255)) ? i : i | 61440;
    }

    @Override // org.apache.poi.sl.draw.DrawFontManager
    public Font createAWTFont(Graphics2D graphics2D, FontInfo fontInfo, double d, boolean z, boolean z2) {
        int i = (z2 ? 2 : 0) | (z ? 1 : 0);
        Font font = new Font(fontInfo.getTypeface(), i, 12);
        if (Font.DIALOG.equals(font.getFamily())) {
            font = new Font(Font.SANS_SERIF, i, 12);
        }
        return font.deriveFont((float) d);
    }

    @Override // org.apache.poi.sl.draw.DrawFontManager
    public FontInfo getFallbackFont(Graphics2D graphics2D, FontInfo fontInfo) {
        FontInfo fontWithFallback = getFontWithFallback(graphics2D, Drawable.FONT_FALLBACK, fontInfo);
        return fontWithFallback == null ? new DrawFontInfo(Font.SANS_SERIF) : fontWithFallback;
    }

    @Override // org.apache.poi.sl.draw.DrawFontManager
    public FontInfo getMappedFont(Graphics2D graphics2D, FontInfo fontInfo) {
        return getFontWithFallback(graphics2D, Drawable.FONT_MAP, fontInfo);
    }

    @Override // org.apache.poi.sl.draw.DrawFontManager
    public String mapFontCharset(Graphics2D graphics2D, FontInfo fontInfo, String str) {
        if (fontInfo == null || str == null || str.isEmpty()) {
            return str;
        }
        String typeface = fontInfo.getTypeface();
        if (fontInfo.getCharset() != FontCharset.SYMBOL && !this.knownSymbolFonts.contains(typeface)) {
            return str;
        }
        List<FontGroup.FontGroupRange> fontGroupRanges = FontGroup.getFontGroupRanges(str);
        FontGroup.FontGroupRange fontGroupRange = fontGroupRanges.get(0);
        StringBuilder sb = new StringBuilder();
        int i = 0;
        for (FontGroup.FontGroupRange fontGroupRange2 : fontGroupRanges) {
            int length = fontGroupRange2.getLength() + i;
            String substring = str.substring(i, length);
            if (fontGroupRange2.getFontGroup() == fontGroupRange.getFontGroup()) {
                int[] array = substring.codePoints().map(new IntUnaryOperator() { // from class: com.sunia.HTREnginev2.uhf
                    @Override // java.util.function.IntUnaryOperator
                    public final int applyAsInt(int i2) {
                        int mapSymbolChar;
                        mapSymbolChar = DrawFontManagerDefault.mapSymbolChar(i2);
                        return mapSymbolChar;
                    }
                }).toArray();
                String str2 = new String(array, 0, array.length);
                if (!Arrays.asList(GraphicsEnvironment.getLocalGraphicsEnvironment().getAvailableFontFamilyNames()).contains(typeface)) {
                    str2 = StringUtil.mapMsCodepointString(str2);
                }
                sb.append(str2);
            } else {
                sb.append(substring);
            }
            i = length;
        }
        return sb.toString();
    }
}
