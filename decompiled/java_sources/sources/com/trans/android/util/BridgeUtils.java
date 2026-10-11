package com.trans.android.util;

import android.graphics.Bitmap;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.text.Layout;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.UnderlineSpan;
import com.onyx.common.util.CollectionUtils;
import com.trans.android.batik.BatikUtils;
import com.trans.android.common.AttributedData;
import com.trans.android.style.ForegroundColorSpan;
import com.trans.android.style.ForegroundPaintSpan;
import com.trans.android.style.StyleSpan;
import com.trans.android.style.TextAppearanceSpan;
import java.awt.Color;
import java.awt.Font;
import java.awt.Paint;
import java.awt.Rectangle;
import java.awt.font.TextAttribute;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.awt.image.DataBuffer;
import java.awt.image.DataBufferByte;
import java.awt.image.DataBufferDouble;
import java.awt.image.DataBufferFloat;
import java.awt.image.DataBufferInt;
import java.awt.image.DataBufferShort;
import java.awt.image.DataBufferUShort;
import java.awt.image.Raster;
import java.awt.image.WritableRaster;
import java.backport.function.Predicate;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.text.AttributedCharacterIterator;
import java.text.CharacterIterator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes10.dex */
public class BridgeUtils {
    private static final float SCALE_BACK = 0.999f;
    private static final String TAG = "BridgeUtils";

    /* renamed from: com.trans.android.util.BridgeUtils$1 */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C169141 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static List<AttributedData> collectAttributeData(AttributedCharacterIterator attributedCharacterIterator, String str) {
        return collectAttributeData(attributedCharacterIterator, str, null);
    }

    public static Buffer convertBuffer(DataBuffer dataBuffer) {
        int dataType = dataBuffer.getDataType();
        return dataType != 0 ? dataType != 1 ? dataType != 2 ? dataType != 3 ? dataType != 4 ? dataType != 5 ? ByteBuffer.wrap(new byte[0]) : DoubleBuffer.wrap(((DataBufferDouble) dataBuffer).getData()) : FloatBuffer.wrap(((DataBufferFloat) dataBuffer).getData()) : IntBuffer.wrap(((DataBufferInt) dataBuffer).getData()) : ShortBuffer.wrap(((DataBufferShort) dataBuffer).getData()) : ShortBuffer.wrap(((DataBufferUShort) dataBuffer).getData()) : ByteBuffer.wrap(((DataBufferByte) dataBuffer).getData());
    }

    public static String convertCharacterIterator(CharacterIterator characterIterator) {
        characterIterator.first();
        if (characterIterator.getEndIndex() <= characterIterator.getBeginIndex()) {
            return "";
        }
        int endIndex = characterIterator.getEndIndex() - characterIterator.getBeginIndex();
        char[] cArr = new char[endIndex];
        cArr[0] = characterIterator.current();
        for (int i = 1; i < endIndex; i++) {
            cArr[i] = characterIterator.next();
        }
        return String.valueOf(cArr);
    }

    public static void copyData(Raster raster, WritableRaster writableRaster) {
        Rectangle intersection = new Rectangle(raster.getMinX(), raster.getMinY(), raster.getWidth(), raster.getHeight()).intersection(new Rectangle(0, 0, writableRaster.getWidth(), writableRaster.getHeight()));
        if (intersection.isEmpty()) {
            return;
        }
        int i = intersection.width;
        int i2 = intersection.height;
        int i3 = intersection.f97732x;
        int i4 = intersection.f97733y;
        int[] iArr = null;
        for (int i5 = i4; i5 < i4 + i2; i5++) {
            int i6 = i5;
            iArr = raster.getPixels(i3, i6, i, 1, iArr);
            writableRaster.setPixels(i3, i6, i, 1, iArr);
        }
    }

    public static Layout.Alignment getAlignmentFromAttributeData(List<AttributedData> list) {
        if (CollectionUtils.isNullOrEmpty(list)) {
            return null;
        }
        Iterator<AttributedData> it2 = list.iterator();
        while (it2.hasNext()) {
            Layout.Alignment alignmentFromAttributeData = getAlignmentFromAttributeData(it2.next());
            if (alignmentFromAttributeData != null) {
                return alignmentFromAttributeData;
            }
        }
        return null;
    }

