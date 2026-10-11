package java.awt.font;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.text.AttributedCharacterIterator;
import java.text.Bidi;
import java.util.Map;
import sun.font.AttributeValues;
import sun.font.BidiUtils;
import sun.font.CoreMetrics;
import sun.font.Decoration;
import sun.font.ExtendedTextLabel;
import sun.font.FontResolver;
import sun.font.GraphicComponent;
import sun.font.LayoutPathImpl;
import sun.font.TextLabelFactory;
import sun.font.TextLineComponent;
import sun.text.CodePointIterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class TextLine {
    private float[] fBaselineOffsets;
    private byte[] fCharLevels;
    private int[] fCharLogicalOrder;
    private int[] fCharVisualOrder;
    private char[] fChars;
    private int fCharsLimit;
    private int fCharsStart;
    private int[] fComponentVisualOrder;
    private TextLineComponent[] fComponents;
    private boolean fIsDirectionLTR;
    private TextLineMetrics fMetrics = null;
    private FontRenderContext frc;
    private boolean isSimple;
    private float[] locs;

    /* renamed from: lp */
    private LayoutPathImpl f97741lp;
    private Rectangle pixelBounds;
    private static Function fgPosAdvF = new Function() { // from class: java.awt.font.TextLine.1
        @Override // java.awt.font.TextLine.Function
        public float computeFunction(TextLine textLine, int i, int i2) {
            TextLineComponent textLineComponent = textLine.fComponents[i];
            return textLine.locs[textLine.getComponentVisualIndex(i) * 2] + textLineComponent.getCharX(i2) + textLineComponent.getCharAdvance(i2);
        }
    };
    private static Function fgAdvanceF = new Function() { // from class: java.awt.font.TextLine.2
        @Override // java.awt.font.TextLine.Function
        public float computeFunction(TextLine textLine, int i, int i2) {
            return textLine.fComponents[i].getCharAdvance(i2);
        }
    };
    private static Function fgXPositionF = new Function() { // from class: java.awt.font.TextLine.3
        @Override // java.awt.font.TextLine.Function
        public float computeFunction(TextLine textLine, int i, int i2) {
            return textLine.locs[textLine.getComponentVisualIndex(i) * 2] + textLine.fComponents[i].getCharX(i2);
        }
    };
    private static Function fgYPositionF = new Function() { // from class: java.awt.font.TextLine.4
        @Override // java.awt.font.TextLine.Function
        public float computeFunction(TextLine textLine, int i, int i2) {
            return textLine.fComponents[i].getCharY(i2) + textLine.getComponentShift(i);
        }
    };

    /* loaded from: classes5.dex */
    public static abstract class Function {
        private Function() {
        }

        public abstract float computeFunction(TextLine textLine, int i, int i2);
    }

    /* loaded from: classes5.dex */
    public static final class TextLineMetrics {
        public final float advance;
        public final float ascent;
        public final float descent;
        public final float leading;

        public TextLineMetrics(float f, float f2, float f3, float f4) {
            this.ascent = f;
            this.descent = f2;
            this.leading = f3;
            this.advance = f4;
        }
    }

    public TextLine(FontRenderContext fontRenderContext, TextLineComponent[] textLineComponentArr, float[] fArr, char[] cArr, int i, int i2, int[] iArr, byte[] bArr, boolean z) {
        int[] computeComponentOrder = computeComponentOrder(textLineComponentArr, iArr);
        this.frc = fontRenderContext;
        this.fComponents = textLineComponentArr;
        this.fBaselineOffsets = fArr;
        this.fComponentVisualOrder = computeComponentOrder;
        this.fChars = cArr;
        this.fCharsStart = i;
        this.fCharsLimit = i2;
        this.fCharLogicalOrder = iArr;
        this.fCharLevels = bArr;
        this.fIsDirectionLTR = z;
        checkCtorArgs();
        init();
    }

    public static boolean advanceToFirstFont(AttributedCharacterIterator attributedCharacterIterator) {
        char first = attributedCharacterIterator.first();
        while (first != 65535) {
            if (attributedCharacterIterator.getAttribute(TextAttribute.CHAR_REPLACEMENT) == null) {
                return true;
            }
            first = attributedCharacterIterator.setIndex(attributedCharacterIterator.getRunLimit());
        }
        return false;
    }

    private float applyFunctionAtIndex(int i, Function function) {
        if (i < 0) {
            throw new IllegalArgumentException("Negative logicalIndex.");
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i2 >= textLineComponentArr.length) {
                throw new IllegalArgumentException("logicalIndex too large.");
            }
            int numCharacters = textLineComponentArr[i2].getNumCharacters() + i3;
            if (numCharacters > i) {
                return function.computeFunction(this, i2, i - i3);
            }
            i2++;
            i3 = numCharacters;
        }
    }

    private void checkCtorArgs() {
        int i = 0;
        int i2 = 0;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i >= textLineComponentArr.length) {
                break;
            }
            i2 += textLineComponentArr[i].getNumCharacters();
            i++;
        }
        if (i2 != characterCount()) {
            throw new IllegalArgumentException("Invalid TextLine!  char count is different from sum of char counts of components.");
        }
    }

    private static int[] computeComponentOrder(TextLineComponent[] textLineComponentArr, int[] iArr) {
        if (iArr == null || textLineComponentArr.length <= 1) {
            return null;
        }
        int[] iArr2 = new int[textLineComponentArr.length];
        int i = 0;
        for (int i2 = 0; i2 < textLineComponentArr.length; i2++) {
            iArr2[i2] = iArr[i];
            i += textLineComponentArr[i2].getNumCharacters();
        }
        return BidiUtils.createInverseMap(BidiUtils.createContiguousOrder(iArr2));
    }

    public static Rectangle computePixelBounds(BufferedImage bufferedImage) {
        int i;
        int width = bufferedImage.getWidth();
        int height = bufferedImage.getHeight();
        int[] iArr = new int[width];
        int i2 = -1;
        loop0: while (true) {
            i = i2 + 1;
            if (i >= height) {
                break;
            }
            bufferedImage.getRGB(0, i, width, 1, iArr, 0, width);
            for (int i3 = 0; i3 < width; i3++) {
                if (iArr[i3] != -1) {
                    break loop0;
                }
            }
            i2 = i;
        }
        int[] iArr2 = new int[width];
        loop2: while (true) {
            height--;
            if (height <= i) {
                break;
            }
            bufferedImage.getRGB(0, height, width, 1, iArr2, 0, width);
            for (int i4 = 0; i4 < width; i4++) {
                if (iArr2[i4] != -1) {
                    break loop2;
                }
            }
        }
        int i5 = height + 1;
        int i6 = -1;
        loop4: while (true) {
            i6++;
            if (i6 >= width) {
                break;
            }
            for (int i7 = i; i7 < i5; i7++) {
                if (bufferedImage.getRGB(i6, i7) != -1) {
                    break loop4;
                }
            }
        }
        loop6: while (true) {
            width--;
            if (width <= i6) {
                break;
            }
            for (int i8 = i; i8 < i5; i8++) {
                if (bufferedImage.getRGB(width, i8) != -1) {
                    break loop6;
                }
            }
        }
        return new Rectangle(i6, i, (width + 1) - i6, i5 - i);
    }

    public static TextLineComponent[] createComponentsOnRun(int i, int i2, char[] cArr, int[] iArr, byte[] bArr, TextLabelFactory textLabelFactory, Font font, CoreMetrics coreMetrics, FontRenderContext fontRenderContext, Decoration decoration, TextLineComponent[] textLineComponentArr, int i3) {
        int i4;
        int i5 = i;
        CoreMetrics coreMetrics2 = coreMetrics;
        TextLineComponent[] textLineComponentArr2 = textLineComponentArr;
        int i6 = i3;
        while (true) {
            int firstVisualChunk = firstVisualChunk(iArr, bArr, i5, i2);
            int i7 = i5;
            do {
                if (coreMetrics2 == null) {
                    LineMetrics lineMetrics = font.getLineMetrics(cArr, i7, firstVisualChunk, fontRenderContext);
                    CoreMetrics coreMetrics3 = CoreMetrics.get(lineMetrics);
                    i4 = lineMetrics.getNumChars();
                    coreMetrics2 = coreMetrics3;
                } else {
                    i4 = firstVisualChunk - i7;
                }
                int i8 = i7 + i4;
                ExtendedTextLabel createExtended = textLabelFactory.createExtended(font, coreMetrics2, decoration, i7, i8);
                i6++;
                if (i6 >= textLineComponentArr2.length) {
                    textLineComponentArr2 = expandArray(textLineComponentArr2);
                }
                textLineComponentArr2[i6 - 1] = createExtended;
                i7 = i8;
            } while (i7 < firstVisualChunk);
            if (i7 >= i2) {
                return textLineComponentArr2;
            }
            i5 = i7;
        }
    }

    public static TextLine createLineFromText(char[] cArr, StyledParagraph styledParagraph, TextLabelFactory textLabelFactory, boolean z, float[] fArr) {
        int[] iArr;
        byte[] bArr;
        textLabelFactory.setLineContext(0, cArr.length);
        Bidi lineBidi = textLabelFactory.getLineBidi();
        if (lineBidi != null) {
            byte[] levels = BidiUtils.getLevels(lineBidi);
            bArr = levels;
            iArr = BidiUtils.createInverseMap(BidiUtils.createVisualToLogicalMap(levels));
        } else {
            iArr = null;
            bArr = null;
        }
        return new TextLine(textLabelFactory.getFontRenderContext(), getComponents(styledParagraph, cArr, 0, cArr.length, iArr, bArr, textLabelFactory), fArr, cArr, 0, cArr.length, iArr, bArr, z);
    }

    private static TextLineComponent[] expandArray(TextLineComponent[] textLineComponentArr) {
        TextLineComponent[] textLineComponentArr2 = new TextLineComponent[textLineComponentArr.length + 8];
        System.arraycopy(textLineComponentArr, 0, textLineComponentArr2, 0, textLineComponentArr.length);
        return textLineComponentArr2;
    }

    public static TextLine fastCreateTextLine(FontRenderContext fontRenderContext, char[] cArr, Font font, CoreMetrics coreMetrics, Map<? extends AttributedCharacterIterator.Attribute, ?> map) {
        boolean z;
        byte[] bArr;
        AttributeValues attributeValues;
        boolean z2;
        int[] iArr;
        byte[] bArr2;
        boolean z3;
        TextLineComponent[] textLineComponentArr;
        boolean z4;
        int length = cArr.length;
        Bidi bidi = null;
        if (map != null) {
            AttributeValues fromMap = AttributeValues.fromMap(map);
            if (fromMap.getRunDirection() >= 0) {
                z4 = fromMap.getRunDirection() == 0;
                z2 = !z4;
            } else {
                z4 = true;
                z2 = false;
            }
            if (fromMap.getBidiEmbedding() != 0) {
                byte bidiEmbedding = (byte) fromMap.getBidiEmbedding();
                bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    bArr[i] = bidiEmbedding;
                }
                attributeValues = fromMap;
                z = z4;
                z2 = true;
            } else {
                attributeValues = fromMap;
                z = z4;
                bArr = null;
            }
        } else {
            z = true;
            bArr = null;
            attributeValues = null;
            z2 = false;
        }
        if (!z2) {
            z2 = Bidi.requiresBidi(cArr, 0, cArr.length);
        }
        if (z2) {
            Bidi bidi2 = new Bidi(cArr, 0, bArr, 0, cArr.length, attributeValues == null ? -2 : attributeValues.getRunDirection());
            if (bidi2.isLeftToRight()) {
                iArr = null;
                bArr2 = null;
                z3 = z;
            } else {
                byte[] levels = BidiUtils.getLevels(bidi2);
                bArr2 = levels;
                iArr = BidiUtils.createInverseMap(BidiUtils.createVisualToLogicalMap(levels));
                z3 = bidi2.baseIsLeftToRight();
            }
            bidi = bidi2;
        } else {
            iArr = null;
            bArr2 = null;
            z3 = z;
        }
        TextLineComponent[] createComponentsOnRun = createComponentsOnRun(0, cArr.length, cArr, iArr, bArr2, new TextLabelFactory(fontRenderContext, cArr, bidi, 0), font, coreMetrics, fontRenderContext, Decoration.getDecoration(attributeValues), new TextLineComponent[1], 0);
        int length2 = createComponentsOnRun.length;
        while (createComponentsOnRun[length2 - 1] == null) {
            length2--;
        }
        if (length2 != createComponentsOnRun.length) {
            textLineComponentArr = new TextLineComponent[length2];
            System.arraycopy(createComponentsOnRun, 0, textLineComponentArr, 0, length2);
        } else {
            textLineComponentArr = createComponentsOnRun;
        }
        return new TextLine(fontRenderContext, textLineComponentArr, coreMetrics.baselineOffsets, cArr, 0, cArr.length, iArr, bArr2, z3);
    }

    private static int firstVisualChunk(int[] iArr, byte[] bArr, int i, int i2) {
        if (iArr == null || bArr == null) {
            return i2;
        }
        byte b = bArr[i];
        do {
            i++;
            if (i >= i2) {
                break;
            }
        } while (bArr[i] == b);
        return i;
    }

    public static float getAdvanceBetween(TextLineComponent[] textLineComponentArr, int i, int i2) {
        float f = 0.0f;
        int i3 = 0;
        int i4 = 0;
        while (i3 < textLineComponentArr.length) {
            TextLineComponent textLineComponent = textLineComponentArr[i3];
            int numCharacters = textLineComponent.getNumCharacters();
            int i5 = i4 + numCharacters;
            if (i5 > i) {
                f += textLineComponent.getAdvanceBetween(Math.max(0, i - i4), Math.min(numCharacters, i2 - i4));
                if (i5 >= i2) {
                    break;
                }
            }
            i3++;
            i4 = i5;
        }
        return f;
    }

    private int getComponentLogicalIndex(int i) {
        int[] iArr = this.fComponentVisualOrder;
        return iArr == null ? i : iArr[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getComponentShift(int i) {
        return this.fComponents[i].getCoreMetrics().effectiveBaselineOffset(this.fBaselineOffsets);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getComponentVisualIndex(int i) {
        if (this.fComponentVisualOrder == null) {
            return i;
        }
        int i2 = 0;
        while (true) {
            int[] iArr = this.fComponentVisualOrder;
            if (i2 >= iArr.length) {
                throw new IndexOutOfBoundsException("bad component index: " + i);
            }
            if (iArr[i2] == i) {
                return i2;
            }
            i2++;
        }
    }

    public static TextLineComponent[] getComponents(StyledParagraph styledParagraph, char[] cArr, int i, int i2, int[] iArr, byte[] bArr, TextLabelFactory textLabelFactory) {
        int i3;
        int length;
        int firstVisualChunk;
        FontRenderContext fontRenderContext = textLabelFactory.getFontRenderContext();
        int i4 = 0;
        TextLineComponent[] textLineComponentArr = new TextLineComponent[1];
        int i5 = 0;
        int i6 = i;
        while (true) {
            int min = Math.min(styledParagraph.getRunLimit(i6), i2);
            Decoration decorationAt = styledParagraph.getDecorationAt(i6);
            Object fontOrGraphicAt = styledParagraph.getFontOrGraphicAt(i6);
            if (fontOrGraphicAt instanceof GraphicAttribute) {
                GraphicAttribute graphicAttribute = (GraphicAttribute) fontOrGraphicAt;
                byte[] bArr2 = bArr;
                int i7 = i6;
                while (true) {
                    firstVisualChunk = firstVisualChunk(iArr, bArr2, i7, min);
                    GraphicComponent graphicComponent = new GraphicComponent(graphicAttribute, decorationAt, iArr, bArr, i7, firstVisualChunk, null);
                    length = i5 + 1;
                    if (length >= textLineComponentArr.length) {
                        textLineComponentArr = expandArray(textLineComponentArr);
                    }
                    textLineComponentArr[length - 1] = graphicComponent;
                    if (firstVisualChunk >= min) {
                        break;
                    }
                    bArr2 = bArr;
                    i5 = length;
                    i7 = firstVisualChunk;
                }
                i6 = firstVisualChunk;
                i3 = i4;
            } else {
                i3 = i4;
                TextLineComponent[] createComponentsOnRun = createComponentsOnRun(i6, min, cArr, iArr, bArr, textLabelFactory, (Font) fontOrGraphicAt, null, fontRenderContext, decorationAt, textLineComponentArr, i5);
                length = createComponentsOnRun.length;
                while (createComponentsOnRun[length - 1] == null) {
                    length--;
                }
                textLineComponentArr = createComponentsOnRun;
                i6 = min;
            }
            if (i6 >= i2) {
                break;
            }
            i5 = length;
            i4 = i3;
        }
        if (textLineComponentArr.length == length) {
            return textLineComponentArr;
        }
        TextLineComponent[] textLineComponentArr2 = new TextLineComponent[length];
        System.arraycopy(textLineComponentArr, i3, textLineComponentArr2, i3, length);
        return textLineComponentArr2;
    }

    public static Font getFontAtCurrentPos(AttributedCharacterIterator attributedCharacterIterator) {
        Object attribute = attributedCharacterIterator.getAttribute(TextAttribute.FONT);
        if (attribute != null) {
            return (Font) attribute;
        }
        if (attributedCharacterIterator.getAttribute(TextAttribute.FAMILY) != null) {
            return Font.getFont(attributedCharacterIterator.getAttributes());
        }
        int next = CodePointIterator.create(attributedCharacterIterator).next();
        if (next == -1) {
            return null;
        }
        FontResolver fontResolver = FontResolver.getInstance();
        return fontResolver.getFont(fontResolver.getFontIndex(next), attributedCharacterIterator.getAttributes());
    }

    public static float[] getNormalizedOffsets(float[] fArr, byte b) {
        float f = fArr[b];
        if (f == 0.0f) {
            return fArr;
        }
        int length = fArr.length;
        float[] fArr2 = new float[length];
        for (int i = 0; i < length; i++) {
            fArr2[i] = fArr[i] - f;
        }
        return fArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void init() {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: java.awt.font.TextLine.init():void");
    }

    public static TextLine standardCreateTextLine(FontRenderContext fontRenderContext, AttributedCharacterIterator attributedCharacterIterator, char[] cArr, float[] fArr) {
        StyledParagraph styledParagraph = new StyledParagraph(attributedCharacterIterator, cArr);
        Bidi bidi = new Bidi(attributedCharacterIterator);
        if (bidi.isLeftToRight()) {
            bidi = null;
        }
        return createLineFromText(cArr, styledParagraph, new TextLabelFactory(fontRenderContext, cArr, bidi, 0), bidi != null ? bidi.baseIsLeftToRight() : true, fArr);
    }

    public boolean caretAtOffsetIsValid(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Negative offset.");
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i2 >= textLineComponentArr.length) {
                throw new IllegalArgumentException("logicalIndex too large.");
            }
            int numCharacters = textLineComponentArr[i2].getNumCharacters() + i3;
            if (numCharacters > i) {
                return this.fComponents[i2].caretAtOffsetIsValid(i - i3);
            }
            i2++;
            i3 = numCharacters;
        }
    }

    public int characterCount() {
        return this.fCharsLimit - this.fCharsStart;
    }

    public void draw(Graphics2D graphics2D, float f, float f2) {
        int i = 0;
        if (this.f97741lp == null) {
            int i2 = 0;
            while (true) {
                TextLineComponent[] textLineComponentArr = this.fComponents;
                if (i >= textLineComponentArr.length) {
                    return;
                }
                TextLineComponent textLineComponent = textLineComponentArr[getComponentLogicalIndex(i)];
                float[] fArr = this.locs;
                textLineComponent.draw(graphics2D, fArr[i2] + f, fArr[i2 + 1] + f2);
                i++;
                i2 += 2;
            }
        } else {
            AffineTransform transform = graphics2D.getTransform();
            Point2D.Float r9 = new Point2D.Float();
            int i3 = 0;
            while (true) {
                TextLineComponent[] textLineComponentArr2 = this.fComponents;
                if (i >= textLineComponentArr2.length) {
                    return;
                }
                TextLineComponent textLineComponent2 = textLineComponentArr2[getComponentLogicalIndex(i)];
                LayoutPathImpl layoutPathImpl = this.f97741lp;
                float[] fArr2 = this.locs;
                layoutPathImpl.pathToPoint(fArr2[i3], fArr2[i3 + 1], false, r9);
                r9.f97777x += f;
                r9.f97778y += f2;
                AffineTransform baselineTransform = textLineComponent2.getBaselineTransform();
                if (baselineTransform != null) {
                    graphics2D.translate(r9.f97777x - baselineTransform.getTranslateX(), r9.f97778y - baselineTransform.getTranslateY());
                    graphics2D.transform(baselineTransform);
                    textLineComponent2.draw(graphics2D, 0.0f, 0.0f);
                    graphics2D.setTransform(transform);
                } else {
                    textLineComponent2.draw(graphics2D, r9.f97777x, r9.f97778y);
                }
                i++;
                i3 += 2;
            }
        }
    }

    public float getCharAdvance(int i) {
        return applyFunctionAtIndex(i, fgAdvanceF);
    }

    public float getCharAngle(int i) {
        return getCoreMetricsAt(i).italicAngle;
    }

    public float getCharAscent(int i) {
        return getCoreMetricsAt(i).ascent;
    }

    public Rectangle2D getCharBounds(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Negative logicalIndex.");
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i2 >= textLineComponentArr.length) {
                throw new IllegalArgumentException("logicalIndex too large.");
            }
            int numCharacters = textLineComponentArr[i2].getNumCharacters() + i3;
            if (numCharacters > i) {
                Rectangle2D charVisualBounds = this.fComponents[i2].getCharVisualBounds(i - i3);
                int componentVisualIndex = getComponentVisualIndex(i2) * 2;
                charVisualBounds.setRect(charVisualBounds.getX() + this.locs[componentVisualIndex], this.locs[componentVisualIndex + 1] + charVisualBounds.getY(), charVisualBounds.getWidth(), charVisualBounds.getHeight());
                return charVisualBounds;
            }
            i2++;
            i3 = numCharacters;
        }
    }

    public float getCharDescent(int i) {
        return getCoreMetricsAt(i).descent;
    }

    public byte getCharLevel(int i) {
        byte[] bArr = this.fCharLevels;
        if (bArr == null) {
            return (byte) 0;
        }
        return bArr[i];
    }

    public float getCharLinePosition(int i) {
        return getCharXPosition(i);
    }

    public float getCharShift(int i) {
        return getCoreMetricsAt(i).ssOffset;
    }

    public int getCharType(int i) {
        return Character.getType(this.fChars[i + this.fCharsStart]);
    }

    public float getCharXPosition(int i) {
        return applyFunctionAtIndex(i, fgXPositionF);
    }

    public float getCharYPosition(int i) {
        return applyFunctionAtIndex(i, fgYPositionF);
    }

    public CoreMetrics getCoreMetricsAt(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Negative logicalIndex.");
        }
        if (i > this.fCharsLimit - this.fCharsStart) {
            throw new IllegalArgumentException("logicalIndex too large.");
        }
        int i2 = 0;
        int i3 = 0;
        do {
            i2 += this.fComponents[i3].getNumCharacters();
            if (i2 > i) {
                break;
            }
            i3++;
        } while (i3 < this.fComponents.length);
        return this.fComponents[i3].getCoreMetrics();
    }

    public Rectangle2D getItalicBounds() {
        float f = Float.MAX_VALUE;
        float f2 = -3.4028235E38f;
        int i = 0;
        int i2 = 0;
        float f3 = Float.MAX_VALUE;
        float f4 = -3.4028235E38f;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i >= textLineComponentArr.length) {
                return new Rectangle2D.Float(f, f3, f4 - f, f2 - f3);
            }
            Rectangle2D italicBounds = textLineComponentArr[getComponentLogicalIndex(i)].getItalicBounds();
            float[] fArr = this.locs;
            float f5 = fArr[i2];
            float f6 = fArr[i2 + 1];
            f = Math.min(f, ((float) italicBounds.getX()) + f5);
            f4 = Math.max(f4, f5 + ((float) italicBounds.getMaxX()));
            f3 = Math.min(f3, ((float) italicBounds.getY()) + f6);
            f2 = Math.max(f2, f6 + ((float) italicBounds.getMaxY()));
            i++;
            i2 += 2;
        }
    }

    public TextLine getJustifiedLine(float f, float f2, int i, int i2) {
        int i3;
        TextLineComponent[] textLineComponentArr = this.fComponents;
        int length = textLineComponentArr.length;
        TextLineComponent[] textLineComponentArr2 = new TextLineComponent[length];
        int i4 = 0;
        System.arraycopy(textLineComponentArr, 0, textLineComponentArr2, 0, textLineComponentArr.length);
        int i5 = 0;
        while (true) {
            getAdvanceBetween(textLineComponentArr2, i4, characterCount());
            float advanceBetween = (f - getAdvanceBetween(textLineComponentArr2, i, i2)) * f2;
            int[] iArr = new int[length];
            int i6 = i4;
            int i7 = i6;
            while (i6 < length) {
                int componentLogicalIndex = getComponentLogicalIndex(i6);
                iArr[componentLogicalIndex] = i7;
                i7 += textLineComponentArr2[componentLogicalIndex].getNumJustificationInfos();
                i6++;
            }
            GlyphJustificationInfo[] glyphJustificationInfoArr = new GlyphJustificationInfo[i7];
            int i8 = i4;
            while (i8 < length) {
                TextLineComponent textLineComponent = textLineComponentArr2[i8];
                int numCharacters = textLineComponent.getNumCharacters();
                int i9 = i4 + numCharacters;
                if (i9 > i) {
                    textLineComponent.getJustificationInfos(glyphJustificationInfoArr, iArr[i8], Math.max(i4, i + 0), Math.min(numCharacters, i2 + 0));
                    if (i9 >= i2) {
                        break;
                    }
                }
                i8++;
                i4 = 0;
            }
            int i10 = 0;
            while (i10 < i7 && glyphJustificationInfoArr[i10] == null) {
                i10++;
            }
            while (i7 > i10 && glyphJustificationInfoArr[i7 - 1] == null) {
                i7--;
            }
            float[] justify = new TextJustifier(glyphJustificationInfoArr, i10, i7).justify(advanceBetween);
            boolean[] zArr = new boolean[1];
            int i11 = 0;
            boolean z = false;
            while (true) {
                if (i11 >= length) {
                    i3 = 0;
                    break;
                }
                TextLineComponent textLineComponent2 = textLineComponentArr2[i11];
                int numCharacters2 = textLineComponent2.getNumCharacters();
                i3 = 0;
                int i12 = 0 + numCharacters2;
                if (i12 > i) {
                    Math.max(0, i + 0);
                    Math.min(numCharacters2, i2 + 0);
                    textLineComponentArr2[i11] = textLineComponent2.applyJustificationDeltas(justify, iArr[i11] * 2, zArr);
                    z |= zArr[0];
                    if (i12 >= i2) {
                        break;
                    }
                }
                i11++;
            }
            i5 = (z && i5 == 0) ? 1 : i3;
            if (i5 == 0) {
                return new TextLine(this.frc, textLineComponentArr2, this.fBaselineOffsets, this.fChars, this.fCharsStart, this.fCharsLimit, this.fCharLogicalOrder, this.fCharLevels, this.fIsDirectionLTR);
            }
            i4 = i3;
        }
    }

    public LayoutPathImpl getLayoutPath() {
        return this.f97741lp;
    }

    public TextLineMetrics getMetrics() {
        return this.fMetrics;
    }

    public Shape getOutline(AffineTransform affineTransform) {
        GeneralPath generalPath = new GeneralPath(1);
        int i = 0;
        int i2 = 0;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i >= textLineComponentArr.length) {
                break;
            }
            TextLineComponent textLineComponent = textLineComponentArr[getComponentLogicalIndex(i)];
            float[] fArr = this.locs;
            generalPath.append(textLineComponent.getOutline(fArr[i2], fArr[i2 + 1]), false);
            i++;
            i2 += 2;
        }
        if (affineTransform != null) {
            generalPath.transform(affineTransform);
        }
        return generalPath;
    }

    public Rectangle getPixelBounds(FontRenderContext fontRenderContext, float f, float f2) {
        Rectangle rectangle = null;
        if (fontRenderContext != null && fontRenderContext.equals(this.frc)) {
            fontRenderContext = null;
        }
        int floor = (int) Math.floor(f);
        int floor2 = (int) Math.floor(f2);
        float f3 = f - floor;
        float f4 = f2 - floor2;
        boolean z = fontRenderContext == null && f3 == 0.0f && f4 == 0.0f;
        if (z && this.pixelBounds != null) {
            Rectangle rectangle2 = new Rectangle(this.pixelBounds);
            rectangle2.f97732x += floor;
            rectangle2.f97733y += floor2;
            return rectangle2;
        }
        if (this.isSimple) {
            int i = 0;
            int i2 = 0;
            while (true) {
                TextLineComponent[] textLineComponentArr = this.fComponents;
                if (i >= textLineComponentArr.length) {
                    break;
                }
                TextLineComponent textLineComponent = textLineComponentArr[getComponentLogicalIndex(i)];
                float[] fArr = this.locs;
                Rectangle pixelBounds = textLineComponent.getPixelBounds(fontRenderContext, fArr[i2] + f3, fArr[i2 + 1] + f4);
                if (!pixelBounds.isEmpty()) {
                    if (rectangle == null) {
                        rectangle = pixelBounds;
                    } else {
                        rectangle.add(pixelBounds);
                    }
                }
                i++;
                i2 += 2;
            }
            if (rectangle == null) {
                rectangle = new Rectangle(0, 0, 0, 0);
            }
        } else {
            Rectangle2D visualBounds = getVisualBounds();
            LayoutPathImpl layoutPathImpl = this.f97741lp;
            if (layoutPathImpl != null) {
                visualBounds = layoutPathImpl.mapShape(visualBounds).getBounds();
            }
            Rectangle bounds = visualBounds.getBounds();
            BufferedImage bufferedImage = new BufferedImage(bounds.width + 6, bounds.height + 6, 2);
            Graphics2D createGraphics = bufferedImage.createGraphics();
            createGraphics.setColor(Color.WHITE);
            createGraphics.fillRect(0, 0, bufferedImage.getWidth(), bufferedImage.getHeight());
            createGraphics.setColor(Color.BLACK);
            draw(createGraphics, (f3 + 3.0f) - bounds.f97732x, (f4 + 3.0f) - bounds.f97733y);
            rectangle = computePixelBounds(bufferedImage);
            rectangle.f97732x -= 3 - bounds.f97732x;
            rectangle.f97733y -= 3 - bounds.f97733y;
        }
        if (z) {
            this.pixelBounds = new Rectangle(rectangle);
        }
        rectangle.f97732x += floor;
        rectangle.f97733y += floor2;
        return rectangle;
    }

    public Rectangle2D getVisualBounds() {
        Rectangle2D rectangle2D = null;
        int i = 0;
        int i2 = 0;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i >= textLineComponentArr.length) {
                break;
            }
            TextLineComponent textLineComponent = textLineComponentArr[getComponentLogicalIndex(i)];
            Rectangle2D visualBounds = textLineComponent.getVisualBounds();
            float[] fArr = this.locs;
            Point2D.Float r5 = new Point2D.Float(fArr[i2], fArr[i2 + 1]);
            LayoutPathImpl layoutPathImpl = this.f97741lp;
            if (layoutPathImpl == null) {
                visualBounds.setRect(visualBounds.getMinX() + r5.f97777x, visualBounds.getMinY() + r5.f97778y, visualBounds.getWidth(), visualBounds.getHeight());
            } else {
                layoutPathImpl.pathToPoint((Point2D) r5, false, (Point2D) r5);
                AffineTransform baselineTransform = textLineComponent.getBaselineTransform();
                if (baselineTransform != null) {
                    AffineTransform translateInstance = AffineTransform.getTranslateInstance(r5.f97777x - baselineTransform.getTranslateX(), r5.f97778y - baselineTransform.getTranslateY());
                    translateInstance.concatenate(baselineTransform);
                    visualBounds = translateInstance.createTransformedShape(visualBounds).getBounds2D();
                } else {
                    visualBounds.setRect(visualBounds.getMinX() + r5.f97777x, visualBounds.getMinY() + r5.f97778y, visualBounds.getWidth(), visualBounds.getHeight());
                }
            }
            if (rectangle2D == null) {
                rectangle2D = visualBounds;
            } else {
                rectangle2D.add(visualBounds);
            }
            i++;
            i2 += 2;
        }
        return rectangle2D == null ? new Rectangle2D.Float(Float.MAX_VALUE, Float.MAX_VALUE, Float.MIN_VALUE, Float.MIN_VALUE) : rectangle2D;
    }

    public int hashCode() {
        TextLineComponent[] textLineComponentArr = this.fComponents;
        return ((textLineComponentArr[0].hashCode() << 3) ^ (textLineComponentArr.length << 16)) ^ (this.fCharsLimit - this.fCharsStart);
    }

    public boolean isCharLTR(int i) {
        return (getCharLevel(i) & 1) == 0;
    }

    public boolean isCharSpace(int i) {
        return Character.isSpaceChar(this.fChars[i + this.fCharsStart]);
    }

    public boolean isCharWhitespace(int i) {
        return Character.isWhitespace(this.fChars[i + this.fCharsStart]);
    }

    public boolean isDirectionLTR() {
        return this.fIsDirectionLTR;
    }

    public int logicalToVisual(int i) {
        int[] iArr = this.fCharLogicalOrder;
        return iArr == null ? i : iArr[i];
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            TextLineComponent[] textLineComponentArr = this.fComponents;
            if (i >= textLineComponentArr.length) {
                return sb.toString();
            }
            sb.append(textLineComponentArr[i]);
            i++;
        }
    }

    public int visualToLogical(int i) {
        int[] iArr = this.fCharLogicalOrder;
        if (iArr == null) {
            return i;
        }
        if (this.fCharVisualOrder == null) {
            this.fCharVisualOrder = BidiUtils.createInverseMap(iArr);
        }
        return this.fCharVisualOrder[i];
    }

    public float getCharLinePosition(int i, boolean z) {
        return applyFunctionAtIndex(i, isCharLTR(i) == z ? fgXPositionF : fgPosAdvF);
    }
}
