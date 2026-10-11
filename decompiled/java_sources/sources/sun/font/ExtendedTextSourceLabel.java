package sun.font;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphJustificationInfo;
import java.awt.font.TextAttribute;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.util.Map;
import sun.font.Decoration;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes16.dex */
public class ExtendedTextSourceLabel extends ExtendedTextLabel implements Decoration.Label {
    private static final int advx = 2;
    private static final int advy = 3;
    private static final int numvals = 8;
    private static final int posx = 0;
    private static final int posy = 1;
    private static final int vish = 7;
    private static final int visw = 6;
    private static final int visx = 4;
    private static final int visy = 5;

    /* renamed from: ab */
    Rectangle2D f116338ab;
    private AffineTransform baseTX;
    float[] charinfo;

    /* renamed from: cm */
    private CoreMetrics f116339cm;
    private Decoration decorator;
    private Font font;

    /* renamed from: gv */
    StandardGlyphVector f116340gv;

    /* renamed from: ib */
    Rectangle2D f116341ib;

    /* renamed from: lb */
    Rectangle2D f116342lb;
    TextSource source;

    /* renamed from: vb */
    Rectangle2D f116343vb;

    public ExtendedTextSourceLabel(TextSource textSource, Decoration decoration) {
        this.source = textSource;
        this.decorator = decoration;
        finishInit();
    }

    private void finishInit() {
        Font font = this.source.getFont();
        this.font = font;
        Map<TextAttribute, ?> attributes = font.getAttributes();
        AffineTransform baselineTransform = AttributeValues.getBaselineTransform(attributes);
        this.baseTX = baselineTransform;
        if (baselineTransform == null) {
            this.f116339cm = this.source.getCoreMetrics();
            return;
        }
        AffineTransform charTransform = AttributeValues.getCharTransform(attributes);
        if (charTransform == null) {
            charTransform = new AffineTransform();
        }
        Font deriveFont = this.font.deriveFont(charTransform);
        this.font = deriveFont;
        this.f116339cm = CoreMetrics.get(deriveFont.getLineMetrics(this.source.getChars(), this.source.getStart(), this.source.getStart() + this.source.getLength(), this.source.getFRC()));
    }

    private final float[] getCharinfo() {
        if (this.charinfo == null) {
            this.charinfo = createCharinfo();
        }
        return this.charinfo;
    }

    private final StandardGlyphVector getGV() {
        if (this.f116340gv == null) {
            this.f116340gv = createGV();
        }
        return this.f116340gv;
    }