    public static Bitmap.Config getConfigByImageType(int i) {
        return (i == 1 || i == 4 || i == 5 || i == 8 || i == 9) ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
    }

    public static Font getFontFromAttributedData(List<AttributedData> list, Font font) {
        if (CollectionUtils.isNullOrEmpty(list)) {
            return font;
        }
        Iterator<AttributedData> it2 = list.iterator();
        float f = -1.0f;
        String str = null;
        while (it2.hasNext()) {
            float f2 = -1.0f;
            Font font2 = null;
            String str2 = null;
            for (Map.Entry<AttributedCharacterIterator.Attribute, Object> entry : it2.next().getAttributes().entrySet()) {
                AttributedCharacterIterator.Attribute key = entry.getKey();
                Object value = entry.getValue();
                if (key == TextAttribute.FONT) {
                    if (value instanceof Font) {
                        font2 = (Font) value;
                    }
                } else if (key == TextAttribute.FAMILY) {
                    if (value instanceof String) {
                        str2 = (String) value;
                    }
                } else if (key == TextAttribute.SIZE) {
                    if (value instanceof Number) {
                        f2 = ((Number) value).floatValue();
                    }
                } else if (key == TextAttribute.WEIGHT) {
                    if (value instanceof Float) {
                        Float.compare(((Float) value).floatValue(), TextAttribute.WEIGHT_MEDIUM.floatValue());
                    }
                } else if (key == TextAttribute.POSTURE && (value instanceof Float)) {
                    Float.compare(((Float) value).floatValue(), TextAttribute.POSTURE_OBLIQUE.floatValue());
                }
            }
            if (font2 != null && Float.compare(font2.getSize2D(), f2) > 0) {
                str2 = font2.getFontName();
                f2 = font2.getSize2D();
                font2.getStyle();
            }
            if (Float.compare(f2, f) > 0) {
                f = f2;
                str = str2;
            }
        }
        if (str == null) {
            str = font.getName();
        }
        if (f < 0.0f) {
            f = font.getSize2D();
        }
        return new Font(str, 0, f);
    }

    public static Font getFontFromAttributedMap(Map<AttributedCharacterIterator.Attribute, Object> map, Font font) {
        if (CollectionUtils.isNullOrEmpty(map)) {
            return font;
        }
        Font font2 = (Font) map.get(TextAttribute.FONT);
        if (font2 != null) {
            return font2;
        }
        String str = (String) map.get(TextAttribute.FAMILY);
        Number number = (Number) map.get(TextAttribute.SIZE);
        if (str == null) {
            str = font.getName();
        }
        if (number == null) {
            number = Float.valueOf(font.getSize2D());
        }
        Number number2 = (Number) map.get(TextAttribute.WEIGHT);
        int i = (number2 == null || Float.compare(number2.floatValue(), TextAttribute.WEIGHT_MEDIUM.floatValue()) < 0) ? 0 : 1;
        Number number3 = (Number) map.get(TextAttribute.POSTURE);
        if (number3 != null && Float.compare(number3.floatValue(), TextAttribute.POSTURE_OBLIQUE.floatValue()) >= 0) {
            i |= 2;
        }
        return new Font(str, i, number.floatValue());
    }

    public static int getImageTypeByConfig(Bitmap.Config config) {
        int i = C169141.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
        if (i != 1) {
            return i != 2 ? 2 : 8;
        }
        return 12;
    }

    public static LinearGradient getLinearGradient(AffineTransform affineTransform, Point2D point2D, Point2D point2D2, Color[] colorArr, float[] fArr, Shader.TileMode tileMode) {
        if (isNaN(point2D) || isNaN(point2D2)) {
            return null;
        }
        Point2D transform = affineTransform.transform(point2D, null);
        Point2D transform2 = affineTransform.transform(point2D2, null);
        return new LinearGradient((float) transform.getX(), (float) transform.getY(), (float) transform2.getX(), (float) transform2.getY(), ColorUtils.toColorInt(colorArr), fArr, tileMode);
    }

    public static Paint getPaintFromAttributeMap(Map<AttributedCharacterIterator.Attribute, Object> map) {
        if (CollectionUtils.isNullOrEmpty(map)) {
            return null;
        }
        return (Paint) map.get(TextAttribute.FOREGROUND);
    }

