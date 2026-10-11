package com.trans.android.p107hb;

import com.onyx.harfbuzz.collections.FloatList;
import com.onyx.harfbuzz.collections.IntList;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.onyx.harfbuzz.graphics.TypeSlope;
import com.onyx.harfbuzz.graphics.TypeWeight;
import com.onyx.harfbuzz.sfnt.ShapingEngine;
import com.onyx.harfbuzz.sfnt.ShapingResult;
import com.onyx.harfbuzz.sfnt.WritingDirection;
import com.trans.android.common.AttributedData;
import com.trans.android.font.FontManager;
import com.trans.android.util.BridgeUtils;
import java.awt.Font;
import java.text.AttributedCharacterIterator;
import java.util.Map;

/* loaded from: classes10.dex */
public class HBUtils {
    private static final String TAG = "HBUtils";

    public static void copyTo(FloatList floatList, IntList intList, float[] fArr, int i, boolean z) {
        int size = intList.size();
        if (floatList.size() == size) {
            floatList.copyTo(fArr, i);
        } else {
            for (int i2 = 0; i2 < size; i2++) {
                fArr[i + i2] = floatList.get(intList.get(i2));
            }
        }
        if (z) {
            int i3 = size + i;
            while (i < i3) {
                fArr[i] = fArr[i] * 0.7f;
                i++;
            }
        }
    }

    public static boolean enableHBDraw() {
        return FontManager.getFontProvider(false) != null;
    }

    public static float getAscent(HBTypeface hBTypeface, float f) {
        return (f / hBTypeface.getUnitsPerEm()) * hBTypeface.getAscent();
    }

    public static float getDescent(HBTypeface hBTypeface, float f) {
        return (f / hBTypeface.getUnitsPerEm()) * hBTypeface.getDescent();
    }

    public static float getHeight(HBTypeface hBTypeface, float f) {
        return (f / hBTypeface.getUnitsPerEm()) * (hBTypeface.getDescent() + hBTypeface.getAscent() + hBTypeface.getLeading());
    }

    public static float getLeading(HBTypeface hBTypeface, float f) {
        return (f / hBTypeface.getUnitsPerEm()) * hBTypeface.getLeading();
    }

    public static void getMetrics(AttributedCharacterIterator attributedCharacterIterator, float[] fArr, float[] fArr2) {
        ShapingEngine shapingEngine = new ShapingEngine();
        shapingEngine.setWritingDirection(WritingDirection.LEFT_TO_RIGHT);
        String convertCharacterIterator = BridgeUtils.convertCharacterIterator(attributedCharacterIterator);
        float f = 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        for (AttributedData attributedData : BridgeUtils.collectAttributeData(attributedCharacterIterator, convertCharacterIterator)) {
            Map<AttributedCharacterIterator.Attribute, Object> attributes = attributedData.getAttributes();
            int beginIndex = attributedData.getBeginIndex();
            String substring = convertCharacterIterator.substring(beginIndex, attributedData.getEndIndex());
            Font fontFromAttributedMap = BridgeUtils.getFontFromAttributedMap(attributes, Font.DEFAULT_FONT);
            float size2D = fontFromAttributedMap.getSize2D();
            f2 = Math.max(f2, size2D);
            HBTypeface hBTypeface = FontManager.getHBTypeface(fontFromAttributedMap, substring);
            shapingEngine.setTypeface(hBTypeface);
            shapingEngine.setTypeSize(size2D);
            f = Math.max(f, getAscent(hBTypeface, size2D));
            float descent = getDescent(hBTypeface, size2D);
            f4 = Math.max(f4, descent - (size2D * 0.15f));
            f3 = Math.max(f3, descent);
            ShapingResult shapeText = shapingEngine.shapeText(substring, 0, substring.length());
            copyTo(shapeText.getGlyphAdvances(), shapeText.getClusterMap(), fArr, beginIndex, BridgeUtils.isScript(attributes));
            shapeText.dispose();
        }
        shapingEngine.dispose();
        float max = Math.max(f, 0.85f * f2);
        float max2 = Math.max(f3, f2 * 0.15f);
        fArr2[0] = max;
        fArr2[1] = max2;
        fArr2[2] = f4;
    }

    public static float getSum(FloatList floatList) {
        int size = floatList.size();
        float f = 0.0f;
        for (int i = 0; i < size; i++) {
            f += floatList.get(i);
        }
        return f;
    }

    public static boolean isBold(HBTypeface hBTypeface) {
        TypeWeight weight = hBTypeface.getWeight();
        return weight == TypeWeight.SEMI_BOLD || weight == TypeWeight.BOLD || weight == TypeWeight.EXTRA_BOLD || weight == TypeWeight.HEAVY;
    }

    public static boolean isItalic(HBTypeface hBTypeface) {
        TypeSlope slope = hBTypeface.getSlope();
        return slope == TypeSlope.ITALIC || slope == TypeSlope.OBLIQUE;
    }
}
