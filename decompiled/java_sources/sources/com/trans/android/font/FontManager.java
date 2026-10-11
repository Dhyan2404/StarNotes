package com.trans.android.font;

import android.graphics.Typeface;
import com.onyx.common.util.CollectionUtils;
import com.onyx.common.util.FileUtils;
import com.onyx.common.util.JLog;
import com.onyx.common.util.StringUtils;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.trans.android.p107hb.HBUtils;
import java.awt.Font;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.font.CompositeFont;
import sun.font.Font2D;
import sun.font.FontSubstitution;
import sun.font.FontUtilities;

/* loaded from: classes10.dex */
public class FontManager {
    private static FontProvider defaultFontProvider;
    private static final String TAG = HBUtils.class.getSimpleName();
    private static final ThreadLocal<FontProvider> fontProviderTL = new ThreadLocal<>();

    public static boolean canDisplay(HBTypeface hBTypeface, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return true;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!canDisplay(hBTypeface, str.codePointAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static HBTypeface getFallbackTypeface(FontProvider fontProvider, String str, String str2) {
        List<HBTypeface> list;
        int i;
        Map<String, List<HBTypeface>> defTypefaces = fontProvider.getDefTypefaces();
        List<HBTypeface> list2 = defTypefaces.get(Lang.f93893CN);
        if (!StringUtils.isNullOrEmpty(str2)) {
            int chineseIndex = StringUtils.getChineseIndex(str2);
            if (chineseIndex >= 0) {
                i = chineseIndex;
                list = list2;
            } else {
                list = defTypefaces.get("en");
                i = 0;
            }
            if (!CollectionUtils.isNullOrEmpty(list)) {
                int codePointAt = str2.codePointAt(i);
                for (HBTypeface hBTypeface : list) {
                    if (hBTypeface.getGlyphId(codePointAt) > 0) {
                        JLog.m41639d(TAG, "%s found fallback HBTypeface: %s, path: %s for text: '%s'", str, hBTypeface.getFullName(), hBTypeface.getFilePath(), str2);
                        return hBTypeface;
                    }
                }
            }
        }
        JLog.m41639d(TAG, "%s not found fallback HBTypeface for text: '%s'", str, str2);
        if (!list2.isEmpty()) {
            return list2.get(0);
        }
        for (Map.Entry<String, List<HBTypeface>> entry : defTypefaces.entrySet()) {
            if (!entry.getValue().isEmpty()) {
                return entry.getValue().get(0);
            }
        }
        throw new IllegalArgumentException("FontProvider not support any default typeface");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Font2D getFont2D(Font font) {
        Font2D font2D = FontUtilities.getFont2D(font);
        return font2D instanceof FontSubstitution ? ((FontSubstitution) font2D).getCompositeFont2D() : font2D;
    }

    public static FontProvider getFontProvider() {
        return getFontProvider(true);
    }

    public static int getGlyphCode(Font2D font2D, int i) {
        return font2D instanceof CompositeFont ? 16777215 & i : i;
    }

    public static HBTypeface getHBTypeface(Font font, String str) {
        HBTypeface hBTypeface;
        if (StringUtils.isNullOrEmpty(str)) {
            hBTypeface = getFont2D(font).getHBTypeface();
        } else {
            hBTypeface = getFont2D(font).getHBTypeface(str.codePointAt(0));
        }
        if (hBTypeface != null) {
            return hBTypeface;
        }
        String name = font.getName();
        FontProvider fontProvider = getFontProvider();
        HBTypeface hBTypeface2 = fontProvider.getHBTypeface(name);
        if (hBTypeface2 != null) {
            return hBTypeface2;
        }
        JLog.m41642e(TAG, "%s not found", name);
        return getFallbackTypeface(fontProvider, name, str);
    }

    public static Typeface getTypeface(String str) {
        return getFontProvider().getTypeface(str);
    }

    public static void init() {
        getFont2D(Font.DEFAULT_FONT);
    }

    public static void setFontProvider(FontProvider fontProvider) {
        setFontProvider(fontProvider, true);
    }

    public static FontProvider getFontProvider(boolean z) {
        FontProvider fontProvider = fontProviderTL.get();
        if (!z || fontProvider != null) {
            return fontProvider;
        }
        if (defaultFontProvider == null) {
            defaultFontProvider = new DefaultFontProvider();
        }
        return defaultFontProvider;
    }

    public static Typeface getTypeface(Font font) {
        return getFont2D(font).getTypeface();
    }

    public static void setFontProvider(FontProvider fontProvider, boolean z) {
        if (fontProvider != null) {
            fontProviderTL.set(fontProvider);
        } else if (z) {
            fontProviderTL.remove();
        }
    }

    public static boolean canDisplay(HBTypeface hBTypeface, int i) {
        return hBTypeface.getGlyphId(i) > 0;
    }

    public static HBTypeface getHBTypeface(Font font, int i) {
        HBTypeface hBTypefaceForGlyph = getFont2D(font).getHBTypefaceForGlyph(i);
        if (hBTypefaceForGlyph != null) {
            return hBTypefaceForGlyph;
        }
        FontProvider fontProvider = getFontProvider();
        String name = font.getName();
        HBTypeface hBTypeface = fontProvider.getHBTypeface(name);
        if (hBTypeface != null) {
            return hBTypeface;
        }
        JLog.m41642e(TAG, "%s not found", name);
        return getFallbackTypeface(fontProvider, name, null);
    }

    public static HBTypeface getHBTypeface(String str) {
        return getHBTypeface(str, (String) null);
    }

    public static HBTypeface getHBTypeface(String str, String str2) {
        Objects.requireNonNull(str);
        FontProvider fontProvider = getFontProvider();
        HBTypeface hBTypeface = fontProvider.getHBTypeface(str);
        if (hBTypeface == null) {
            JLog.m41642e(TAG, "%s not found", str);
            getFallbackTypeface(fontProvider, FileUtils.getBaseName(str), str2);
        }
        return hBTypeface;
    }
}