    public static RadialGradient getRadialGradient(AffineTransform affineTransform, Point2D point2D, Point2D point2D2, double d, Color[] colorArr, float[] fArr, Shader.TileMode tileMode) {
        if (isNaN(point2D) || isNaN(point2D2)) {
            return null;
        }
        Point2D transform = affineTransform.transform(point2D, null);
        Point2D transform2 = affineTransform.transform(point2D2, null);
        float x = (float) transform.getX();
        float y = (float) transform.getY();
        float x2 = (float) transform2.getX();
        float y2 = (float) transform2.getY();
        float max = (float) (Math.max(affineTransform.getScaleX(), affineTransform.getScaleY()) * d);
        if (max <= 0.0f) {
            max = (float) d;
        }
        float f = max;
        float f2 = x2 - x;
        float f3 = y2 - y;
        double d2 = (f2 * f2) + (f3 * f3);
        double d3 = f * f * 0.999f;
        if (d2 > d3) {
            float sqrt = (float) Math.sqrt(d3 / d2);
            x2 = x + (f2 * sqrt);
            y2 = y + (f3 * sqrt);
        }
        return new RadialGradient(x2, y2, f, ColorUtils.toColorInt(colorArr), fArr, tileMode);
    }

    public static Object getValue(Map<AttributedCharacterIterator.Attribute, Object> map, TextAttribute textAttribute) {
        if (CollectionUtils.isNullOrEmpty(map)) {
            return null;
        }
        return map.get(textAttribute);
    }

    public static boolean isNaN(Point2D point2D) {
        if (point2D != null) {
            return Double.isNaN(point2D.getX()) || Double.isNaN(point2D.getY());
        }
        return false;
    }

    public static boolean isScript(Map<AttributedCharacterIterator.Attribute, Object> map) {
        Object obj = map.get(TextAttribute.SUPERSCRIPT);
        return obj != null && (TextAttribute.SUPERSCRIPT_SUPER == obj || TextAttribute.SUPERSCRIPT_SUB == obj);
    }

    private static void setFontSpannable(Spannable spannable, AttributedData attributedData) {
        int beginIndex = attributedData.getBeginIndex();
        int endIndex = attributedData.getEndIndex();
        Number number = (Number) attributedData.getValue(TextAttribute.WEIGHT);
        int i = (number == null || Float.compare(number.floatValue(), TextAttribute.WEIGHT_MEDIUM.floatValue()) < 0) ? 0 : 1;
        Number number2 = (Number) attributedData.getValue(TextAttribute.POSTURE);
        if (number2 != null && Float.compare(number2.floatValue(), TextAttribute.POSTURE_OBLIQUE.floatValue()) >= 0) {
            i |= 2;
        }
        String str = (String) attributedData.getValue(TextAttribute.FAMILY);
        Number number3 = (Number) attributedData.getValue(TextAttribute.SIZE);
        Font font = (Font) attributedData.getValue(TextAttribute.FONT);
        if (font != null) {
            str = font.getName();
            number3 = Float.valueOf(font.getSize2D());
        }
        if (number3 == null) {
            number3 = 12;
        }
        Object value = attributedData.getValue(TextAttribute.SUPERSCRIPT);
        if (TextAttribute.SUPERSCRIPT_SUPER == value || TextAttribute.SUPERSCRIPT_SUB == value) {
            number3 = Float.valueOf(number3.floatValue() * 0.7f);
        }
        if (str != null) {
            setSpannable(spannable, new TextAppearanceSpan(new Font(str, i, number3.floatValue()), spannable.charAt(beginIndex)), beginIndex, endIndex);
        } else {
            setSpannable(spannable, new StyleSpan(i), beginIndex, endIndex);
            setSpannable(spannable, new AbsoluteSizeSpan(number3.intValue()), beginIndex, endIndex);
        }
    }