    private void validate(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("index " + i + " < 0");
        }
        if (i < this.source.getLength()) {
            return;
        }
        throw new IllegalArgumentException("index " + i + CloudStorageConstants.OPERATION_LESS + this.source.getLength());
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public TextLineComponent applyJustificationDeltas(float[] fArr, int i, boolean[] zArr) {
        float[] fArr2 = (float[]) getCharinfo().clone();
        zArr[0] = false;
        StandardGlyphVector standardGlyphVector = (StandardGlyphVector) getGV().clone();
        float[] glyphPositions = standardGlyphVector.getGlyphPositions(null);
        int numGlyphs = standardGlyphVector.getNumGlyphs();
        char[] chars = this.source.getChars();
        int start = this.source.getStart();
        float f = 0.0f;
        for (int i2 = 0; i2 < numGlyphs; i2++) {
            if (Character.isWhitespace(chars[v2l(i2) + start])) {
                int i3 = i2 * 2;
                glyphPositions[i3] = glyphPositions[i3] + f;
                int i4 = i3 + i;
                float f2 = fArr[i4] + fArr[i4 + 1];
                int i5 = i2 * 8;
                int i6 = i5 + 0;
                fArr2[i6] = fArr2[i6] + f;
                int i7 = i5 + 4;
                fArr2[i7] = fArr2[i7] + f;
                int i8 = i5 + 2;
                fArr2[i8] = fArr2[i8] + f2;
                f += f2;
            } else {
                int i9 = i2 * 2;
                int i10 = i + i9;
                float f3 = f + fArr[i10];
                glyphPositions[i9] = glyphPositions[i9] + f3;
                int i11 = i2 * 8;
                int i12 = i11 + 0;
                fArr2[i12] = fArr2[i12] + f3;
                int i13 = i11 + 4;
                fArr2[i13] = fArr2[i13] + f3;
                f = f3 + fArr[i10 + 1];
            }
        }
        int i14 = numGlyphs * 2;
        glyphPositions[i14] = glyphPositions[i14] + f;
        standardGlyphVector.setGlyphPositions(glyphPositions);
        ExtendedTextSourceLabel extendedTextSourceLabel = new ExtendedTextSourceLabel(this.source, this.decorator);
        extendedTextSourceLabel.f116340gv = standardGlyphVector;
        extendedTextSourceLabel.charinfo = fArr2;
        return extendedTextSourceLabel;
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public boolean caretAtOffsetIsValid(int i) {
        char c;
        if (i == 0 || i == this.source.getLength() || (c = this.source.getChars()[this.source.getStart() + i]) == '\t' || c == '\n' || c == '\r') {
            return true;
        }
        int l2v = (l2v(i) * 8) + 2;
        float[] charinfo = getCharinfo();
        return (charinfo == null || l2v >= charinfo.length || charinfo[l2v] == 0.0f) ? false : true;
    }

    public Rectangle2D createAlignBounds() {
        float f;
        float[] charinfo = getCharinfo();
        CoreMetrics coreMetrics = this.f116339cm;
        float f2 = coreMetrics.ascent;
        float f3 = -f2;
        float f4 = f2 + coreMetrics.descent;
        float[] fArr = this.charinfo;
        float f5 = 0.0f;
        if (fArr == null || fArr.length == 0) {
            return new Rectangle2D.Float(0.0f, f3, 0.0f, f4);
        }
        boolean z = (this.source.getLayoutFlags() & 8) == 0;
        int length = charinfo.length - 8;
        if (z) {
            while (length > 0 && charinfo[length + 6] == 0.0f) {
                length -= 8;
            }
        }
        if (length >= 0) {
            int i = 0;
            while (i < length && (charinfo[i + 2] == 0.0f || (!z && charinfo[i + 6] == 0.0f))) {
                i += 8;
            }
            f5 = Math.max(0.0f, charinfo[i + 0]);
            f = (charinfo[length + 0] + charinfo[length + 2]) - f5;
        } else {
            f = 0.0f;
        }
        return new Rectangle2D.Float(f5, f3, f, f4);
    }

    public float[] createCharinfo() {
        float[] fArr;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        int i7;
        boolean z2;
        int i8;
        float f;
        boolean z3;
        boolean z4;
        int i9;
        float f2;
        float f3;
        float f4;
        float f5;
        int i10;
        float f6;
        float f7;
        float f8;
        StandardGlyphVector gv = getGV();
        try {
            fArr = gv.getGlyphInfo();
        } catch (Exception e) {
            System.out.println(this.source);
            e.printStackTrace();
            fArr = null;
        }
        int numGlyphs = gv.getNumGlyphs();
        if (numGlyphs == 0) {
            return fArr;
        }
        int i11 = 0;
        int[] glyphCharIndices = gv.getGlyphCharIndices(0, numGlyphs, null);
        int i12 = glyphCharIndices[0];
        boolean z5 = (this.source.getLayoutFlags() & 1) == 0;
        if (z5) {
            i = 1;
            i2 = 0;
            i3 = 0;
            i4 = 8;
            i5 = numGlyphs;
            i6 = 0;
        } else {
            i6 = numGlyphs - 1;
            int i13 = glyphCharIndices[i6];
            int length = fArr.length - 8;
            i5 = -1;
            i4 = -8;
            i3 = fArr.length - 8;
            i2 = length;
            i = -1;
        }
        float f9 = 0.0f;
        boolean z6 = false;
        int i14 = 0;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        while (i6 != i5) {
            int i15 = glyphCharIndices[i6];
            i6 += i;
            i3 += i4;
            int i16 = i11;
            int i17 = i16;
            int i18 = i15;
            int i19 = i18;
            while (true) {
                if (i6 == i5) {
                    z = z5;
                    i7 = i5;
                    z2 = z6;
                    i8 = i16;
                    break;
                }
                float f16 = fArr[i3 + 2];
                if (f16 != f9 && i18 == i14 && glyphCharIndices[i6] > i19) {
                    i7 = i5;
                    i8 = i16;
                    if (i19 - i18 <= i8) {
                        z = z5;
                        z2 = z6;
                        break;
                    }
                } else {
                    i7 = i5;
                    i8 = i16;
                }
                if (i17 == 0) {
                    int i20 = i3 - i4;
                    f10 = fArr[i20 + 0];
                    f11 = fArr[i20 + 2] + f10;
                    float f17 = fArr[i20 + 4];
                    float f18 = fArr[i20 + 5];
                    float f19 = f17 + fArr[i20 + 6];
                    float f20 = f18 + fArr[i20 + 7];
                    z3 = z5;
                    z4 = z6;
                    i9 = i14;
                    f2 = f17;
                    f3 = f18;
                    f4 = f19;
                    f5 = f20;
                    i17 = 1;
                } else {
                    z3 = z5;
                    z4 = z6;
                    i9 = i14;
                    f2 = f12;
                    f3 = f13;
                    f4 = f14;
                    f5 = f15;
                }
                int i21 = i8 + 1;
                if (f16 != 0.0f) {
                    i10 = i21;
                    float f21 = fArr[i3 + 0];
                    f10 = Math.min(f10, f21);
                    f11 = Math.max(f11, f21 + f16);
                } else {
                    i10 = i21;
                }
                float f22 = fArr[i3 + 6];
                if (f22 != 0.0f) {
                    f6 = f10;
                    float f23 = fArr[i3 + 4];
                    f7 = f11;
                    float f24 = fArr[i3 + 5];
                    float min = Math.min(f2, f23);
                    f3 = Math.min(f3, f24);
                    f8 = Math.max(f4, f23 + f22);
                    f5 = Math.max(f5, f24 + fArr[i3 + 7]);
                    f12 = min;
                } else {
                    f6 = f10;
                    f7 = f11;
                    f12 = f2;
                    f8 = f4;
                }
                i18 = Math.min(i18, glyphCharIndices[i6]);
                i19 = Math.max(i19, glyphCharIndices[i6]);
                i6 += i;
                i3 += i4;
                f10 = f6;
                f11 = f7;
                z6 = z4;
                f9 = 0.0f;
                f15 = f5;
                f14 = f8;
                i5 = i7;
                z5 = z3;
                int i22 = i10;
                f13 = f3;
                i14 = i9;
                i16 = i22;
            }
            i14 = i19 + 1;
            fArr[i2 + 1] = 0.0f;
            fArr[i2 + 3] = 0.0f;
            if (i17 != 0) {
                fArr[i2 + 0] = f10;
                fArr[i2 + 2] = f11 - f10;
                fArr[i2 + 4] = f12;
                fArr[i2 + 5] = f13;
                float f25 = f14 - f12;
                fArr[i2 + 6] = f25;
                float f26 = f15 - f13;
                fArr[i2 + 7] = f26;
                if (i19 - i18 < i8) {
                    z2 = true;
                }
                if (i18 < i19) {
                    if (!z) {
                        f11 = f10;
                    }
                    int i23 = i2 / 8;
                    while (i18 < i19) {
                        i18++;
                        i2 += i4;
                        if (i2 >= 0) {
                            int length2 = fArr.length;
                        }
                        fArr[i2 + 0] = f11;
                        fArr[i2 + 1] = 0.0f;
                        fArr[i2 + 2] = 0.0f;
                        fArr[i2 + 3] = 0.0f;
                        fArr[i2 + 4] = f12;
                        fArr[i2 + 5] = f13;
                        fArr[i2 + 6] = f25;
                        fArr[i2 + 7] = f26;
                    }
                    f = 0.0f;
                    f14 = f25;
                    f15 = f26;
                } else {
                    f = 0.0f;
                }
            } else {
                f = 0.0f;
                if (z2) {
                    int i24 = i3 - i4;
                    fArr[i2 + 0] = fArr[i24 + 0];
                    fArr[i2 + 2] = fArr[i24 + 2];
                    fArr[i2 + 4] = fArr[i24 + 4];
                    fArr[i2 + 5] = fArr[i24 + 5];
                    fArr[i2 + 6] = fArr[i24 + 6];
                    fArr[i2 + 7] = fArr[i24 + 7];
                }
            }
            z6 = z2;
            i2 += i4;
            f9 = f;
            i5 = i7;
            z5 = z;
            i11 = 0;
        }
        boolean z7 = z5;
        if (z6 && !z7) {
            int i25 = i2 - i4;
            System.arraycopy(fArr, i25, fArr, 0, fArr.length - i25);
        }
        return fArr;
    }

    public StandardGlyphVector createGV() {
        FontRenderContext frc = this.source.getFRC();
        int layoutFlags = this.source.getLayoutFlags();
        char[] chars = this.source.getChars();
        int start = this.source.getStart();
        int length = this.source.getLength();
        GlyphLayout glyphLayout = GlyphLayout.get(null);
        this.f116340gv = glyphLayout.layout(this.font, frc, chars, start, length, layoutFlags, null);
        GlyphLayout.done(glyphLayout);
        return this.f116340gv;
    }

    public Rectangle2D createItalicBounds() {
        float f;
        float f2 = this.f116339cm.italicAngle;
        Rectangle2D logicalBounds = getLogicalBounds();
        float minX = (float) logicalBounds.getMinX();
        float f3 = -this.f116339cm.ascent;
        float maxX = (float) logicalBounds.getMaxX();
        CoreMetrics coreMetrics = this.f116339cm;
        float f4 = coreMetrics.descent;
        if (f2 != 0.0f) {
            if (f2 > 0.0f) {
                float f5 = coreMetrics.ssOffset;
                minX -= (f4 - f5) * f2;
                f = f3 - f5;
            } else {
                float f6 = coreMetrics.ssOffset;
                minX -= (f3 - f6) * f2;
                f = f4 - f6;
            }
            maxX -= f2 * f;
        }
        return new Rectangle2D.Float(minX, f3, maxX - minX, f4 - f3);
    }

    public Rectangle2D createLogicalBounds() {
        return getGV().getLogicalBounds();
    }

    @Override // sun.font.TextLabel, sun.font.TextLineComponent
    public void draw(Graphics2D graphics2D, float f, float f2) {
        this.decorator.drawTextAndDecorations(this, graphics2D, f, f2);
    }

    @Override // sun.font.TextLineComponent
    public float getAdvance() {
        if (this.f116342lb == null) {
            this.f116342lb = createLogicalBounds();
        }
        return (float) this.f116342lb.getWidth();
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public float getAdvanceBetween(int i, int i2) {
        int l2v;
        float[] charinfo = getCharinfo();
        int i3 = i - 1;
        float f = 0.0f;
        while (true) {
            i3++;
            if (i3 >= i2 || (l2v = (l2v(i3) * 8) + 2) >= charinfo.length) {
                break;
            }
            f += charinfo[l2v];
        }
        return f;
    }

    @Override // sun.font.TextLabel
    public Rectangle2D getAlignBounds(float f, float f2) {
        if (this.f116338ab == null) {
            this.f116338ab = createAlignBounds();
        }
        return new Rectangle2D.Float((float) (this.f116338ab.getX() + f), (float) (this.f116338ab.getY() + f2), (float) this.f116338ab.getWidth(), (float) this.f116338ab.getHeight());
    }

    @Override // sun.font.TextLineComponent
    public AffineTransform getBaselineTransform() {
        return this.baseTX;
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public float getCharAdvance(int i) {
        validate(i);
        float[] charinfo = getCharinfo();
        int l2v = (l2v(i) * 8) + 2;
        if (charinfo == null || l2v >= charinfo.length) {
            return 0.0f;
        }
        return charinfo[l2v];
    }

    @Override // sun.font.ExtendedTextLabel
    public Rectangle2D getCharVisualBounds(int i, float f, float f2) {
        Rectangle2D charVisualBounds = this.decorator.getCharVisualBounds(this, i);
        if (f != 0.0f || f2 != 0.0f) {
            charVisualBounds.setRect(charVisualBounds.getX() + f, charVisualBounds.getY() + f2, charVisualBounds.getWidth(), charVisualBounds.getHeight());
        }
        return charVisualBounds;
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public float getCharX(int i) {
        validate(i);
        float[] charinfo = getCharinfo();
        int l2v = (l2v(i) * 8) + 0;
        if (charinfo == null || l2v >= charinfo.length) {
            return 0.0f;
        }
        return charinfo[l2v];
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public float getCharY(int i) {
        validate(i);
        float[] charinfo = getCharinfo();
        int l2v = (l2v(i) * 8) + 1;
        if (charinfo == null || l2v >= charinfo.length) {
            return 0.0f;
        }
        return charinfo[l2v];
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public CoreMetrics getCoreMetrics() {
        return this.f116339cm;
    }

    @Override // sun.font.TextLabel
    public Rectangle2D getItalicBounds(float f, float f2) {
        if (this.f116341ib == null) {
            this.f116341ib = createItalicBounds();
        }
        return new Rectangle2D.Float((float) (this.f116341ib.getX() + f), (float) (this.f116341ib.getY() + f2), (float) this.f116341ib.getWidth(), (float) this.f116341ib.getHeight());
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public void getJustificationInfos(GlyphJustificationInfo[] glyphJustificationInfoArr, int i, int i2, int i3) {
        int i4;
        int i5;
        GlyphJustificationInfo glyphJustificationInfo;
        StandardGlyphVector gv = getGV();
        float[] charinfo = getCharinfo();
        float size2D = gv.getFont().getSize2D();
        GlyphJustificationInfo glyphJustificationInfo2 = new GlyphJustificationInfo(0.0f, false, 3, 0.0f, 0.0f, false, 3, 0.0f, 0.0f);
        GlyphJustificationInfo glyphJustificationInfo3 = new GlyphJustificationInfo(size2D, true, 1, 0.0f, size2D, true, 1, 0.0f, size2D / 4.0f);
        GlyphJustificationInfo glyphJustificationInfo4 = new GlyphJustificationInfo(size2D, true, 2, size2D, size2D, false, 3, 0.0f, 0.0f);
        char[] chars = this.source.getChars();
        int start = this.source.getStart();
        int numGlyphs = gv.getNumGlyphs();
        boolean z = (this.source.getLayoutFlags() & 1) == 0;
        if (i2 == 0 && i3 == this.source.getLength()) {
            i5 = numGlyphs;
            i4 = 0;
        } else if (z) {
            i5 = i3;
            i4 = i2;
        } else {
            i4 = numGlyphs - i3;
            i5 = numGlyphs - i2;
        }
        for (int i6 = 0; i6 < numGlyphs; i6++) {
            if (i6 < i4 || i6 >= i5) {
                glyphJustificationInfo = null;
            } else {
                if (charinfo[(i6 * 8) + 2] != 0.0f) {
                    char c = chars[v2l(i6) + start];
                    if (Character.isWhitespace(c)) {
                        glyphJustificationInfo = glyphJustificationInfo3;
                    } else if ((c >= 19968 && c < 40960) || ((c >= 44032 && c < 55216) || (c >= 63744 && c < 64256))) {
                        glyphJustificationInfo = glyphJustificationInfo4;
                    }
                }
                glyphJustificationInfo = glyphJustificationInfo2;
            }
            glyphJustificationInfoArr[i + i6] = glyphJustificationInfo;
        }
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public int getLineBreakIndex(int i, float f) {
        int l2v;
        float[] charinfo = getCharinfo();
        int length = this.source.getLength();
        int i2 = i - 1;
        while (f >= 0.0f && (i2 = i2 + 1) < length && (l2v = (l2v(i2) * 8) + 2) < charinfo.length) {
            f -= charinfo[l2v];
        }
        return i2;
    }

    @Override // sun.font.TextLabel, sun.font.TextLineComponent, sun.font.Decoration.Label
    public Rectangle2D getLogicalBounds() {
        return getLogicalBounds(0.0f, 0.0f);
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public int getNumCharacters() {
        return this.source.getLength();
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public int getNumJustificationInfos() {
        return getGV().getNumGlyphs();
    }

    @Override // sun.font.TextLabel, sun.font.TextLineComponent
    public Shape getOutline(float f, float f2) {
        return this.decorator.getOutline(this, f, f2);
    }

    @Override // sun.font.TextLineComponent
    public Rectangle getPixelBounds(FontRenderContext fontRenderContext, float f, float f2) {
        return getGV().getPixelBounds(fontRenderContext, f, f2);
    }

    @Override // sun.font.ExtendedTextLabel, sun.font.TextLineComponent
    public TextLineComponent getSubset(int i, int i2, int i3) {
        return new ExtendedTextSourceLabel(this.source.getSubSource(i, i2 - i, i3), this.decorator);
    }

    @Override // sun.font.TextLabel
    public Rectangle2D getVisualBounds(float f, float f2) {
        if (this.f116343vb == null) {
            this.f116343vb = this.decorator.getVisualBounds(this);
        }
        return new Rectangle2D.Float((float) (this.f116343vb.getX() + f), (float) (this.f116343vb.getY() + f2), (float) this.f116343vb.getWidth(), (float) this.f116343vb.getHeight());
    }

    @Override // sun.font.Decoration.Label
    public void handleDraw(Graphics2D graphics2D, float f, float f2) {
        graphics2D.drawGlyphVector(getGV(), f, f2);
    }

    @Override // sun.font.Decoration.Label
    public Rectangle2D handleGetCharVisualBounds(int i) {
        int i2;
        validate(i);
        float[] charinfo = getCharinfo();
        int l2v = l2v(i) * 8;
        return (charinfo == null || (i2 = l2v + 7) >= charinfo.length) ? new Rectangle2D.Float() : new Rectangle2D.Float(charinfo[l2v + 4], charinfo[l2v + 5], charinfo[l2v + 6], charinfo[i2]);
    }

    @Override // sun.font.Decoration.Label
    public Shape handleGetOutline(float f, float f2) {
        return getGV().getOutline(f, f2);
    }

    @Override // sun.font.Decoration.Label
    public Rectangle2D handleGetVisualBounds() {
        return getGV().getVisualBounds();
    }

    @Override // sun.font.TextLineComponent
    public boolean isSimple() {
        return this.decorator == Decoration.getPlainDecoration() && this.baseTX == null;
    }

    public int l2v(int i) {
        return (this.source.getLayoutFlags() & 1) == 0 ? i : (this.source.getLength() - 1) - i;
    }

    @Override // sun.font.ExtendedTextLabel
    public int logicalToVisual(int i) {
        validate(i);
        return l2v(i);
    }

    public String toString() {
        return this.source.toString(false);
    }

    public int v2l(int i) {
        return (this.source.getLayoutFlags() & 1) == 0 ? i : (this.source.getLength() - 1) - i;
    }

    @Override // sun.font.ExtendedTextLabel
    public int visualToLogical(int i) {
        validate(i);
        return v2l(i);
    }

    @Override // sun.font.TextLabel
    public Rectangle2D getLogicalBounds(float f, float f2) {
        if (this.f116342lb == null) {
            this.f116342lb = createLogicalBounds();
        }
        return new Rectangle2D.Float((float) (this.f116342lb.getX() + f), (float) (this.f116342lb.getY() + f2), (float) this.f116342lb.getWidth(), (float) this.f116342lb.getHeight());
    }

    public ExtendedTextSourceLabel(TextSource textSource, ExtendedTextSourceLabel extendedTextSourceLabel, int i) {
        this.source = textSource;
        this.decorator = extendedTextSourceLabel.decorator;
        finishInit();
    }
}
