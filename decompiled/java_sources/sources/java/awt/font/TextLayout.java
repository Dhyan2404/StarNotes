package java.awt.font;

import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.InternalError;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.font.TextLine;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.text.AttributedCharacterIterator;
import java.text.AttributedString;
import java.util.Map;
import sun.font.AttributeValues;
import sun.font.CoreMetrics;
import sun.font.FontResolver;
import sun.font.GraphicComponent;
import sun.font.LayoutPathImpl;
import sun.text.CodePointIterator;

/* loaded from: classes5.dex */
public final class TextLayout implements Cloneable {
    private static final float ALREADY_JUSTIFIED = -53.9f;
    public static final CaretPolicy DEFAULT_CARET_POLICY = new CaretPolicy();

    /* renamed from: dx */
    private static float f97739dx;

    /* renamed from: dy */
    private static float f97740dy;
    private byte baseline;
    private float[] baselineOffsets;
    private int characterCount;
    private int hashCodeCache;
    private float justifyRatio;
    private TextLine textLine;
    private float visibleAdvance;
    private boolean isVerticalLine = false;
    private TextLine.TextLineMetrics lineMetrics = null;
    private boolean cacheIsValid = false;
    private Rectangle2D naturalBounds = null;
    private Rectangle2D boundsRect = null;
    private boolean caretsInLigaturesAreAllowed = false;

    /* loaded from: classes5.dex */
    public static class CaretPolicy {
        public TextHitInfo getStrongCaret(TextHitInfo textHitInfo, TextHitInfo textHitInfo2, TextLayout textLayout) {
            return textLayout.getStrongHit(textHitInfo, textHitInfo2);
        }
    }

