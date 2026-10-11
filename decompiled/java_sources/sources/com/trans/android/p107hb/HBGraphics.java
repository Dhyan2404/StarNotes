package com.trans.android.p107hb;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import com.onyx.common.util.CollectionUtils;
import com.onyx.common.util.JLog;
import com.onyx.common.util.StringUtils;
import com.onyx.harfbuzz.collections.FloatList;
import com.onyx.harfbuzz.collections.IntList;
import com.onyx.harfbuzz.graphics.GlyphAttributes;
import com.onyx.harfbuzz.graphics.GlyphCache;
import com.onyx.harfbuzz.graphics.GlyphImage;
import com.onyx.harfbuzz.graphics.HBTypeface;
import com.onyx.harfbuzz.sfnt.ShapingEngine;
import com.onyx.harfbuzz.sfnt.ShapingResult;
import com.onyx.harfbuzz.sfnt.WritingDirection;
import com.trans.android.AndroidGraphics2D;
import com.trans.android.common.AttributedData;
import com.trans.android.font.FontManager;
import com.trans.android.p107hb.HBGraphics;
import com.trans.android.util.BridgeUtils;
import com.trans.android.util.PaintUtils;
import java.awt.Color;
import java.awt.Font;
import java.awt.font.TextAttribute;
import java.backport.function.Function;
import java.io.Closeable;
import java.text.AttributedCharacterIterator;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import sun.font.AndroidGlyphVector;
import sun.font.Font2D;

/* loaded from: classes10.dex */
public class HBGraphics implements Closeable {
    public static final List<String> OUTLINES_FONTS = new ArrayList<String>(7) { // from class: com.trans.android.hb.HBGraphics.1
        {
            add("symbol");
            add("webdings");
            add("wingdings");
            add("wingdings 2");
            add("wingdings 3");
            add("mt extra");
        }
    };
    private static final String TAG = "HBGraphics";
    private int[] colorTable;
    private ShapingEngine engine;
    private GlyphAttributes glyphAttributes;
    private Paint paint;
    private StyleGraphics styleGraphics;
    private int threshold;
    private float lineWidth = 1.0f;
    private boolean antiAlias = true;
    private boolean closeAfterDraw = false;

    private void closeAfterDraw() {
        if (this.closeAfterDraw) {
            close();
        }
    }

    private boolean existOutlinesFontAttribute(List<AttributedData> list) {
        if (CollectionUtils.isNullOrEmpty(list)) {
            return false;
        }
        for (AttributedData attributedData : list) {
            if (isOutlinesFont((String) attributedData.getValue(TextAttribute.FAMILY))) {
                return true;
            }
            Font font = (Font) attributedData.getValue(TextAttribute.FONT);
            if (font != null && isOutlinesFont(font.getName())) {
                return true;
            }
        }
        return false;
    }

    private float getSuperscriptOffset(Map<AttributedCharacterIterator.Attribute, Object> map, float f) {
        Object value = BridgeUtils.getValue(map, TextAttribute.SUPERSCRIPT);
        if (value == null) {
            return 0.0f;
        }
        if (TextAttribute.SUPERSCRIPT_SUPER == value) {
            return (-f) * 0.5f;
        }
        if (TextAttribute.SUPERSCRIPT_SUB == value) {
            return f * 0.5f;
        }
        return 0.0f;
    }

    private void init() {
        if (this.engine == null) {
            GlyphAttributes glyphAttributes = new GlyphAttributes();
            this.glyphAttributes = glyphAttributes;
            glyphAttributes.setAntiAlias(this.antiAlias);
            ShapingEngine shapingEngine = new ShapingEngine();
            this.engine = shapingEngine;
            shapingEngine.setWritingDirection(WritingDirection.LEFT_TO_RIGHT);
            this.styleGraphics = new StyleGraphics();
            this.paint = new Paint();
        }
    }