    public static void setSpannable(Spannable spannable, Map.Entry<AttributedCharacterIterator.Attribute, Object> entry, int i, int i2) {
        Object subscriptSpan;
        AttributedCharacterIterator.Attribute key = entry.getKey();
        Object value = entry.getValue();
        if (value == null || BatikUtils.isBatikAttribute(key)) {
            return;
        }
        if (key == TextAttribute.BACKGROUND) {
            if (value instanceof Color) {
                subscriptSpan = new BackgroundColorSpan(((Color) value).getRGB());
            }
            subscriptSpan = null;
        } else if (key == TextAttribute.FOREGROUND) {
            if (value instanceof Color) {
                subscriptSpan = new ForegroundColorSpan(((Color) value).getRGB());
            } else {
                if (value instanceof Paint) {
                    subscriptSpan = new ForegroundPaintSpan((Paint) value);
                }
                subscriptSpan = null;
            }
        } else if (key == TextAttribute.UNDERLINE) {
            if (TextAttribute.UNDERLINE_ON == value) {
                subscriptSpan = new UnderlineSpan();
            }
            subscriptSpan = null;
        } else if (key == TextAttribute.STRIKETHROUGH) {
            if (TextAttribute.STRIKETHROUGH_ON == value) {
                subscriptSpan = new StrikethroughSpan();
            }
            subscriptSpan = null;
        } else {
            if (key == TextAttribute.SUPERSCRIPT) {
                if (TextAttribute.SUPERSCRIPT_SUPER == value) {
                    subscriptSpan = new SuperscriptSpan();
                } else if (TextAttribute.SUPERSCRIPT_SUB == value) {
                    subscriptSpan = new SubscriptSpan();
                }
            }
            subscriptSpan = null;
        }
        setSpannable(spannable, subscriptSpan, i, i2);
    }

    public static void setSpannableWithAttributeData(Spannable spannable, List<AttributedData> list) {
        if (CollectionUtils.isNullOrEmpty(list)) {
            return;
        }
        Iterator<AttributedData> it2 = list.iterator();
        while (it2.hasNext()) {
            setSpannableWithAttributeData(spannable, it2.next());
        }
    }

    public static List<AttributedData> collectAttributeData(AttributedCharacterIterator attributedCharacterIterator, String str, Predicate<AttributedCharacterIterator.Attribute> predicate) {
        ArrayList arrayList = new ArrayList();
        attributedCharacterIterator.first();
        int beginIndex = attributedCharacterIterator.getBeginIndex();
        if (attributedCharacterIterator.getEndIndex() <= beginIndex) {
            return arrayList;
        }
        while (attributedCharacterIterator.getIndex() < attributedCharacterIterator.getEndIndex()) {
            AttributedData attributedData = new AttributedData(attributedCharacterIterator.getRunStart() - beginIndex, attributedCharacterIterator.getRunLimit() - beginIndex, attributedCharacterIterator.getAttributes());
            if (predicate != null) {
                attributedData.removeIf(predicate);
            }
            attributedData.addTo(arrayList, str);
            attributedCharacterIterator.setIndex(attributedCharacterIterator.getRunLimit());
        }
        return arrayList;
    }

    public static Layout.Alignment getAlignmentFromAttributeData(AttributedData attributedData) {
        for (Map.Entry<AttributedCharacterIterator.Attribute, Object> entry : attributedData.getAttributes().entrySet()) {
            if (BatikUtils.isBatikAlignmentAttribute(entry.getKey())) {
                return BatikUtils.getAlignment(entry.getKey(), entry.getValue());
            }
        }
        return null;
    }

    public static void setSpannableWithAttributeData(Spannable spannable, AttributedData attributedData) {
        int beginIndex = attributedData.getBeginIndex();
        int endIndex = attributedData.getEndIndex();
        Iterator<Map.Entry<AttributedCharacterIterator.Attribute, Object>> it2 = attributedData.getAttributes().entrySet().iterator();
        while (it2.hasNext()) {
            setSpannable(spannable, it2.next(), beginIndex, endIndex);
        }
        setFontSpannable(spannable, attributedData);
    }

    public static void copyData(Bitmap bitmap, WritableRaster writableRaster) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width];
        for (int i = 0; i < height; i++) {
            bitmap.getPixels(iArr, 0, width, 0, i, width, 1);
            writableRaster.setPixels(0, i, width, 1, ColorUtils.toJavaPixels(writableRaster, iArr));
        }
    }

    public static void setSpannable(Spannable spannable, Object obj, int i, int i2) {
        if (spannable == null || obj == null) {
            return;
        }
        spannable.setSpan(obj, i, i2, 33);
    }
}