    public TextLayout(String str, Font font, FontRenderContext fontRenderContext) {
        if (font == null) {
            throw new IllegalArgumentException("Null font passed to TextLayout constructor.");
        }
        if (str != null) {
            if (str.length() != 0) {
                Map<TextAttribute, ?> attributes = font.hasLayoutAttributes() ? font.getAttributes() : null;
                char[] charArray = str.toCharArray();
                if (sameBaselineUpTo(font, charArray, 0, charArray.length) == charArray.length) {
                    fastInit(charArray, font, attributes, fontRenderContext);
                    return;
                }
                AttributedString attributedString = attributes == null ? new AttributedString(str) : new AttributedString(str, attributes);
                attributedString.addAttribute(TextAttribute.FONT, font);
                standardInit(attributedString.getIterator(), charArray, fontRenderContext);
                return;
            }
            throw new IllegalArgumentException("Zero length string passed to TextLayout constructor.");
        }
        throw new IllegalArgumentException("Null string passed to TextLayout constructor.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0045, code lost:
    
        if ((r10[0] > r10[r10.length - 2]) == (r11[0] > r11[r11.length - 2])) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        if ((r10[1] > r10[r10.length - 1]) == (r11[1] > r11[r11.length - 1])) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.awt.geom.GeneralPath boundingShape(double[] r10, double[] r11) {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            java.awt.geom.GeneralPath r0 = pathToShape(r10, r1, r0)
            boolean r9 = r9.isVerticalLine
            r2 = 2
            r3 = 1
            if (r9 == 0) goto L2b
            r4 = r10[r3]
            int r9 = r10.length
            int r9 = r9 - r3
            r9 = r10[r9]
            int r9 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r9 <= 0) goto L18
            r9 = r3
            goto L19
        L18:
            r9 = r1
        L19:
            r4 = r11[r3]
            int r10 = r11.length
            int r10 = r10 - r3
            r6 = r11[r10]
            int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r10 <= 0) goto L25
            r10 = r3
            goto L26
        L25:
            r10 = r1
        L26:
            if (r9 != r10) goto L29
            goto L47
        L29:
            r3 = r1
            goto L47
        L2b:
            r4 = r10[r1]
            int r9 = r10.length
            int r9 = r9 - r2
            r9 = r10[r9]
            int r9 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r9 <= 0) goto L37
            r9 = r3
            goto L38
        L37:
            r9 = r1
        L38:
            r4 = r11[r1]
            int r10 = r11.length
            int r10 = r10 - r2
            r6 = r11[r10]
            int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r10 <= 0) goto L44
            r10 = r3
            goto L45
        L44:
            r10 = r1
        L45:
            if (r9 != r10) goto L29
        L47:
            if (r3 == 0) goto L4f
            int r9 = r11.length
            int r1 = r9 + (-2)
            r2 = -2
            r9 = r2
            goto L53
        L4f:
            int r9 = r11.length
            r8 = r2
            r2 = r9
            r9 = r8
        L53:
            if (r1 == r2) goto L62
            r3 = r11[r1]
            float r10 = (float) r3
            int r3 = r1 + 1
            r3 = r11[r3]
            float r3 = (float) r3
            r0.lineTo(r10, r3)
            int r1 = r1 + r9
            goto L53
        L62:
            r0.closePath()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.font.TextLayout.boundingShape(double[], double[]):java.awt.geom.GeneralPath");
    }

    private void buildCache() {
        this.lineMetrics = this.textLine.getMetrics();
        if (this.textLine.isDirectionLTR()) {
            int i = this.characterCount - 1;
            while (i != -1) {
                if (!this.textLine.isCharSpace(this.textLine.visualToLogical(i))) {
                    break;
                } else {
                    i--;
                }
            }
            if (i == this.characterCount - 1) {
                this.visibleAdvance = this.lineMetrics.advance;
            } else if (i == -1) {
                this.visibleAdvance = 0.0f;
            } else {
                int visualToLogical = this.textLine.visualToLogical(i);
                this.visibleAdvance = this.textLine.getCharLinePosition(visualToLogical) + this.textLine.getCharAdvance(visualToLogical);
            }
        } else {
            int i2 = 0;
            while (i2 != this.characterCount) {
                if (!this.textLine.isCharSpace(this.textLine.visualToLogical(i2))) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 == this.characterCount) {
                this.visibleAdvance = 0.0f;
            } else if (i2 == 0) {
                this.visibleAdvance = this.lineMetrics.advance;
            } else {
                this.visibleAdvance = this.lineMetrics.advance - this.textLine.getCharLinePosition(this.textLine.visualToLogical(i2));
            }
        }
        this.naturalBounds = null;
        this.boundsRect = null;
        this.hashCodeCache = 0;
        this.cacheIsValid = true;
    }

    private GeneralPath caretBoundingShape(int i, int i2, Rectangle2D rectangle2D) {
        if (i > i2) {
            i2 = i;
            i = i2;
        }
        return boundingShape(getCaretPath(i, rectangle2D, true), getCaretPath(i2, rectangle2D, true));
    }

    private boolean caretIsValid(int i) {
        if (i == this.characterCount || i == 0) {
            return true;
        }
        int visualToLogical = this.textLine.visualToLogical(i);
        if (!this.textLine.isCharLTR(visualToLogical)) {
            visualToLogical = this.textLine.visualToLogical(i - 1);
            if (this.textLine.isCharLTR(visualToLogical)) {
                return true;
            }
        }
        return this.textLine.caretAtOffsetIsValid(visualToLogical);
    }

    private TextHitInfo caretToHit(int i) {
        if (i == 0 || i == this.characterCount) {
            return (i == this.characterCount) == this.textLine.isDirectionLTR() ? TextHitInfo.leading(this.characterCount) : TextHitInfo.trailing(-1);
        }
        int visualToLogical = this.textLine.visualToLogical(i);
        return this.textLine.isCharLTR(visualToLogical) ? TextHitInfo.leading(visualToLogical) : TextHitInfo.trailing(visualToLogical);
    }

    private float caretToPointDistance(float[] fArr, float f, float f2) {
        boolean z = this.isVerticalLine;
        float f3 = z ? f2 : f;
        if (z) {
            f2 = -f;
        }
        return (f3 - fArr[0]) + (f2 * fArr[1]);
    }

    private void checkTextHit(TextHitInfo textHitInfo) {
        if (textHitInfo == null) {
            throw new IllegalArgumentException("TextHitInfo is null.");
        }
        if (textHitInfo.getInsertionIndex() < 0 || textHitInfo.getInsertionIndex() > this.characterCount) {
            throw new IllegalArgumentException("TextHitInfo is out of range");
        }
    }

    private void ensureCache() {
        if (this.cacheIsValid) {
            return;
        }
        buildCache();
    }

    private void fastInit(char[] cArr, Font font, Map<? extends AttributedCharacterIterator.Attribute, ?> map, FontRenderContext fontRenderContext) {
        this.isVerticalLine = false;
        CoreMetrics coreMetrics = CoreMetrics.get(font.getLineMetrics(cArr, 0, cArr.length, fontRenderContext));
        byte b = (byte) coreMetrics.baselineIndex;
        if (map == null) {
            this.baseline = b;
            this.baselineOffsets = coreMetrics.baselineOffsets;
            this.justifyRatio = 1.0f;
        } else {
            paragraphInit(b, coreMetrics, map, cArr);
        }
        this.characterCount = cArr.length;
        this.textLine = TextLine.fastCreateTextLine(fontRenderContext, cArr, font, coreMetrics, map);
    }

    public static byte getBaselineFromGraphic(GraphicAttribute graphicAttribute) {
        byte alignment = (byte) graphicAttribute.getAlignment();
        if (alignment == -2 || alignment == -1) {
            return (byte) 0;
        }
        return alignment;
    }

    private float[] getCaretInfo(int i, Rectangle2D rectangle2D, float[] fArr) {
        int visualToLogical;
        float charLinePosition;
        float charAscent;
        float charDescent;
        float f;
        float f2;
        if (i != 0 && i != this.characterCount) {
            int visualToLogical2 = this.textLine.visualToLogical(i - 1);
            float charAngle = this.textLine.getCharAngle(visualToLogical2);
            charAscent = this.textLine.getCharLinePosition(visualToLogical2) + this.textLine.getCharAdvance(visualToLogical2);
            if (charAngle != 0.0f) {
                float charShift = charAscent + (this.textLine.getCharShift(visualToLogical2) * charAngle);
                float charAscent2 = (this.textLine.getCharAscent(visualToLogical2) * charAngle) + charShift;
                charDescent = charShift - (charAngle * this.textLine.getCharDescent(visualToLogical2));
                charAscent = charAscent2;
            } else {
                charDescent = charAscent;
            }
            int visualToLogical3 = this.textLine.visualToLogical(i);
            float charAngle2 = this.textLine.getCharAngle(visualToLogical3);
            f2 = this.textLine.getCharLinePosition(visualToLogical3);
            if (charAngle2 != 0.0f) {
                float charShift2 = f2 + (this.textLine.getCharShift(visualToLogical3) * charAngle2);
                float charAscent3 = (this.textLine.getCharAscent(visualToLogical3) * charAngle2) + charShift2;
                f = charShift2 - (charAngle2 * this.textLine.getCharDescent(visualToLogical3));
                f2 = charAscent3;
            } else {
                f = f2;
            }
        } else {
            int i2 = this.characterCount;
            if (i == i2) {
                visualToLogical = this.textLine.visualToLogical(i2 - 1);
                charLinePosition = this.textLine.getCharLinePosition(visualToLogical) + this.textLine.getCharAdvance(visualToLogical);
            } else {
                visualToLogical = this.textLine.visualToLogical(i);
                charLinePosition = this.textLine.getCharLinePosition(visualToLogical);
            }
            float charAngle3 = this.textLine.getCharAngle(visualToLogical);
            float charShift3 = charLinePosition + (this.textLine.getCharShift(visualToLogical) * charAngle3);
            charAscent = (this.textLine.getCharAscent(visualToLogical) * charAngle3) + charShift3;
            charDescent = charShift3 - (charAngle3 * this.textLine.getCharDescent(visualToLogical));
            f = charDescent;
            f2 = charAscent;
        }
        float f3 = (charAscent + f2) / 2.0f;
        float f4 = (charDescent + f) / 2.0f;
        if (fArr == null) {
            fArr = new float[2];
        }
        if (this.isVerticalLine) {
            float width = (float) ((f3 - f4) / rectangle2D.getWidth());
            fArr[1] = width;
            fArr[0] = (float) (f3 + (width * rectangle2D.getX()));
        } else {
            float height = (float) ((f3 - f4) / rectangle2D.getHeight());
            fArr[1] = height;
            fArr[0] = (float) (f4 + (height * rectangle2D.getMaxY()));
        }
        return fArr;
    }

    private float[] getCaretInfoTestInternal(TextHitInfo textHitInfo, Rectangle2D rectangle2D) {
        double d;
        double d2;
        float f;
        double d3;
        double d4;
        double d5;
        ensureCache();
        checkTextHit(textHitInfo);
        float[] fArr = new float[6];
        getCaretInfo(hitToCaret(textHitInfo), rectangle2D, fArr);
        int charIndex = textHitInfo.getCharIndex();
        boolean isLeadingEdge = textHitInfo.isLeadingEdge();
        boolean isDirectionLTR = this.textLine.isDirectionLTR();
        boolean z = !isVertical();
        if (charIndex == -1 || charIndex == this.characterCount) {
            TextLine.TextLineMetrics metrics = this.textLine.getMetrics();
            boolean z2 = isDirectionLTR == (charIndex == -1);
            if (z) {
                d = z2 ? 0.0d : metrics.advance;
                double d6 = -metrics.ascent;
                d3 = metrics.descent;
                d4 = d;
                d5 = d6;
            } else {
                d = z2 ? 0.0d : metrics.advance;
                d2 = metrics.descent;
                f = metrics.ascent;
                d3 = d;
                d4 = f;
                d = d2;
                d5 = d3;
            }
        } else {
            CoreMetrics coreMetricsAt = this.textLine.getCoreMetricsAt(charIndex);
            double d7 = coreMetricsAt.italicAngle;
            d = this.textLine.getCharLinePosition(charIndex, isLeadingEdge);
            int i = coreMetricsAt.baselineIndex;
            if (i < 0) {
                TextLine.TextLineMetrics metrics2 = this.textLine.getMetrics();
                if (z) {
                    if (coreMetricsAt.baselineIndex == -1) {
                        d5 = -metrics2.ascent;
                        d3 = coreMetricsAt.height + d5;
                    } else {
                        double d8 = metrics2.descent;
                        d3 = d8;
                        d5 = d8 - coreMetricsAt.height;
                    }
                    d4 = d;
                } else {
                    d2 = metrics2.descent;
                    f = metrics2.ascent;
                    d3 = d;
                    d4 = f;
                    d = d2;
                    d5 = d3;
                }
            } else {
                float f2 = this.baselineOffsets[i];
                if (z) {
                    double d9 = d + (coreMetricsAt.ssOffset * d7);
                    float f3 = coreMetricsAt.ascent;
                    double d10 = (f3 * d7) + d9;
                    float f4 = coreMetricsAt.descent;
                    d5 = f2 - f3;
                    d4 = d9 - (d7 * f4);
                    d3 = f2 + f4;
                    d = d10;
                } else {
                    double d11 = d - (coreMetricsAt.ssOffset * d7);
                    float f5 = coreMetricsAt.ascent;
                    double d12 = (f5 * d7) + d11;
                    float f6 = coreMetricsAt.descent;
                    d3 = d11 - (d7 * f6);
                    d = f5 + f2;
                    d5 = d12;
                    d4 = f2 + f6;
                }
            }
        }
        fArr[2] = (float) d;
        fArr[3] = (float) d5;
        fArr[4] = (float) d4;
        fArr[5] = (float) d3;
        return fArr;
    }

    private double[] getCaretPath(TextHitInfo textHitInfo, Rectangle2D rectangle2D) {
        float[] caretInfo = getCaretInfo(textHitInfo, rectangle2D);
        return new double[]{caretInfo[2], caretInfo[3], caretInfo[4], caretInfo[5]};
    }

    private Rectangle2D getNaturalBounds() {
        ensureCache();
        if (this.naturalBounds == null) {
            this.naturalBounds = this.textLine.getItalicBounds();
        }
        return this.naturalBounds;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextHitInfo getStrongHit(TextHitInfo textHitInfo, TextHitInfo textHitInfo2) {
        byte characterLevel = getCharacterLevel(textHitInfo.getCharIndex());
        byte characterLevel2 = getCharacterLevel(textHitInfo2.getCharIndex());
        return characterLevel == characterLevel2 ? (!textHitInfo2.isLeadingEdge() || textHitInfo.isLeadingEdge()) ? textHitInfo : textHitInfo2 : characterLevel < characterLevel2 ? textHitInfo : textHitInfo2;
    }

    private int hitToCaret(TextHitInfo textHitInfo) {
        int charIndex = textHitInfo.getCharIndex();
        if (charIndex < 0) {
            if (this.textLine.isDirectionLTR()) {
                return 0;
            }
            return this.characterCount;
        }
        if (charIndex < this.characterCount) {
            int logicalToVisual = this.textLine.logicalToVisual(charIndex);
            return textHitInfo.isLeadingEdge() != this.textLine.isCharLTR(charIndex) ? logicalToVisual + 1 : logicalToVisual;
        }
        if (this.textLine.isDirectionLTR()) {
            return this.characterCount;
        }
        return 0;
    }

    private GeneralPath leftShape(Rectangle2D rectangle2D) {
        return boundingShape(this.isVerticalLine ? new double[]{rectangle2D.getX(), rectangle2D.getY(), rectangle2D.getX() + rectangle2D.getWidth(), rectangle2D.getY()} : new double[]{rectangle2D.getX(), rectangle2D.getY() + rectangle2D.getHeight(), rectangle2D.getX(), rectangle2D.getY()}, getCaretPath(0, rectangle2D, true));
    }

    private void paragraphInit(byte b, CoreMetrics coreMetrics, Map<? extends AttributedCharacterIterator.Attribute, ?> map, char[] cArr) {
        this.baseline = b;
        this.baselineOffsets = TextLine.getNormalizedOffsets(coreMetrics.baselineOffsets, b);
        this.justifyRatio = AttributeValues.getJustification(map);
        NumericShaper numericShaping = AttributeValues.getNumericShaping(map);
        if (numericShaping != null) {
            numericShaping.shape(cArr, 0, cArr.length);
        }
    }

    private static GeneralPath pathToShape(double[] dArr, boolean z, LayoutPathImpl layoutPathImpl) {
        GeneralPath generalPath = new GeneralPath(0, dArr.length);
        generalPath.moveTo((float) dArr[0], (float) dArr[1]);
        for (int i = 2; i < dArr.length; i += 2) {
            generalPath.lineTo((float) dArr[i], (float) dArr[i + 1]);
        }
        if (z) {
            generalPath.closePath();
        }
        return layoutPathImpl != null ? (GeneralPath) layoutPathImpl.mapShape(generalPath) : generalPath;
    }

    private GeneralPath rightShape(Rectangle2D rectangle2D) {
        return boundingShape(getCaretPath(this.characterCount, rectangle2D, true), this.isVerticalLine ? new double[]{rectangle2D.getX(), rectangle2D.getY() + rectangle2D.getHeight(), rectangle2D.getX() + rectangle2D.getWidth(), rectangle2D.getY() + rectangle2D.getHeight()} : new double[]{rectangle2D.getX() + rectangle2D.getWidth(), rectangle2D.getY() + rectangle2D.getHeight(), rectangle2D.getX() + rectangle2D.getWidth(), rectangle2D.getY()});
    }

    private static int sameBaselineUpTo(Font font, char[] cArr, int i, int i2) {
        return i2;
    }

    private static Font singleFont(char[] cArr, int i, int i2, Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        Font font;
        if (map.get(TextAttribute.CHAR_REPLACEMENT) != null) {
            return null;
        }
        try {
            font = (Font) map.get(TextAttribute.FONT);
        } catch (ClassCastException unused) {
            font = null;
        }
        if (font == null) {
            if (map.get(TextAttribute.FAMILY) != null) {
                font = Font.getFont(map);
                if (font.canDisplayUpTo(cArr, i, i2) != -1) {
                    return null;
                }
            } else {
                FontResolver fontResolver = FontResolver.getInstance();
                CodePointIterator create = CodePointIterator.create(cArr, i, i2);
                int nextFontRunIndex = fontResolver.nextFontRunIndex(create);
                if (create.charIndex() == i2) {
                    font = fontResolver.getFont(nextFontRunIndex, map);
                }
            }
        }
        if (sameBaselineUpTo(font, cArr, i, i2) != i2) {
            return null;
        }
        return font;
    }

    private void standardInit(AttributedCharacterIterator attributedCharacterIterator, char[] cArr, FontRenderContext fontRenderContext) {
        this.characterCount = cArr.length;
        Map<AttributedCharacterIterator.Attribute, Object> attributes = attributedCharacterIterator.getAttributes();
        if (TextLine.advanceToFirstFont(attributedCharacterIterator)) {
            Font fontAtCurrentPos = TextLine.getFontAtCurrentPos(attributedCharacterIterator);
            int index = attributedCharacterIterator.getIndex() - attributedCharacterIterator.getBeginIndex();
            CoreMetrics coreMetrics = CoreMetrics.get(fontAtCurrentPos.getLineMetrics(cArr, index, index + 1, fontRenderContext));
            paragraphInit((byte) coreMetrics.baselineIndex, coreMetrics, attributes, cArr);
        } else {
            GraphicAttribute graphicAttribute = (GraphicAttribute) attributes.get(TextAttribute.CHAR_REPLACEMENT);
            paragraphInit(getBaselineFromGraphic(graphicAttribute), GraphicComponent.createCoreMetrics(graphicAttribute), attributes, cArr);
        }
        this.textLine = TextLine.standardCreateTextLine(fontRenderContext, attributedCharacterIterator, cArr, this.baselineOffsets);
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e);
        }
    }

    public void draw(Graphics2D graphics2D, float f, float f2) {
        if (graphics2D == null) {
            throw new IllegalArgumentException("Null Graphics2D passed to TextLayout.draw()");
        }
        this.textLine.draw(graphics2D, f - f97739dx, f2 - f97740dy);
    }

    public boolean equals(Object obj) {
        return (obj instanceof TextLayout) && equals((TextLayout) obj);
    }

    public float getAdvance() {
        ensureCache();
        return this.lineMetrics.advance;
    }

    public float getAscent() {
        ensureCache();
        return this.lineMetrics.ascent;
    }

    public byte getBaseline() {
        return this.baseline;
    }

    public float[] getBaselineOffsets() {
        float[] fArr = this.baselineOffsets;
        int length = fArr.length;
        float[] fArr2 = new float[length];
        System.arraycopy(fArr, 0, fArr2, 0, length);
        return fArr2;
    }

    public Shape getBlackBoxBounds(int i, int i2) {
        ensureCache();
        if (i > i2) {
            i2 = i;
            i = i2;
        }
        if (i < 0 || i2 > this.characterCount) {
            throw new IllegalArgumentException("Invalid range passed to TextLayout.getBlackBoxBounds()");
        }
        GeneralPath generalPath = new GeneralPath(1);
        if (i < this.characterCount) {
            while (i < i2) {
                Rectangle2D charBounds = this.textLine.getCharBounds(i);
                if (!charBounds.isEmpty()) {
                    generalPath.append((Shape) charBounds, false);
                }
                i++;
            }
        }
        float f = f97739dx;
        if (f != 0.0f || f97740dy != 0.0f) {
            generalPath = (GeneralPath) AffineTransform.getTranslateInstance(f, f97740dy).createTransformedShape(generalPath);
        }
        LayoutPathImpl layoutPath = this.textLine.getLayoutPath();
        return layoutPath != null ? (GeneralPath) layoutPath.mapShape(generalPath) : generalPath;
    }

    public Rectangle2D getBounds() {
        ensureCache();
        if (this.boundsRect == null) {
            Rectangle2D visualBounds = this.textLine.getVisualBounds();
            if (f97739dx != 0.0f || f97740dy != 0.0f) {
                visualBounds.setRect(visualBounds.getX() - f97739dx, visualBounds.getY() - f97740dy, visualBounds.getWidth(), visualBounds.getHeight());
            }
            this.boundsRect = visualBounds;
        }
        Rectangle2D.Float r0 = new Rectangle2D.Float();
        r0.setRect(this.boundsRect);
        return r0;
    }

    public Shape getCaretShape(TextHitInfo textHitInfo, Rectangle2D rectangle2D) {
        ensureCache();
        checkTextHit(textHitInfo);
        if (rectangle2D != null) {
            return pathToShape(getCaretPath(textHitInfo, rectangle2D), false, this.textLine.getLayoutPath());
        }
        throw new IllegalArgumentException("Null Rectangle2D passed to TextLayout.getCaret()");
    }

    public Shape[] getCaretShapes(int i, Rectangle2D rectangle2D, CaretPolicy caretPolicy) {
        ensureCache();
        if (i < 0 || i > this.characterCount) {
            throw new IllegalArgumentException("Offset out of bounds in TextLayout.getCaretShapes()");
        }
        if (rectangle2D == null) {
            throw new IllegalArgumentException("Null Rectangle2D passed to TextLayout.getCaretShapes()");
        }
        if (caretPolicy != null) {
            Shape[] shapeArr = new Shape[2];
            TextHitInfo afterOffset = TextHitInfo.afterOffset(i);
            int hitToCaret = hitToCaret(afterOffset);
            LayoutPathImpl layoutPath = this.textLine.getLayoutPath();
            GeneralPath pathToShape = pathToShape(getCaretPath(afterOffset, rectangle2D), false, layoutPath);
            TextHitInfo otherHit = afterOffset.getOtherHit();
            if (hitToCaret == hitToCaret(otherHit)) {
                shapeArr[0] = pathToShape;
            } else {
                GeneralPath pathToShape2 = pathToShape(getCaretPath(otherHit, rectangle2D), false, layoutPath);
                if (caretPolicy.getStrongCaret(afterOffset, otherHit, this).equals(afterOffset)) {
                    shapeArr[0] = pathToShape;
                    shapeArr[1] = pathToShape2;
                } else {
                    shapeArr[0] = pathToShape2;
                    shapeArr[1] = pathToShape;
                }
            }
            return shapeArr;
        }
        throw new IllegalArgumentException("Null CaretPolicy passed to TextLayout.getCaretShapes()");
    }

    public int getCharacterCount() {
        return this.characterCount;
    }

    public byte getCharacterLevel(int i) {
        if (i < -1 || i > this.characterCount) {
            throw new IllegalArgumentException("Index is out of range in getCharacterLevel.");
        }
        ensureCache();
        return (i == -1 || i == this.characterCount) ? (byte) (!this.textLine.isDirectionLTR() ? 1 : 0) : this.textLine.getCharLevel(i);
    }

    public float getDescent() {
        ensureCache();
        return this.lineMetrics.descent;
    }

    public TextLayout getJustifiedLayout(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("justificationWidth <= 0 passed to TextLayout.getJustifiedLayout()");
        }
        if (this.justifyRatio == ALREADY_JUSTIFIED) {
            throw new Error("Can't justify again.");
        }
        ensureCache();
        int i = this.characterCount;
        while (i > 0 && this.textLine.isCharWhitespace(i - 1)) {
            i--;
        }
        TextLine justifiedLine = this.textLine.getJustifiedLine(f, this.justifyRatio, 0, i);
        return justifiedLine != null ? new TextLayout(justifiedLine, this.baseline, this.baselineOffsets, ALREADY_JUSTIFIED) : this;
    }

    public LayoutPath getLayoutPath() {
        return this.textLine.getLayoutPath();
    }

    public float getLeading() {
        ensureCache();
        return this.lineMetrics.leading;
    }

    public Shape getLogicalHighlightShape(int i, int i2, Rectangle2D rectangle2D) {
        int i3;
        if (rectangle2D != null) {
            ensureCache();
            if (i > i2) {
                i2 = i;
                i = i2;
            }
            if (i >= 0 && i2 <= this.characterCount) {
                GeneralPath generalPath = new GeneralPath(0);
                int[] iArr = new int[10];
                if (i < i2) {
                    int i4 = i;
                    i3 = 0;
                    do {
                        int i5 = i3 + 1;
                        iArr[i3] = hitToCaret(TextHitInfo.leading(i4));
                        boolean isCharLTR = this.textLine.isCharLTR(i4);
                        do {
                            i4++;
                            if (i4 >= i2) {
                                break;
                            }
                        } while (this.textLine.isCharLTR(i4) == isCharLTR);
                        i3 = i5 + 1;
                        iArr[i5] = hitToCaret(TextHitInfo.trailing(i4 - 1));
                        if (i3 == iArr.length) {
                            int[] iArr2 = new int[iArr.length + 10];
                            System.arraycopy(iArr, 0, iArr2, 0, i3);
                            iArr = iArr2;
                        }
                    } while (i4 < i2);
                } else {
                    int hitToCaret = hitToCaret(TextHitInfo.leading(i));
                    iArr[1] = hitToCaret;
                    iArr[0] = hitToCaret;
                    i3 = 2;
                }
                for (int i6 = 0; i6 < i3; i6 += 2) {
                    generalPath.append((Shape) caretBoundingShape(iArr[i6], iArr[i6 + 1], rectangle2D), false);
                }
                if (i != i2) {
                    if ((this.textLine.isDirectionLTR() && i == 0) || (!this.textLine.isDirectionLTR() && i2 == this.characterCount)) {
                        GeneralPath leftShape = leftShape(rectangle2D);
                        if (!leftShape.getBounds().isEmpty()) {
                            generalPath.append((Shape) leftShape, false);
                        }
                    }
                    if ((this.textLine.isDirectionLTR() && i2 == this.characterCount) || (!this.textLine.isDirectionLTR() && i == 0)) {
                        GeneralPath rightShape = rightShape(rectangle2D);
                        if (!rightShape.getBounds().isEmpty()) {
                            generalPath.append((Shape) rightShape, false);
                        }
                    }
                }
                LayoutPathImpl layoutPath = this.textLine.getLayoutPath();
                return layoutPath != null ? (GeneralPath) layoutPath.mapShape(generalPath) : generalPath;
            }
            throw new IllegalArgumentException("Range is invalid in TextLayout.getLogicalHighlightShape()");
        }
        throw new IllegalArgumentException("Null Rectangle2D passed to TextLayout.getLogicalHighlightShape()");
    }

    public int[] getLogicalRangesForVisualSelection(TextHitInfo textHitInfo, TextHitInfo textHitInfo2) {
        int i;
        ensureCache();
        checkTextHit(textHitInfo);
        checkTextHit(textHitInfo2);
        boolean[] zArr = new boolean[this.characterCount];
        int hitToCaret = hitToCaret(textHitInfo);
        int hitToCaret2 = hitToCaret(textHitInfo2);
        if (hitToCaret > hitToCaret2) {
            hitToCaret2 = hitToCaret;
            hitToCaret = hitToCaret2;
        }
        if (hitToCaret < hitToCaret2) {
            while (hitToCaret < hitToCaret2) {
                zArr[this.textLine.visualToLogical(hitToCaret)] = true;
                hitToCaret++;
            }
        }
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        for (int i4 = 0; i4 < this.characterCount; i4++) {
            if (zArr[i4] != z && (!z)) {
                i3++;
            }
        }
        int[] iArr = new int[i3 * 2];
        boolean z2 = false;
        int i5 = 0;
        while (true) {
            i = this.characterCount;
            if (i2 >= i) {
                break;
            }
            if (zArr[i2] != z2) {
                iArr[i5] = i2;
                z2 = !z2;
                i5++;
            }
            i2++;
        }
        if (z2) {
            iArr[i5] = i;
        }
        return iArr;
    }

    public TextHitInfo getNextLeftHit(TextHitInfo textHitInfo) {
        ensureCache();
        checkTextHit(textHitInfo);
        int hitToCaret = hitToCaret(textHitInfo);
        if (hitToCaret == 0) {
            return null;
        }
        do {
            hitToCaret--;
        } while (!caretIsValid(hitToCaret));
        return caretToHit(hitToCaret);
    }

    public TextHitInfo getNextRightHit(TextHitInfo textHitInfo) {
        ensureCache();
        checkTextHit(textHitInfo);
        int hitToCaret = hitToCaret(textHitInfo);
        if (hitToCaret == this.characterCount) {
            return null;
        }
        do {
            hitToCaret++;
        } while (!caretIsValid(hitToCaret));
        return caretToHit(hitToCaret);
    }

    public Shape getOutline(AffineTransform affineTransform) {
        ensureCache();
        Shape outline = this.textLine.getOutline(affineTransform);
        LayoutPathImpl layoutPath = this.textLine.getLayoutPath();
        return layoutPath != null ? layoutPath.mapShape(outline) : outline;
    }

    public Rectangle getPixelBounds(FontRenderContext fontRenderContext, float f, float f2) {
        return this.textLine.getPixelBounds(fontRenderContext, f, f2);
    }

    public TextLine getTextLineForTesting() {
        return this.textLine;
    }

    public float getVisibleAdvance() {
        ensureCache();
        return this.visibleAdvance;
    }

    public Shape getVisualHighlightShape(TextHitInfo textHitInfo, TextHitInfo textHitInfo2, Rectangle2D rectangle2D) {
        ensureCache();
        checkTextHit(textHitInfo);
        checkTextHit(textHitInfo2);
        if (rectangle2D != null) {
            GeneralPath generalPath = new GeneralPath(0);
            int hitToCaret = hitToCaret(textHitInfo);
            int hitToCaret2 = hitToCaret(textHitInfo2);
            generalPath.append((Shape) caretBoundingShape(hitToCaret, hitToCaret2, rectangle2D), false);
            if (hitToCaret == 0 || hitToCaret2 == 0) {
                GeneralPath leftShape = leftShape(rectangle2D);
                if (!leftShape.getBounds().isEmpty()) {
                    generalPath.append((Shape) leftShape, false);
                }
            }
            int i = this.characterCount;
            if (hitToCaret == i || hitToCaret2 == i) {
                GeneralPath rightShape = rightShape(rectangle2D);
                if (!rightShape.getBounds().isEmpty()) {
                    generalPath.append((Shape) rightShape, false);
                }
            }
            LayoutPathImpl layoutPath = this.textLine.getLayoutPath();
            return layoutPath != null ? (GeneralPath) layoutPath.mapShape(generalPath) : generalPath;
        }
        throw new IllegalArgumentException("Null Rectangle2D passed to TextLayout.getVisualHighlightShape()");
    }

    public TextHitInfo getVisualOtherHit(TextHitInfo textHitInfo) {
        int i;
        int i2;
        boolean z;
        ensureCache();
        checkTextHit(textHitInfo);
        int charIndex = textHitInfo.getCharIndex();
        if (charIndex == -1 || charIndex == this.characterCount) {
            int visualToLogical = this.textLine.visualToLogical(this.textLine.isDirectionLTR() == (charIndex == -1) ? 0 : this.characterCount - 1);
            r1 = this.textLine.isDirectionLTR() == (charIndex == -1) ? this.textLine.isCharLTR(visualToLogical) : !this.textLine.isCharLTR(visualToLogical);
            i = visualToLogical;
        } else {
            int logicalToVisual = this.textLine.logicalToVisual(charIndex);
            if (this.textLine.isCharLTR(charIndex) == textHitInfo.isLeadingEdge()) {
                i2 = logicalToVisual - 1;
                z = false;
            } else {
                i2 = logicalToVisual + 1;
                z = true;
            }
            if (i2 <= -1 || i2 >= this.characterCount) {
                int i3 = z == this.textLine.isDirectionLTR() ? this.characterCount : -1;
                r1 = i3 == this.characterCount;
                i = i3;
            } else {
                i = this.textLine.visualToLogical(i2);
                if (z == this.textLine.isCharLTR(i)) {
                    r1 = true;
                }
            }
        }
        return r1 ? TextHitInfo.leading(i) : TextHitInfo.trailing(i);
    }

    public void handleJustify(float f) {
    }

    public int hashCode() {
        if (this.hashCodeCache == 0) {
            ensureCache();
            this.hashCodeCache = this.textLine.hashCode();
        }
        return this.hashCodeCache;
    }

    public TextHitInfo hitTestChar(float f, float f2, Rectangle2D rectangle2D) {
        float f3;
        float f4;
        int i;
        float effectiveBaselineOffset;
        float f5;
        LayoutPathImpl layoutPath = this.textLine.getLayoutPath();
        if (layoutPath != null) {
            Point2D.Float r2 = new Point2D.Float(f, f2);
            layoutPath.pointToPath(r2, r2);
            f3 = r2.f97777x;
            f4 = r2.f97778y;
        } else {
            f3 = f;
            f4 = f2;
        }
        if (isVertical()) {
            double d = f4;
            if (d < rectangle2D.getMinY()) {
                return TextHitInfo.leading(0);
            }
            if (d >= rectangle2D.getMaxY()) {
                return TextHitInfo.trailing(this.characterCount - 1);
            }
        } else {
            double d2 = f3;
            if (d2 < rectangle2D.getMinX()) {
                return isLeftToRight() ? TextHitInfo.leading(0) : TextHitInfo.trailing(this.characterCount - 1);
            }
            if (d2 >= rectangle2D.getMaxX()) {
                return isLeftToRight() ? TextHitInfo.trailing(this.characterCount - 1) : TextHitInfo.leading(0);
            }
        }
        float f6 = 0.0f;
        int i2 = 0;
        float f7 = 0.0f;
        float f8 = 0.0f;
        double d3 = Double.MAX_VALUE;
        CoreMetrics coreMetrics = null;
        int i3 = -1;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (int i4 = 0; i4 < this.characterCount; i4++) {
            if (this.textLine.caretAtOffsetIsValid(i4)) {
                if (i3 == -1) {
                    i3 = i4;
                }
                CoreMetrics coreMetricsAt = this.textLine.getCoreMetricsAt(i4);
                if (coreMetricsAt != coreMetrics) {
                    int i5 = coreMetricsAt.baselineIndex;
                    if (i5 == -1) {
                        effectiveBaselineOffset = -(this.textLine.getMetrics().ascent - coreMetricsAt.ascent);
                        f5 = coreMetricsAt.ssOffset;
                    } else if (i5 == -2) {
                        effectiveBaselineOffset = this.textLine.getMetrics().descent - coreMetricsAt.descent;
                        f5 = coreMetricsAt.ssOffset;
                    } else {
                        effectiveBaselineOffset = coreMetricsAt.effectiveBaselineOffset(this.baselineOffsets);
                        f5 = coreMetricsAt.ssOffset;
                    }
                    float f12 = effectiveBaselineOffset + f5;
                    float f13 = ((coreMetricsAt.descent - coreMetricsAt.ascent) / 2.0f) - f12;
                    float f14 = coreMetricsAt.italicAngle * f13;
                    f11 = f12 + f13;
                    float f15 = f11 - f4;
                    coreMetrics = coreMetricsAt;
                    i = i3;
                    f8 = f15 * f15;
                    f7 = f14;
                } else {
                    i = i3;
                }
                float f16 = f11;
                float charXPosition = this.textLine.getCharXPosition(i4) + ((this.textLine.getCharAdvance(i4) / 2.0f) - f7);
                float f17 = charXPosition - f3;
                float f18 = f7;
                double sqrt = Math.sqrt((4.0f * f17 * f17) + f8);
                if (sqrt < d3) {
                    f10 = coreMetricsAt.italicAngle;
                    f6 = charXPosition;
                    d3 = sqrt;
                    i2 = i4;
                    f7 = f18;
                    f9 = f16;
                    f11 = f9;
                    i3 = -1;
                } else {
                    f7 = f18;
                    i3 = i;
                    f11 = f16;
                }
            }
        }
        boolean z = this.textLine.isCharLTR(i2) == ((f3 > (f6 - ((f4 - f9) * f10)) ? 1 : (f3 == (f6 - ((f4 - f9) * f10)) ? 0 : -1)) < 0);
        if (i3 == -1) {
            i3 = this.characterCount;
        }
        if (z) {
            return TextHitInfo.leading(i2);
        }
        return TextHitInfo.trailing(i3 - 1);
    }

    public void hitToPoint(TextHitInfo textHitInfo, Point2D point2D) {
        float f;
        float f2;
        boolean z;
        if (textHitInfo == null || point2D == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(textHitInfo == null ? "hit" : "point");
            sb.append(" can't be null");
            throw new NullPointerException(sb.toString());
        }
        ensureCache();
        checkTextHit(textHitInfo);
        int charIndex = textHitInfo.getCharIndex();
        boolean isLeadingEdge = textHitInfo.isLeadingEdge();
        if (charIndex == -1 || charIndex == this.textLine.characterCount()) {
            boolean isDirectionLTR = this.textLine.isDirectionLTR();
            f = isDirectionLTR == (charIndex == -1) ? 0.0f : this.lineMetrics.advance;
            f2 = 0.0f;
            z = isDirectionLTR;
        } else {
            z = this.textLine.isCharLTR(charIndex);
            f = this.textLine.getCharLinePosition(charIndex, isLeadingEdge);
            f2 = this.textLine.getCharYPosition(charIndex);
        }
        point2D.setLocation(f, f2);
        LayoutPathImpl layoutPath = this.textLine.getLayoutPath();
        if (layoutPath != null) {
            layoutPath.pathToPoint(point2D, z != isLeadingEdge, point2D);
        }
    }

    public boolean isLeftToRight() {
        return this.textLine.isDirectionLTR();
    }

    public boolean isVertical() {
        return this.isVerticalLine;
    }

    public String toString() {
        ensureCache();
        return this.textLine.toString();
    }

    public boolean equals(TextLayout textLayout) {
        if (textLayout == null) {
            return false;
        }
        if (textLayout == this) {
            return true;
        }
        ensureCache();
        return this.textLine.equals(textLayout.textLine);
    }

    private double[] getCaretPath(int i, Rectangle2D rectangle2D, boolean z) {
        boolean z2;
        float[] caretInfo = getCaretInfo(i, rectangle2D, null);
        double d = caretInfo[0];
        double d2 = caretInfo[1];
        double x = rectangle2D.getX();
        double width = rectangle2D.getWidth() + x;
        double y = rectangle2D.getY();
        double height = rectangle2D.getHeight() + y;
        double d3 = -3141.59d;
        double d4 = -2.7d;
        if (this.isVerticalLine) {
            if (d2 < 0.0d) {
                x = width;
                width = x;
            }
            double d5 = d + (x * d2);
            double d6 = d + (width * d2);
            if (z) {
                if (d5 < y) {
                    if (d2 <= 0.0d || d6 <= y) {
                        z2 = false;
                        height = y;
                    } else {
                        d3 = ((y - d6) / d2) + width;
                        if (d6 <= height) {
                            height = d6;
                        }
                        z2 = true;
                        d4 = y;
                    }
                } else if (d6 > height) {
                    if (d2 >= 0.0d || d5 >= height) {
                        z2 = false;
                        y = height;
                    } else {
                        d3 = ((height - width) / d2) + x;
                        z2 = true;
                        d4 = height;
                        y = d5;
                    }
                }
            }
            z2 = false;
            height = d6;
            y = d5;
        } else {
            if (d2 >= 0.0d) {
                y = height;
                height = y;
            }
            double d7 = d - (y * d2);
            double d8 = d - (height * d2);
            if (z) {
                if (d7 < x) {
                    if (d2 <= 0.0d || d8 <= x) {
                        z2 = false;
                        width = x;
                    } else {
                        d4 = height - ((x - d8) / d2);
                        if (d8 <= width) {
                            width = d8;
                        }
                        z2 = true;
                        d3 = x;
                    }
                } else if (d8 > width) {
                    if (d2 >= 0.0d || d7 >= width) {
                        z2 = false;
                        x = width;
                    } else {
                        d4 = y - ((width - d7) / d2);
                        z2 = true;
                        d3 = width;
                        x = d7;
                    }
                }
            }
            z2 = false;
            width = d8;
            x = d7;
        }
        return z2 ? new double[]{x, y, d3, d4, width, height} : new double[]{x, y, width, height};
    }

    public Shape getCaretShape(TextHitInfo textHitInfo) {
        return getCaretShape(textHitInfo, getNaturalBounds());
    }

    public TextHitInfo getNextLeftHit(int i, CaretPolicy caretPolicy) {
        if (caretPolicy != null) {
            if (i >= 0 && i <= this.characterCount) {
                TextHitInfo afterOffset = TextHitInfo.afterOffset(i);
                TextHitInfo nextLeftHit = getNextLeftHit(caretPolicy.getStrongCaret(afterOffset, afterOffset.getOtherHit(), this));
                if (nextLeftHit != null) {
                    return caretPolicy.getStrongCaret(getVisualOtherHit(nextLeftHit), nextLeftHit, this);
                }
                return null;
            }
            throw new IllegalArgumentException("Offset out of bounds in TextLayout.getNextLeftHit()");
        }
        throw new IllegalArgumentException("Null CaretPolicy passed to TextLayout.getNextLeftHit()");
    }

    public TextHitInfo getNextRightHit(int i, CaretPolicy caretPolicy) {
        if (i < 0 || i > this.characterCount) {
            throw new IllegalArgumentException("Offset out of bounds in TextLayout.getNextRightHit()");
        }
        if (caretPolicy != null) {
            TextHitInfo afterOffset = TextHitInfo.afterOffset(i);
            TextHitInfo nextRightHit = getNextRightHit(caretPolicy.getStrongCaret(afterOffset, afterOffset.getOtherHit(), this));
            if (nextRightHit != null) {
                return caretPolicy.getStrongCaret(getVisualOtherHit(nextRightHit), nextRightHit, this);
            }
            return null;
        }
        throw new IllegalArgumentException("Null CaretPolicy passed to TextLayout.getNextRightHit()");
    }

    public TextHitInfo getNextLeftHit(int i) {
        return getNextLeftHit(i, DEFAULT_CARET_POLICY);
    }

    public Shape[] getCaretShapes(int i, Rectangle2D rectangle2D) {
        return getCaretShapes(i, rectangle2D, DEFAULT_CARET_POLICY);
    }

    public TextHitInfo getNextRightHit(int i) {
        return getNextRightHit(i, DEFAULT_CARET_POLICY);
    }

    public Shape[] getCaretShapes(int i) {
        return getCaretShapes(i, getNaturalBounds(), DEFAULT_CARET_POLICY);
    }

    public Shape getVisualHighlightShape(TextHitInfo textHitInfo, TextHitInfo textHitInfo2) {
        return getVisualHighlightShape(textHitInfo, textHitInfo2, getNaturalBounds());
    }

    public TextLayout(String str, Map<? extends AttributedCharacterIterator.Attribute, ?> map, FontRenderContext fontRenderContext) {
        if (str == null) {
            throw new IllegalArgumentException("Null string passed to TextLayout constructor.");
        }
        if (map != null) {
            if (str.length() != 0) {
                char[] charArray = str.toCharArray();
                Font singleFont = singleFont(charArray, 0, charArray.length, map);
                if (singleFont != null) {
                    fastInit(charArray, singleFont, map, fontRenderContext);
                    return;
                } else {
                    standardInit(new AttributedString(str, map).getIterator(), charArray, fontRenderContext);
                    return;
                }
            }
            throw new IllegalArgumentException("Zero length string passed to TextLayout constructor.");
        }
        throw new IllegalArgumentException("Null map passed to TextLayout constructor.");
    }

    public Shape getLogicalHighlightShape(int i, int i2) {
        return getLogicalHighlightShape(i, i2, getNaturalBounds());
    }

    public float[] getCaretInfo(TextHitInfo textHitInfo, Rectangle2D rectangle2D) {
        ensureCache();
        checkTextHit(textHitInfo);
        return getCaretInfoTestInternal(textHitInfo, rectangle2D);
    }

    public TextHitInfo hitTestChar(float f, float f2) {
        return hitTestChar(f, f2, getNaturalBounds());
    }

    public float[] getCaretInfo(TextHitInfo textHitInfo) {
        return getCaretInfo(textHitInfo, getNaturalBounds());
    }

    public TextLayout(AttributedCharacterIterator attributedCharacterIterator, FontRenderContext fontRenderContext) {
        Map<AttributedCharacterIterator.Attribute, Object> attributes;
        Font singleFont;
        if (attributedCharacterIterator != null) {
            int beginIndex = attributedCharacterIterator.getBeginIndex();
            int endIndex = attributedCharacterIterator.getEndIndex();
            if (beginIndex != endIndex) {
                int i = endIndex - beginIndex;
                attributedCharacterIterator.first();
                char[] cArr = new char[i];
                char first = attributedCharacterIterator.first();
                int i2 = 0;
                while (first != 65535) {
                    cArr[i2] = first;
                    first = attributedCharacterIterator.next();
                    i2++;
                }
                attributedCharacterIterator.first();
                if (attributedCharacterIterator.getRunLimit() == endIndex && (singleFont = singleFont(cArr, 0, i, (attributes = attributedCharacterIterator.getAttributes()))) != null) {
                    fastInit(cArr, singleFont, attributes, fontRenderContext);
                    return;
                } else {
                    standardInit(attributedCharacterIterator, cArr, fontRenderContext);
                    return;
                }
            }
            throw new IllegalArgumentException("Zero length iterator passed to TextLayout constructor.");
        }
        throw new IllegalArgumentException("Null iterator passed to TextLayout constructor.");
    }

    public TextLayout(TextLine textLine, byte b, float[] fArr, float f) {
        this.characterCount = textLine.characterCount();
        this.baseline = b;
        this.baselineOffsets = fArr;
        this.textLine = textLine;
        this.justifyRatio = f;
    }
}