    private boolean isOutlinesFont(AndroidGraphics2D androidGraphics2D) {
        Font font = androidGraphics2D.getFont();
        return font != null && isOutlinesFont(font.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Matrix lambda$setPaintColorOrShader$0(float f, Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.setScale(f / bitmap.getWidth(), f / bitmap.getHeight());
        return matrix;
    }

    private void setPaintColorOrShader(AndroidGraphics2D androidGraphics2D, Map<AttributedCharacterIterator.Attribute, Object> map, final float f) {
        java.awt.Paint paintFromAttributeMap = BridgeUtils.getPaintFromAttributeMap(map);
        if (paintFromAttributeMap == null) {
            this.paint.setColor(androidGraphics2D.getAndroidTextPaint().getColor());
            this.paint.setShader(null);
        } else {
            if (paintFromAttributeMap instanceof Color) {
                this.paint.setColor(((Color) paintFromAttributeMap).getRGB());
                this.paint.setShader(null);
                return;
            }
            Shader shader = PaintUtils.getShader(paintFromAttributeMap, new Function() { // from class: com.sunia.HTREnginev2.v6h
                @Override // java.backport.function.Function
                public final Object apply(Object obj) {
                    Matrix lambda$setPaintColorOrShader$0;
                    lambda$setPaintColorOrShader$0 = HBGraphics.lambda$setPaintColorOrShader$0(f, (Bitmap) obj);
                    return lambda$setPaintColorOrShader$0;
                }
            });
            this.paint.setShader(shader);
            if (shader == null) {
                this.paint.setColor(androidGraphics2D.getAndroidTextPaint().getColor());
            } else {
                this.paint.setAlpha(255);
            }
        }
    }

    private void updateGlyphAttributes(Font font, HBTypeface hBTypeface, float f) {
        this.glyphAttributes.setTypeface(hBTypeface);
        this.glyphAttributes.setPixelWidth(f);
        this.glyphAttributes.setPixelHeight(f);
        if (!font.isBold() || HBUtils.isBold(hBTypeface)) {
            this.glyphAttributes.setStrength(0);
        } else {
            this.glyphAttributes.setStrength(70);
        }
        if (!font.isItalic() || HBUtils.isItalic(hBTypeface)) {
            this.glyphAttributes.setSkewX(0.0f);
        } else {
            this.glyphAttributes.setSkewX(-0.25f);
        }
        this.glyphAttributes.setThreshold(this.threshold);
        this.engine.setTypeface(hBTypeface);
        this.engine.setTypeSize(f);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ShapingEngine shapingEngine = this.engine;
        if (shapingEngine != null) {
            shapingEngine.dispose();
        }
        this.glyphAttributes = null;
        this.engine = null;
        this.styleGraphics = null;
        this.paint = null;
    }

    public void copy(HBGraphics hBGraphics) {
        this.lineWidth = hBGraphics.lineWidth;
        this.colorTable = hBGraphics.colorTable;
        this.threshold = hBGraphics.threshold;
        this.closeAfterDraw = hBGraphics.closeAfterDraw;
    }

    public void drawGlyphVector(AndroidGraphics2D androidGraphics2D, AndroidGlyphVector androidGlyphVector, float f, float f2) {
        AndroidGlyphVector androidGlyphVector2 = androidGlyphVector;
        init();
        Canvas canvas = androidGraphics2D.getCanvas();
        try {
            canvas.save();
            canvas.translate(f, f2);
            float abs = (float) Math.abs(androidGraphics2D.getScaleX());
            float f3 = 1.0f / abs;
            canvas.scale(f3, f3);
            Font font = androidGlyphVector.getFont();
            Font2D font2D = FontManager.getFont2D(font);
            float size2D = font.getSize2D() * abs;
            HBTypeface hBTypeface = null;
            setPaintColorOrShader(androidGraphics2D, null, size2D);
            float[] glyphPositions = androidGlyphVector2.getGlyphPositions(null);
            int numGlyphs = androidGlyphVector.getNumGlyphs();
            GlyphCache glyphCache = GlyphCache.getInstance();
            int i = 0;
            while (i < numGlyphs) {
                int glyphCode = androidGlyphVector2.getGlyphCode(i);
                HBTypeface hBTypeface2 = FontManager.getHBTypeface(font, glyphCode);
                if (hBTypeface != hBTypeface2) {
                    updateGlyphAttributes(font, hBTypeface2, size2D);
                    hBTypeface = hBTypeface2;
                }
                GlyphImage glyphImage = glyphCache.getGlyphImage(this.glyphAttributes, FontManager.getGlyphCode(font2D, glyphCode), this.colorTable, this.threshold);
                if (glyphImage != null) {
                    int i2 = i * 2;
                    canvas.drawBitmap(glyphImage.bitmap(), (glyphPositions[i2] * abs) + glyphImage.left(), (glyphPositions[i2 + 1] * abs) + (-glyphImage.top()), this.paint);
                }
                i++;
                androidGlyphVector2 = androidGlyphVector;
            }
        } finally {
            canvas.restore();
            closeAfterDraw();
        }
    }

    public boolean drawString(AndroidGraphics2D androidGraphics2D, AttributedCharacterIterator attributedCharacterIterator) {
        return drawString(androidGraphics2D, attributedCharacterIterator, 0.0f, 0.0f);
    }

    public boolean enableHBDraw(AndroidGraphics2D androidGraphics2D, List<AttributedData> list) {
        if (HBUtils.enableHBDraw()) {
            return true;
        }
        if (fontEnhance()) {
            throw new IllegalArgumentException("Font enhance must has FontProvider");
        }
        if (existOutlinesFontAttribute(list)) {
            return true;
        }
        return isOutlinesFont(androidGraphics2D);
    }

    public boolean fontEnhance() {
        return this.colorTable != null;
    }

    public void setAntiAlias(boolean z) {
        this.antiAlias = z;
        GlyphAttributes glyphAttributes = this.glyphAttributes;
        if (glyphAttributes != null) {
            glyphAttributes.setAntiAlias(z);
        }
    }

    public HBGraphics setCloseAfterDraw(boolean z) {
        this.closeAfterDraw = z;
        return this;
    }

    public HBGraphics setColorTable(int[] iArr, int i) {
        this.colorTable = iArr;
        this.threshold = i;
        return this;
    }

    public HBGraphics setLineWidth(float f) {
        this.lineWidth = f;
        return this;
    }

    public boolean drawString(AndroidGraphics2D androidGraphics2D, AttributedCharacterIterator attributedCharacterIterator, float f, float f2) {
        String convertCharacterIterator = BridgeUtils.convertCharacterIterator(attributedCharacterIterator);
        return drawString(androidGraphics2D, BridgeUtils.collectAttributeData(attributedCharacterIterator, convertCharacterIterator), convertCharacterIterator, f, f2);
    }

    private boolean isOutlinesFont(String str) {
        return StringUtils.isNotBlank(str) && OUTLINES_FONTS.contains(str.toLowerCase(Locale.getDefault()));
    }

    public boolean drawString(AndroidGraphics2D androidGraphics2D, List<AttributedData> list, String str, float f, float f2) {
        if (!enableHBDraw(androidGraphics2D, list)) {
            closeAfterDraw();
            return false;
        }
        init();
        Canvas canvas = androidGraphics2D.getCanvas();
        try {
            canvas.save();
            canvas.translate(f, f2);
            float abs = (float) Math.abs(androidGraphics2D.getScaleX());
            float f3 = 1.0f / abs;
            canvas.scale(f3, f3);
            try {
                this.styleGraphics.calculate(androidGraphics2D, list, str, abs);
                JLog.m41639d(TAG, "text: %s, x: %.2f, y: %.2f, scale: %.2f", str, Float.valueOf(f), Float.valueOf(f2), Float.valueOf(abs));
                float f4 = 0.0f;
                for (AttributedData attributedData : list) {
                    f4 += drawString(androidGraphics2D, attributedData.getAttributes(), str, attributedData.getBeginIndex(), attributedData.getEndIndex(), f4, 0.0f, abs);
                }
                boolean z = f4 > 0.0f;
                canvas.restore();
                closeAfterDraw();
                return z;
            } catch (Throwable th) {
                th = th;
                canvas.restore();
                closeAfterDraw();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public boolean drawString(AndroidGraphics2D androidGraphics2D, String str) {
        return drawString(androidGraphics2D, str, 0.0f, 0.0f);
    }

    public boolean drawString(AndroidGraphics2D androidGraphics2D, String str, float f, float f2) {
        if (!enableHBDraw(androidGraphics2D, null)) {
            closeAfterDraw();
            return false;
        }
        init();
        Canvas canvas = androidGraphics2D.getCanvas();
        try {
            canvas.save();
            canvas.translate(f, f2);
            float abs = (float) Math.abs(androidGraphics2D.getScaleX());
            float f3 = 1.0f / abs;
            canvas.scale(f3, f3);
            JLog.m41639d(TAG, "text: %s, x: %.2f, y: %.2f, scale: %.2f", str, Float.valueOf(f), Float.valueOf(f2), Float.valueOf(abs));
            this.styleGraphics.calculate(androidGraphics2D, str, abs);
            return drawString(androidGraphics2D, null, str, 0, str.length(), 0.0f, 0.0f, abs) > 0.0f;
        } finally {
            canvas.restore();
            closeAfterDraw();
        }
    }

    private float drawString(AndroidGraphics2D androidGraphics2D, Map<AttributedCharacterIterator.Attribute, Object> map, String str, int i, int i2, float f, float f2, float f3) {
        Font fontFromAttributedMap = BridgeUtils.getFontFromAttributedMap(map, androidGraphics2D.getFont());
        String substring = str.substring(i, i2);
        HBTypeface hBTypeface = FontManager.getHBTypeface(fontFromAttributedMap, substring);
        float size2D = fontFromAttributedMap.getSize2D() * f3;
        setPaintColorOrShader(androidGraphics2D, map, size2D);
        float ascent = HBUtils.getAscent(hBTypeface, size2D);
        float descent = HBUtils.getDescent(hBTypeface, size2D);
        float superscriptOffset = getSuperscriptOffset(map, ascent);
        if (superscriptOffset != 0.0f) {
            size2D *= 0.7f;
        }
        updateGlyphAttributes(fontFromAttributedMap, hBTypeface, size2D);
        JLog.m41639d(TAG, "drawText: %s, font: %s-%d(%.2f), typeface: %s, x: %.2f, y: %.2f", substring, fontFromAttributedMap.getName(), Integer.valueOf(fontFromAttributedMap.getStyle()), Float.valueOf(fontFromAttributedMap.getSize2D()), hBTypeface.getFamilyName(), Float.valueOf(f), Float.valueOf(f2));
        ShapingResult shapeText = this.engine.shapeText(substring, 0, substring.length());
        FloatList glyphAdvances = shapeText.getGlyphAdvances();
        GlyphCache glyphCache = GlyphCache.getInstance();
        Canvas canvas = androidGraphics2D.getCanvas();
        this.styleGraphics.drawBackground(androidGraphics2D, map, this.paint, glyphAdvances, f, f2, ascent, descent, superscriptOffset);
        IntList glyphIds = shapeText.getGlyphIds();
        IntList clusterMap = shapeText.getClusterMap();
        int size = clusterMap.size();
        int i3 = 0;
        float f4 = 0.0f;
        while (i3 < size) {
            int i4 = clusterMap.get(i3);
            int size2 = (i3 == size + (-1) ? glyphIds.size() : clusterMap.get(i3 + 1)) - 1;
            while (size2 >= i4) {
                IntList intList = glyphIds;
                GlyphImage glyphImage = glyphCache.getGlyphImage(this.glyphAttributes, glyphIds.get(size2), this.colorTable, this.threshold);
                if (glyphImage != null) {
                    canvas.drawBitmap(glyphImage.bitmap(), f + f4 + glyphImage.left(), (f2 - glyphImage.top()) + superscriptOffset, this.paint);
                }
                size2--;
                glyphIds = intList;
            }
            f4 += glyphAdvances.get(i4);
            i3++;
            glyphIds = glyphIds;
        }
        this.styleGraphics.drawUnderline(androidGraphics2D, map, this.paint, f4, this.lineWidth * f3, f, f2, superscriptOffset);
        this.styleGraphics.drawStrikethrough(androidGraphics2D, map, this.paint, f4, this.lineWidth * f3, f, f2, superscriptOffset);
        shapeText.dispose();
        return f4;
    }
}
