package sun.font;

import java.awt.Font;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphJustificationInfo;
import java.awt.font.GlyphMetrics;
import java.awt.font.GlyphVector;
import java.awt.font.LineMetrics;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.lang.ref.SoftReference;
import java.text.CharacterIterator;
import org.apache.commons.collections4.IteratorUtils;
import sun.java2d.loops.FontInfo;

/* loaded from: classes16.dex */
public class StandardGlyphVector extends GlyphVector {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int FLAG_USES_ALTERNATE_ORIENTATION = 512;
    public static final int FLAG_USES_VERTICAL_BASELINE = 128;
    public static final int FLAG_USES_VERTICAL_METRICS = 256;
    private static final int UNINITIALIZED_FLAGS = -1;
    private int[] charIndices;
    private AffineTransform dtx;
    private int flags;
    private Font font;
    private Font2D font2D;
    private FontRenderContext frc;
    private AffineTransform frctx;
    private SoftReference<GlyphStrike> fsref;
    private AffineTransform ftx;
    private int[] glyphs;
    private GlyphTransformInfo gti;
    private AffineTransform invdtx;
    private SoftReference<Shape[]> lbcacheRef;
    private float[] positions;
    private int[] userGlyphs;
    private SoftReference<Shape[]> vbcacheRef;

    /* loaded from: classes16.dex */
    public static class ADL {
        public float ascentX;
        public float ascentY;
        public float descentX;
        public float descentY;
        public float leadingX;
        public float leadingY;

        public String toString() {
            return toStringBuffer(null).toString();
        }

        public StringBuffer toStringBuffer(StringBuffer stringBuffer) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            stringBuffer.append("ax: ");
            stringBuffer.append(this.ascentX);
            stringBuffer.append(" ay: ");
            stringBuffer.append(this.ascentY);
            stringBuffer.append(" dx: ");
            stringBuffer.append(this.descentX);
            stringBuffer.append(" dy: ");
            stringBuffer.append(this.descentY);
            stringBuffer.append(" lx: ");
            stringBuffer.append(this.leadingX);
            stringBuffer.append(" ly: ");
            stringBuffer.append(this.leadingY);
            return stringBuffer;
        }
    }

    /* loaded from: classes16.dex */
    public static final class GlyphStrike {

        /* renamed from: dx */
        float f116367dx;

        /* renamed from: dy */
        float f116368dy;
        StandardGlyphVector sgv;
        FontStrike strike;

        private GlyphStrike(StandardGlyphVector standardGlyphVector, FontStrike fontStrike, float f, float f2) {
            this.sgv = standardGlyphVector;
            this.strike = fontStrike;
            this.f116367dx = f;
            this.f116368dy = f2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v1, types: [sun.font.Font2D] */
        public static GlyphStrike create(StandardGlyphVector standardGlyphVector, AffineTransform affineTransform, AffineTransform affineTransform2) {
            float f;
            AffineTransform affineTransform3;
            int i;
            double abs;
            AffineTransform affineTransform4 = standardGlyphVector.ftx;
            float f2 = 0.0f;
            if (affineTransform.isIdentity() && affineTransform2 == null) {
                affineTransform3 = affineTransform4;
                f = 0.0f;
            } else {
                AffineTransform affineTransform5 = new AffineTransform(standardGlyphVector.ftx);
                if (affineTransform2 != null) {
                    affineTransform5.preConcatenate(affineTransform2);
                    f2 = (float) affineTransform5.getTranslateX();
                    f = (float) affineTransform5.getTranslateY();
                } else {
                    f = 0.0f;
                }
                if (!affineTransform.isIdentity()) {
                    affineTransform5.preConcatenate(affineTransform);
                }
                affineTransform3 = affineTransform5;
            }
            Object antiAliasingHint = standardGlyphVector.frc.getAntiAliasingHint();
            if (antiAliasingHint != RenderingHints.VALUE_TEXT_ANTIALIAS_GASP || affineTransform3.isIdentity() || (affineTransform3.getType() & (-2)) == 0) {
                i = 1;
            } else {
                double shearX = affineTransform3.getShearX();
                if (shearX != 0.0d) {
                    double scaleY = affineTransform3.getScaleY();
                    abs = Math.sqrt((shearX * shearX) + (scaleY * scaleY));
                } else {
                    abs = Math.abs(affineTransform3.getScaleY());
                }
                i = (int) abs;
            }
            FontStrikeDesc fontStrikeDesc = new FontStrikeDesc(affineTransform, affineTransform3, standardGlyphVector.font.getStyle(), FontStrikeDesc.getAAHintIntVal(antiAliasingHint, standardGlyphVector.font2D, i), FontStrikeDesc.getFMHintIntVal(standardGlyphVector.frc.getFractionalMetricsHint()));
            ?? r10 = standardGlyphVector.font2D;
            boolean z = r10 instanceof FontSubstitution;
            CompositeFont compositeFont = r10;
            if (z) {
                compositeFont = ((FontSubstitution) r10).getCompositeFont2D();
            }
            return new GlyphStrike(standardGlyphVector, compositeFont.handle.font2D.getStrike(fontStrikeDesc), f2, f);
        }

        public void addDefaultGlyphAdvance(int i, Point2D.Float r5) {
            Point2D.Float glyphMetrics = this.strike.getGlyphMetrics(i);
            r5.f97777x += glyphMetrics.f97777x + this.f116367dx;
            r5.f97778y += glyphMetrics.f97778y + this.f116368dy;
        }

        public void appendGlyphOutline(int i, GeneralPath generalPath, float f, float f2) {
            GeneralPath generalPath2;
            if (this.sgv.invdtx == null) {
                generalPath2 = this.strike.getGlyphOutline(i, f + this.f116367dx, f2 + this.f116368dy);
            } else {
                GeneralPath glyphOutline = this.strike.getGlyphOutline(i, 0.0f, 0.0f);
                glyphOutline.transform(this.sgv.invdtx);
                glyphOutline.transform(AffineTransform.getTranslateInstance(f + this.f116367dx, f2 + this.f116368dy));
                generalPath2 = glyphOutline;
            }
            generalPath.append(generalPath2.getPathIterator(null), false);
        }

        public void getADL(ADL adl) {
            StrikeMetrics fontMetrics = this.strike.getFontMetrics();
            if (this.sgv.font.isTransformed()) {
                Point2D.Float r1 = new Point2D.Float();
                r1.f97777x = (float) this.sgv.font.getTransform().getTranslateX();
                r1.f97778y = (float) this.sgv.font.getTransform().getTranslateY();
            }
            adl.ascentX = -fontMetrics.ascentX;
            adl.ascentY = -fontMetrics.ascentY;
            adl.descentX = fontMetrics.descentX;
            adl.descentY = fontMetrics.descentY;
            adl.leadingX = fontMetrics.leadingX;
            adl.leadingY = fontMetrics.leadingY;
        }

        public Rectangle2D getGlyphOutlineBounds(int i, float f, float f2) {
            Rectangle2D bounds2D;
            if (this.sgv.invdtx == null) {
                bounds2D = new Rectangle2D.Float();
                bounds2D.setRect(this.strike.getGlyphOutlineBounds(i));
            } else {
                GeneralPath glyphOutline = this.strike.getGlyphOutline(i, 0.0f, 0.0f);
                glyphOutline.transform(this.sgv.invdtx);
                bounds2D = glyphOutline.getBounds2D();
            }
            if (!bounds2D.isEmpty()) {
                bounds2D.setRect(bounds2D.getMinX() + f + this.f116367dx, this.f116368dy + bounds2D.getMinY() + f2, bounds2D.getWidth(), bounds2D.getHeight());
            }
            return bounds2D;
        }

        public void getGlyphPosition(int i, int i2, float[] fArr, float[] fArr2) {
            fArr2[i2] = fArr[i2] + this.f116367dx;
            int i3 = i2 + 1;
            fArr2[i3] = fArr[i3] + this.f116368dy;
        }
    }

    public StandardGlyphVector(Font font, String str, FontRenderContext fontRenderContext) {
        init(font, str.toCharArray(), 0, str.length(), fontRenderContext, -1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addFlags(int i) {
        this.flags = i | getLayoutFlags();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearCaches(int i) {
        Shape[] shapeArr;
        Shape[] shapeArr2;
        SoftReference<Shape[]> softReference = this.lbcacheRef;
        if (softReference != null && (shapeArr2 = softReference.get()) != null) {
            shapeArr2[i] = null;
        }
        SoftReference<Shape[]> softReference2 = this.vbcacheRef;
        if (softReference2 == null || (shapeArr = softReference2.get()) == null) {
            return;
        }
        shapeArr[i] = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearFlags(int i) {
        this.flags = (~i) & getLayoutFlags();
    }

    private static boolean equalNonTranslateTX(AffineTransform affineTransform, AffineTransform affineTransform2) {
        return affineTransform.getScaleX() == affineTransform2.getScaleX() && affineTransform.getShearY() == affineTransform2.getShearY() && affineTransform.getShearX() == affineTransform2.getShearX() && affineTransform.getScaleY() == affineTransform2.getScaleY();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public GlyphStrike getDefaultStrike() {
        SoftReference<GlyphStrike> softReference = this.fsref;
        GlyphStrike glyphStrike = softReference != null ? softReference.get() : null;
        if (glyphStrike != null) {
            return glyphStrike;
        }
        GlyphStrike create = GlyphStrike.create(this, this.dtx, null);
        this.fsref = new SoftReference<>(create);
        return create;
    }

    private Rectangle2D getGlyphOutlineBounds(int i) {
        setFRCTX();
        initPositions();
        GlyphStrike glyphStrike = getGlyphStrike(i);
        int i2 = this.glyphs[i];
        float[] fArr = this.positions;
        int i3 = i * 2;
        return glyphStrike.getGlyphOutlineBounds(i2, fArr[i3], fArr[i3 + 1]);
    }

    private GlyphStrike getGlyphStrike(int i) {
        GlyphTransformInfo glyphTransformInfo = this.gti;
        return glyphTransformInfo == null ? getDefaultStrike() : glyphTransformInfo.getStrike(i);
    }

    private Shape getGlyphsOutline(int i, int i2, float f, float f2) {
        setFRCTX();
        initPositions();
        GeneralPath generalPath = new GeneralPath(1);
        int i3 = i2 + i;
        int i4 = i * 2;
        while (i < i3) {
            float[] fArr = this.positions;
            getGlyphStrike(i).appendGlyphOutline(this.glyphs[i], generalPath, fArr[i4] + f, fArr[i4 + 1] + f2);
            i++;
            i4 += 2;
        }
        return generalPath;
    }

    private Rectangle getGlyphsPixelBounds(FontRenderContext fontRenderContext, float f, float f2, int i, int i2) {
        initPositions();
        AffineTransform transform = (fontRenderContext == null || fontRenderContext.equals(this.frc)) ? this.frctx : fontRenderContext.getTransform();
        setDTX(transform);
        GlyphTransformInfo glyphTransformInfo = this.gti;
        if (glyphTransformInfo != null) {
            return glyphTransformInfo.getGlyphsPixelBounds(transform, f, f2, i, i2);
        }
        FontStrike fontStrike = getDefaultStrike().strike;
        Rectangle rectangle = new Rectangle();
        Point2D.Float r2 = new Point2D.Float();
        int i3 = i * 2;
        Rectangle rectangle2 = null;
        while (true) {
            i2--;
            if (i2 < 0) {
                break;
            }
            float[] fArr = this.positions;
            int i4 = i3 + 1;
            r2.f97777x = fArr[i3] + f;
            i3 = i4 + 1;
            r2.f97778y = fArr[i4] + f2;
            transform.transform(r2, r2);
            int i5 = i + 1;
            fontStrike.getGlyphImageBounds(this.glyphs[i], r2, rectangle);
            if (!rectangle.isEmpty()) {
                if (rectangle2 == null) {
                    rectangle2 = new Rectangle(rectangle);
                } else {
                    rectangle2.add(rectangle);
                }
            }
            i = i5;
        }
        return rectangle2 != null ? rectangle2 : rectangle;
    }

    private static AffineTransform getNonTranslateTX(AffineTransform affineTransform) {
        return (affineTransform.getTranslateX() == 0.0d && affineTransform.getTranslateY() == 0.0d) ? affineTransform : new AffineTransform(affineTransform.getScaleX(), affineTransform.getShearY(), affineTransform.getShearX(), affineTransform.getScaleY(), 0.0d, 0.0d);
    }

    public static StandardGlyphVector getStandardGV(GlyphVector glyphVector, FontInfo fontInfo) {
        Object antiAliasingHint;
        Object obj;
        if (fontInfo.aaHint != 2 || (antiAliasingHint = glyphVector.getFontRenderContext().getAntiAliasingHint()) == (obj = RenderingHints.VALUE_TEXT_ANTIALIAS_ON) || antiAliasingHint == RenderingHints.VALUE_TEXT_ANTIALIAS_GASP) {
            return glyphVector instanceof StandardGlyphVector ? (StandardGlyphVector) glyphVector : new StandardGlyphVector(glyphVector, glyphVector.getFontRenderContext());
        }
        FontRenderContext fontRenderContext = glyphVector.getFontRenderContext();
        return new StandardGlyphVector(glyphVector, new FontRenderContext(fontRenderContext.getTransform(), obj, fontRenderContext.getFractionalMetricsHint()));
    }

    private float getTracking(Font font) {
        if (font.hasLayoutAttributes()) {
            return ((AttributeMap) font.getAttributes()).getValues().getTracking();
        }
        return 0.0f;
    }

    private void init(Font font, char[] cArr, int i, int i2, FontRenderContext fontRenderContext, int i3) {
        if (i < 0 || i2 < 0 || i + i2 > cArr.length) {
            throw new ArrayIndexOutOfBoundsException("start or count out of bounds");
        }
        this.font = font;
        this.frc = fontRenderContext;
        this.flags = i3;
        if (getTracking(font) != 0.0f) {
            addFlags(2);
        }
        if (i != 0) {
            char[] cArr2 = new char[i2];
            System.arraycopy(cArr, i, cArr2, 0, i2);
            cArr = cArr2;
        }
        initFontData();
        int[] iArr = new int[i2];
        this.glyphs = iArr;
        this.userGlyphs = iArr;
        this.font2D.getMapper().charsToGlyphs(i2, cArr, this.glyphs);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void initFontData() {
        Font2D font2D = FontUtilities.getFont2D(this.font);
        this.font2D = font2D;
        if (font2D instanceof FontSubstitution) {
            this.font2D = ((FontSubstitution) font2D).getCompositeFont2D();
        }
        float size2D = this.font.getSize2D();
        if (this.font.isTransformed()) {
            AffineTransform transform = this.font.getTransform();
            this.ftx = transform;
            if (transform.getTranslateX() != 0.0d || this.ftx.getTranslateY() != 0.0d) {
                addFlags(2);
            }
            AffineTransform affineTransform = this.ftx;
            affineTransform.setTransform(affineTransform.getScaleX(), this.ftx.getShearY(), this.ftx.getShearX(), this.ftx.getScaleY(), 0.0d, 0.0d);
            double d = size2D;
            this.ftx.scale(d, d);
        } else {
            double d2 = size2D;
            this.ftx = AffineTransform.getScaleInstance(d2, d2);
        }
        AffineTransform transform2 = this.frc.getTransform();
        this.frctx = transform2;
        resetDTX(getNonTranslateTX(transform2));
    }

    private void initPositions() {
        if (this.positions == null) {
            setFRCTX();
            this.positions = new float[(this.glyphs.length * 2) + 2];
            float tracking = getTracking(this.font);
            Point2D.Float r3 = tracking != 0.0f ? new Point2D.Float(tracking * this.font.getSize2D(), 0.0f) : null;
            Point2D.Float r0 = new Point2D.Float(0.0f, 0.0f);
            int i = 0;
            if (this.font.isTransformed()) {
                AffineTransform transform = this.font.getTransform();
                transform.transform(r0, r0);
                float[] fArr = this.positions;
                fArr[0] = r0.f97777x;
                fArr[1] = r0.f97778y;
                if (r3 != null) {
                    transform.deltaTransform(r3, r3);
                }
            }
            int i2 = 2;
            while (i < this.glyphs.length) {
                getGlyphStrike(i).addDefaultGlyphAdvance(this.glyphs[i], r0);
                if (r3 != null) {
                    r0.f97777x += r3.f97777x;
                    r0.f97778y += r3.f97778y;
                }
                float[] fArr2 = this.positions;
                fArr2[i2] = r0.f97777x;
                fArr2[i2 + 1] = r0.f97778y;
                i++;
                i2 += 2;
            }
        }
    }

    private float[] internalGetGlyphPositions(int i, int i2, int i3, float[] fArr) {
        if (fArr == null) {
            fArr = new float[(i2 * 2) + i3];
        }
        initPositions();
        int i4 = (i2 * 2) + i3;
        int i5 = i * 2;
        while (i3 < i4) {
            fArr[i3] = this.positions[i5];
            i3++;
            i5++;
        }
        return fArr;
    }

    private static boolean matchTX(double[] dArr, AffineTransform affineTransform) {
        return dArr[0] == affineTransform.getScaleX() && dArr[1] == affineTransform.getShearY() && dArr[2] == affineTransform.getShearX() && dArr[3] == affineTransform.getScaleY();
    }

    private void resetDTX(AffineTransform affineTransform) {
        this.fsref = null;
        this.dtx = affineTransform;
        this.invdtx = null;
        if (!affineTransform.isIdentity()) {
            try {
                this.invdtx = this.dtx.createInverse();
            } catch (NoninvertibleTransformException unused) {
            }
        }
        GlyphTransformInfo glyphTransformInfo = this.gti;
        if (glyphTransformInfo != null) {
            glyphTransformInfo.strikesRef = null;
        }
    }

    private void setDTX(AffineTransform affineTransform) {
        if (equalNonTranslateTX(this.dtx, affineTransform)) {
            return;
        }
        resetDTX(getNonTranslateTX(affineTransform));
    }

    private void setFRCTX() {
        if (equalNonTranslateTX(this.frctx, this.dtx)) {
            return;
        }
        resetDTX(getNonTranslateTX(this.frctx));
    }

    private void setRenderTransform(double[] dArr) {
        if (matchTX(dArr, this.dtx)) {
            return;
        }
        resetDTX(new AffineTransform(dArr));
    }

    public StringBuffer appendString(StringBuffer stringBuffer) {
        if (stringBuffer == null) {
            stringBuffer = new StringBuffer();
        }
        try {
            stringBuffer.append("SGV{font: ");
            stringBuffer.append(this.font.toString());
            stringBuffer.append(", frc: ");
            stringBuffer.append(this.frc.toString());
            stringBuffer.append(", glyphs: (");
            stringBuffer.append(this.glyphs.length);
            stringBuffer.append(")[");
            for (int i = 0; i < this.glyphs.length; i++) {
                if (i > 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(Integer.toHexString(this.glyphs[i]));
            }
            stringBuffer.append(IteratorUtils.f104924b);
            if (this.positions != null) {
                stringBuffer.append(", positions: (");
                stringBuffer.append(this.positions.length);
                stringBuffer.append(")[");
                for (int i2 = 0; i2 < this.positions.length; i2 += 2) {
                    if (i2 > 0) {
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append(this.positions[i2]);
                    stringBuffer.append("@");
                    stringBuffer.append(this.positions[i2 + 1]);
                }
                stringBuffer.append(IteratorUtils.f104924b);
            }
            if (this.charIndices != null) {
                stringBuffer.append(", indices: (");
                stringBuffer.append(this.charIndices.length);
                stringBuffer.append(")[");
                for (int i3 = 0; i3 < this.charIndices.length; i3++) {
                    if (i3 > 0) {
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append(this.charIndices[i3]);
                }
                stringBuffer.append(IteratorUtils.f104924b);
            }
            stringBuffer.append(", flags:");
            if (getLayoutFlags() == 0) {
                stringBuffer.append(" default");
            } else {
                if ((this.flags & 1) != 0) {
                    stringBuffer.append(" tx");
                }
                if ((this.flags & 2) != 0) {
                    stringBuffer.append(" pos");
                }
                if ((this.flags & 4) != 0) {
                    stringBuffer.append(" rtl");
                }
                if ((this.flags & 8) != 0) {
                    stringBuffer.append(" complex");
                }
            }
        } catch (Exception e) {
            stringBuffer.append(' ');
            stringBuffer.append(e.getMessage());
        }
        stringBuffer.append('}');
        return stringBuffer;
    }

    public Object clone() {
        try {
            StandardGlyphVector standardGlyphVector = (StandardGlyphVector) super.clone();
            standardGlyphVector.clearCaches();
            float[] fArr = this.positions;
            if (fArr != null) {
                standardGlyphVector.positions = (float[]) fArr.clone();
            }
            GlyphTransformInfo glyphTransformInfo = this.gti;
            if (glyphTransformInfo != null) {
                standardGlyphVector.gti = new GlyphTransformInfo(standardGlyphVector, glyphTransformInfo);
            }
            return standardGlyphVector;
        } catch (CloneNotSupportedException unused) {
            return this;
        }
    }

    public StandardGlyphVector copy() {
        return (StandardGlyphVector) clone();
    }

    @Override // java.awt.font.GlyphVector
    public boolean equals(GlyphVector glyphVector) {
        if (this == glyphVector) {
            return true;
        }
        if (glyphVector == null) {
            return false;
        }
        try {
            StandardGlyphVector standardGlyphVector = (StandardGlyphVector) glyphVector;
            if (this.glyphs.length != standardGlyphVector.glyphs.length) {
                return false;
            }
            int i = 0;
            while (true) {
                int[] iArr = this.glyphs;
                if (i < iArr.length) {
                    if (iArr[i] != standardGlyphVector.glyphs[i]) {
                        return false;
                    }
                    i++;
                } else {
                    if (!this.font.equals(standardGlyphVector.font) || !this.frc.equals(standardGlyphVector.frc)) {
                        return false;
                    }
                    boolean z = standardGlyphVector.positions == null;
                    float[] fArr = this.positions;
                    if (z != (fArr == null)) {
                        if (fArr == null) {
                            initPositions();
                        } else {
                            standardGlyphVector.initPositions();
                        }
                    }
                    if (this.positions != null) {
                        int i2 = 0;
                        while (true) {
                            float[] fArr2 = this.positions;
                            if (i2 >= fArr2.length) {
                                break;
                            }
                            if (fArr2[i2] != standardGlyphVector.positions[i2]) {
                                return false;
                            }
                            i2++;
                        }
                    }
                    GlyphTransformInfo glyphTransformInfo = this.gti;
                    if (glyphTransformInfo == null) {
                        return standardGlyphVector.gti == null;
                    }
                    return glyphTransformInfo.equals(standardGlyphVector.gti);
                }
            }
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.awt.font.GlyphVector
    public Font getFont() {
        return this.font;
    }

    @Override // java.awt.font.GlyphVector
    public FontRenderContext getFontRenderContext() {
        return this.frc;
    }

    @Override // java.awt.font.GlyphVector
    public int getGlyphCharIndex(int i) {
        if (i >= 0 || i < this.glyphs.length) {
            int[] iArr = this.charIndices;
            return iArr == null ? (getLayoutFlags() & 4) != 0 ? (this.glyphs.length - 1) - i : i : iArr[i];
        }
        throw new IndexOutOfBoundsException("" + i);
    }

    @Override // java.awt.font.GlyphVector
    public int[] getGlyphCharIndices(int i, int i2, int[] iArr) {
        if (i < 0 || i2 < 0 || i2 > this.glyphs.length - i) {
            throw new IndexOutOfBoundsException("" + i + ", " + i2);
        }
        if (iArr == null) {
            iArr = new int[i2];
        }
        int i3 = 0;
        if (this.charIndices != null) {
            while (i3 < i2) {
                iArr[i3] = this.charIndices[i3 + i];
                i3++;
            }
        } else if ((getLayoutFlags() & 4) != 0) {
            int length = (this.glyphs.length - 1) - i;
            while (i3 < i2) {
                iArr[i3] = length;
                i3++;
                length--;
            }
        } else {
            while (i3 < i2) {
                iArr[i3] = i;
                i3++;
                i++;
            }
        }
        return iArr;
    }

    @Override // java.awt.font.GlyphVector
    public int getGlyphCode(int i) {
        return this.userGlyphs[i];
    }

    @Override // java.awt.font.GlyphVector
    public int[] getGlyphCodes(int i, int i2, int[] iArr) {
        if (i2 < 0) {
            throw new IllegalArgumentException("count = " + i2);
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("start = " + i);
        }
        if (i > this.glyphs.length - i2) {
            throw new IndexOutOfBoundsException("start + count = " + (i + i2));
        }
        if (iArr == null) {
            iArr = new int[i2];
        }
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i3] = this.userGlyphs[i3 + i];
        }
        return iArr;
    }

    public float[] getGlyphInfo() {
        setFRCTX();
        initPositions();
        float[] fArr = new float[this.glyphs.length * 8];
        int i = 0;
        int i2 = 0;
        while (true) {
            int[] iArr = this.glyphs;
            if (i >= iArr.length) {
                return fArr;
            }
            float[] fArr2 = this.positions;
            int i3 = i * 2;
            float f = fArr2[i3];
            float f2 = fArr2[i3 + 1];
            fArr[i2] = f;
            fArr[i2 + 1] = f2;
            Point2D.Float glyphMetrics = getGlyphStrike(i).strike.getGlyphMetrics(iArr[i]);
            fArr[i2 + 2] = glyphMetrics.f97777x;
            fArr[i2 + 3] = glyphMetrics.f97778y;
            Rectangle2D bounds2D = getGlyphVisualBounds(i).getBounds2D();
            fArr[i2 + 4] = (float) bounds2D.getMinX();
            fArr[i2 + 5] = (float) bounds2D.getMinY();
            fArr[i2 + 6] = (float) bounds2D.getWidth();
            fArr[i2 + 7] = (float) bounds2D.getHeight();
            i++;
            i2 += 8;
        }
    }

    @Override // java.awt.font.GlyphVector
    public GlyphJustificationInfo getGlyphJustificationInfo(int i) {
        if (i >= 0 && i < this.glyphs.length) {
            return null;
        }
        throw new IndexOutOfBoundsException("ix = " + i);
    }

    @Override // java.awt.font.GlyphVector
    public Shape getGlyphLogicalBounds(int i) {
        Shape[] shapeArr;
        if (i < 0 || i >= this.glyphs.length) {
            throw new IndexOutOfBoundsException("ix = " + i);
        }
        SoftReference<Shape[]> softReference = this.lbcacheRef;
        if (softReference == null || (shapeArr = softReference.get()) == null) {
            shapeArr = new Shape[this.glyphs.length];
            this.lbcacheRef = new SoftReference<>(shapeArr);
        }
        Shape shape = shapeArr[i];
        if (shape != null) {
            return shape;
        }
        setFRCTX();
        initPositions();
        ADL adl = new ADL();
        GlyphStrike glyphStrike = getGlyphStrike(i);
        glyphStrike.getADL(adl);
        Point2D.Float glyphMetrics = glyphStrike.strike.getGlyphMetrics(this.glyphs[i]);
        float f = glyphMetrics.f97777x;
        float f2 = glyphMetrics.f97778y;
        float f3 = adl.descentX + adl.leadingX;
        float f4 = adl.ascentX;
        float f5 = f3 + f4;
        float f6 = adl.descentY + adl.leadingY;
        float f7 = adl.ascentY;
        float f8 = f6 + f7;
        float[] fArr = this.positions;
        int i2 = i * 2;
        float f9 = (fArr[i2] + glyphStrike.f116367dx) - f4;
        float f10 = (fArr[i2 + 1] + glyphStrike.f116368dy) - f7;
        GeneralPath generalPath = new GeneralPath();
        generalPath.moveTo(f9, f10);
        float f11 = f + f9;
        float f12 = f2 + f10;
        generalPath.lineTo(f11, f12);
        generalPath.lineTo(f11 + f5, f12 + f8);
        generalPath.lineTo(f9 + f5, f10 + f8);
        generalPath.closePath();
        DelegatingShape delegatingShape = new DelegatingShape(generalPath);
        shapeArr[i] = delegatingShape;
        return delegatingShape;
    }

    @Override // java.awt.font.GlyphVector
    public GlyphMetrics getGlyphMetrics(int i) {
        if (i < 0 || i >= this.glyphs.length) {
            throw new IndexOutOfBoundsException("ix = " + i);
        }
        Rectangle2D bounds2D = getGlyphVisualBounds(i).getBounds2D();
        Point2D glyphPosition = getGlyphPosition(i);
        bounds2D.setRect(bounds2D.getMinX() - glyphPosition.getX(), bounds2D.getMinY() - glyphPosition.getY(), bounds2D.getWidth(), bounds2D.getHeight());
        Point2D.Float glyphMetrics = getGlyphStrike(i).strike.getGlyphMetrics(this.glyphs[i]);
        return new GlyphMetrics(true, glyphMetrics.f97777x, glyphMetrics.f97778y, bounds2D, (byte) 0);
    }

    @Override // java.awt.font.GlyphVector
    public Shape getGlyphOutline(int i) {
        return getGlyphsOutline(i, 1, 0.0f, 0.0f);
    }

    @Override // java.awt.font.GlyphVector
    public Rectangle getGlyphPixelBounds(int i, FontRenderContext fontRenderContext, float f, float f2) {
        return getGlyphsPixelBounds(fontRenderContext, f, f2, i, 1);
    }

    @Override // java.awt.font.GlyphVector
    public Point2D getGlyphPosition(int i) {
        initPositions();
        int i2 = i * 2;
        float[] fArr = this.positions;
        return new Point2D.Float(fArr[i2], fArr[i2 + 1]);
    }

    @Override // java.awt.font.GlyphVector
    public float[] getGlyphPositions(int i, int i2, float[] fArr) {
        if (i2 < 0) {
            throw new IllegalArgumentException("count = " + i2);
        }
        if (i >= 0) {
            if (i <= (this.glyphs.length + 1) - i2) {
                return internalGetGlyphPositions(i, i2, 0, fArr);
            }
            throw new IndexOutOfBoundsException("start + count = " + (i + i2));
        }
        throw new IndexOutOfBoundsException("start = " + i);
    }

    @Override // java.awt.font.GlyphVector
    public AffineTransform getGlyphTransform(int i) {
        if (i < 0 || i >= this.glyphs.length) {
            throw new IndexOutOfBoundsException("ix = " + i);
        }
        GlyphTransformInfo glyphTransformInfo = this.gti;
        if (glyphTransformInfo != null) {
            return glyphTransformInfo.getGlyphTransform(i);
        }
        return null;
    }

    public AffineTransform[] getGlyphTransforms(int i, int i2, AffineTransform[] affineTransformArr) {
        if (i >= 0 && i2 >= 0 && i + i2 <= this.glyphs.length) {
            if (this.gti == null) {
                return null;
            }
            if (affineTransformArr == null) {
                affineTransformArr = new AffineTransform[i2];
            }
            int i3 = 0;
            while (i3 < i2) {
                affineTransformArr[i3] = this.gti.getGlyphTransform(i);
                i3++;
                i++;
            }
            return affineTransformArr;
        }
        throw new IllegalArgumentException("start: " + i + " count: " + i2);
    }

    @Override // java.awt.font.GlyphVector
    public Shape getGlyphVisualBounds(int i) {
        Shape[] shapeArr;
        if (i < 0 || i >= this.glyphs.length) {
            throw new IndexOutOfBoundsException("ix = " + i);
        }
        SoftReference<Shape[]> softReference = this.vbcacheRef;
        if (softReference == null || (shapeArr = softReference.get()) == null) {
            shapeArr = new Shape[this.glyphs.length];
            this.vbcacheRef = new SoftReference<>(shapeArr);
        }
        Shape shape = shapeArr[i];
        if (shape != null) {
            return shape;
        }
        DelegatingShape delegatingShape = new DelegatingShape(getGlyphOutlineBounds(i));
        shapeArr[i] = delegatingShape;
        return delegatingShape;
    }

    @Override // java.awt.font.GlyphVector
    public int getLayoutFlags() {
        if (this.flags == -1) {
            this.flags = 0;
            int[] iArr = this.charIndices;
            if (iArr != null && this.glyphs.length > 1) {
                int length = iArr.length;
                int i = 0;
                boolean z = true;
                boolean z2 = true;
                while (true) {
                    int[] iArr2 = this.charIndices;
                    if (i >= iArr2.length || !(z || z2)) {
                        break;
                    }
                    int i2 = iArr2[i];
                    z = z && i2 == i;
                    z2 = z2 && i2 == (length = length + (-1));
                    i++;
                }
                if (z2) {
                    this.flags |= 4;
                }
                if (!z2 && !z) {
                    this.flags |= 8;
                }
            }
        }
        return this.flags;
    }

    @Override // java.awt.font.GlyphVector
    public Rectangle2D getLogicalBounds() {
        float f;
        setFRCTX();
        initPositions();
        LineMetrics lineMetrics = this.font.getLineMetrics("", this.frc);
        float f2 = -lineMetrics.getAscent();
        float descent = lineMetrics.getDescent() + lineMetrics.getLeading();
        if (this.glyphs.length > 0) {
            f = this.positions[r4.length - 2];
        } else {
            f = 0.0f;
        }
        return new Rectangle2D.Float(0.0f, f2, f - 0.0f, descent - f2);
    }

    @Override // java.awt.font.GlyphVector
    public int getNumGlyphs() {
        return this.glyphs.length;
    }

    @Override // java.awt.font.GlyphVector
    public Shape getOutline() {
        return getGlyphsOutline(0, this.glyphs.length, 0.0f, 0.0f);
    }

    @Override // java.awt.font.GlyphVector
    public Rectangle getPixelBounds(FontRenderContext fontRenderContext, float f, float f2) {
        return getGlyphsPixelBounds(fontRenderContext, f, f2, 0, this.glyphs.length);
    }

    public int[] getValidatedGlyphs(int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 == 65534 || i2 == 65535) {
                iArr2[i] = i2;
            } else {
                iArr2[i] = this.font2D.getValidatedGlyphCode(i2);
            }
        }
        return iArr2;
    }

    @Override // java.awt.font.GlyphVector
    public Rectangle2D getVisualBounds() {
        Rectangle2D rectangle2D = null;
        for (int i = 0; i < this.glyphs.length; i++) {
            Rectangle2D bounds2D = getGlyphVisualBounds(i).getBounds2D();
            if (!bounds2D.isEmpty()) {
                if (rectangle2D == null) {
                    rectangle2D = bounds2D;
                } else {
                    Rectangle2D.union(rectangle2D, bounds2D, rectangle2D);
                }
            }
        }
        return rectangle2D == null ? new Rectangle2D.Float(0.0f, 0.0f, 0.0f, 0.0f) : rectangle2D;
    }

    public int hashCode() {
        return this.glyphs.length ^ this.font.hashCode();
    }

    public void initGlyphVector(Font font, FontRenderContext fontRenderContext, int[] iArr, float[] fArr, int[] iArr2, int i) {
        this.font = font;
        this.frc = fontRenderContext;
        this.glyphs = iArr;
        this.userGlyphs = iArr;
        this.positions = fArr;
        this.charIndices = iArr2;
        this.flags = i;
        initFontData();
    }

    public boolean needsPositions(double[] dArr) {
        return (this.gti == null && (getLayoutFlags() & 2) == 0 && matchTX(dArr, this.frctx)) ? false : true;
    }

    @Override // java.awt.font.GlyphVector
    public void performDefaultLayout() {
        this.positions = null;
        if (getTracking(this.font) == 0.0f) {
            clearFlags(2);
        }
    }

    @Override // java.awt.font.GlyphVector
    public void setGlyphPosition(int i, Point2D point2D) {
        if (i < 0 || i > this.glyphs.length) {
            throw new IndexOutOfBoundsException("ix = " + i);
        }
        initPositions();
        int i2 = i << 1;
        this.positions[i2] = (float) point2D.getX();
        this.positions[i2 + 1] = (float) point2D.getY();
        if (i < this.glyphs.length) {
            clearCaches(i);
        }
        addFlags(2);
    }

    public void setGlyphPositions(float[] fArr, int i, int i2, int i3) {
        if (i3 >= 0) {
            initPositions();
            int i4 = i2 * 2;
            int i5 = (i3 * 2) + i4;
            while (i4 < i5) {
                this.positions[i4] = fArr[i];
                i4++;
                i++;
            }
            clearCaches();
            addFlags(2);
            return;
        }
        throw new IllegalArgumentException("count = " + i3);
    }

    @Override // java.awt.font.GlyphVector
    public void setGlyphTransform(int i, AffineTransform affineTransform) {
        if (i < 0 || i >= this.glyphs.length) {
            throw new IndexOutOfBoundsException("ix = " + i);
        }
        if (this.gti == null) {
            if (affineTransform == null || affineTransform.isIdentity()) {
                return;
            } else {
                this.gti = new GlyphTransformInfo(this);
            }
        }
        this.gti.setGlyphTransform(i, affineTransform);
        if (this.gti.transformCount() == 0) {
            this.gti = null;
        }
    }

    public void setGlyphTransforms(AffineTransform[] affineTransformArr, int i, int i2, int i3) {
        int i4 = i3 + i2;
        while (i2 < i4) {
            setGlyphTransform(i2, affineTransformArr[i + i2]);
            i2++;
        }
    }

    public Object setupGlyphImages(long[] jArr, float[] fArr, double[] dArr) {
        initPositions();
        setRenderTransform(dArr);
        GlyphTransformInfo glyphTransformInfo = this.gti;
        if (glyphTransformInfo != null) {
            return glyphTransformInfo.setupGlyphImages(jArr, fArr, this.dtx);
        }
        GlyphStrike defaultStrike = getDefaultStrike();
        FontStrike fontStrike = defaultStrike.strike;
        int[] iArr = this.glyphs;
        fontStrike.getGlyphImagePtrs(iArr, jArr, iArr.length);
        if (fArr != null) {
            if (this.dtx.isIdentity()) {
                System.arraycopy(this.positions, 0, fArr, 0, this.glyphs.length * 2);
            } else {
                this.dtx.transform(this.positions, 0, fArr, 0, this.glyphs.length);
            }
        }
        return defaultStrike;
    }

    public String toString() {
        return appendString(null).toString();
    }

    /* loaded from: classes16.dex */
    public static final class GlyphTransformInfo {
        boolean haveAllStrikes;
        int[] indices;
        StandardGlyphVector sgv;
        SoftReference<GlyphStrike[]> strikesRef;
        double[] transforms;

        public GlyphTransformInfo(StandardGlyphVector standardGlyphVector) {
            this.sgv = standardGlyphVector;
        }

        private GlyphStrike[] getAllStrikes() {
            if (this.indices == null) {
                return null;
            }
            GlyphStrike[] strikeArray = getStrikeArray();
            if (!this.haveAllStrikes) {
                for (int i = 0; i < strikeArray.length; i++) {
                    getStrikeAtIndex(strikeArray, i);
                }
                this.haveAllStrikes = true;
            }
            return strikeArray;
        }

        private GlyphStrike[] getStrikeArray() {
            SoftReference<GlyphStrike[]> softReference = this.strikesRef;
            GlyphStrike[] glyphStrikeArr = softReference != null ? softReference.get() : null;
            if (glyphStrikeArr != null) {
                return glyphStrikeArr;
            }
            this.haveAllStrikes = false;
            GlyphStrike[] glyphStrikeArr2 = new GlyphStrike[transformCount() + 1];
            this.strikesRef = new SoftReference<>(glyphStrikeArr2);
            return glyphStrikeArr2;
        }

        private GlyphStrike getStrikeAtIndex(GlyphStrike[] glyphStrikeArr, int i) {
            GlyphStrike create;
            GlyphStrike glyphStrike = glyphStrikeArr[i];
            if (glyphStrike != null) {
                return glyphStrike;
            }
            if (i == 0) {
                create = this.sgv.getDefaultStrike();
            } else {
                int i2 = (i - 1) * 6;
                double[] dArr = this.transforms;
                AffineTransform affineTransform = new AffineTransform(dArr[i2], dArr[i2 + 1], dArr[i2 + 2], dArr[i2 + 3], dArr[i2 + 4], dArr[i2 + 5]);
                StandardGlyphVector standardGlyphVector = this.sgv;
                create = GlyphStrike.create(standardGlyphVector, standardGlyphVector.dtx, affineTransform);
            }
            GlyphStrike glyphStrike2 = create;
            glyphStrikeArr[i] = glyphStrike2;
            return glyphStrike2;
        }

        public boolean equals(GlyphTransformInfo glyphTransformInfo) {
            if (glyphTransformInfo == null) {
                return false;
            }
            if (glyphTransformInfo == this) {
                return true;
            }
            if (this.indices.length != glyphTransformInfo.indices.length || this.transforms.length != glyphTransformInfo.transforms.length) {
                return false;
            }
            int i = 0;
            while (true) {
                int[] iArr = this.indices;
                if (i >= iArr.length) {
                    return true;
                }
                int i2 = iArr[i];
                int i3 = glyphTransformInfo.indices[i];
                if ((i2 == 0) != (i3 == 0)) {
                    return false;
                }
                if (i2 != 0) {
                    int i4 = i2 * 6;
                    int i5 = i3 * 6;
                    for (int i6 = 6; i6 > 0; i6--) {
                        i4--;
                        i5--;
                        if (this.indices[i4] != glyphTransformInfo.indices[i5]) {
                            return false;
                        }
                    }
                }
                i++;
            }
        }

        public AffineTransform getGlyphTransform(int i) {
            int i2 = this.indices[i];
            if (i2 == 0) {
                return null;
            }
            int i3 = (i2 - 1) * 6;
            double[] dArr = this.transforms;
            return new AffineTransform(dArr[i3 + 0], dArr[i3 + 1], dArr[i3 + 2], dArr[i3 + 3], dArr[i3 + 4], dArr[i3 + 5]);
        }

        public Rectangle getGlyphsPixelBounds(AffineTransform affineTransform, float f, float f2, int i, int i2) {
            Rectangle rectangle = new Rectangle();
            Point2D.Float r1 = new Point2D.Float();
            int i3 = i * 2;
            Rectangle rectangle2 = null;
            while (true) {
                i2--;
                if (i2 < 0) {
                    break;
                }
                GlyphStrike strike = getStrike(i);
                int i4 = i3 + 1;
                r1.f97777x = this.sgv.positions[i3] + f + strike.f116367dx;
                int i5 = i4 + 1;
                r1.f97778y = this.sgv.positions[i4] + f2 + strike.f116368dy;
                affineTransform.transform(r1, r1);
                int i6 = i + 1;
                strike.strike.getGlyphImageBounds(this.sgv.glyphs[i], r1, rectangle);
                if (!rectangle.isEmpty()) {
                    if (rectangle2 == null) {
                        rectangle2 = new Rectangle(rectangle);
                    } else {
                        rectangle2.add(rectangle);
                    }
                }
                i3 = i5;
                i = i6;
            }
            return rectangle2 != null ? rectangle2 : rectangle;
        }

        public GlyphStrike getStrike(int i) {
            return this.indices != null ? getStrikeAtIndex(getStrikeArray(), this.indices[i]) : this.sgv.getDefaultStrike();
        }

        public void setGlyphTransform(int i, AffineTransform affineTransform) {
            boolean z;
            boolean z2;
            int i2;
            boolean z3;
            double[] dArr = new double[6];
            int i3 = 0;
            if (affineTransform == null || affineTransform.isIdentity()) {
                dArr[3] = 1.0d;
                dArr[0] = 1.0d;
                z = true;
            } else {
                affineTransform.getMatrix(dArr);
                z = false;
            }
            if (this.indices != null) {
                if (z) {
                    i2 = 0;
                    z2 = false;
                } else {
                    int i4 = 0;
                    loop2: while (true) {
                        if (i4 >= this.transforms.length) {
                            z2 = true;
                            break;
                        }
                        for (int i5 = 0; i5 < 6; i5++) {
                            if (this.transforms[i4 + i5] != dArr[i5]) {
                                break;
                            }
                        }
                        z2 = false;
                        break loop2;
                        i4 += 6;
                    }
                    i2 = (i4 / 6) + 1;
                }
                int i6 = this.indices[i];
                if (i2 != i6) {
                    if (i6 != 0) {
                        int i7 = 0;
                        while (true) {
                            int[] iArr = this.indices;
                            if (i7 >= iArr.length) {
                                z3 = true;
                                break;
                            } else if (iArr[i7] == i6 && i7 != i) {
                                break;
                            } else {
                                i7++;
                            }
                        }
                    }
                    z3 = false;
                    if (z3 && z2) {
                        System.arraycopy(dArr, 0, this.transforms, (i6 - 1) * 6, 6);
                        i2 = i6;
                    } else if (z3) {
                        double[] dArr2 = this.transforms;
                        if (dArr2.length == 6) {
                            this.indices = null;
                            this.transforms = null;
                            this.sgv.clearCaches(i);
                            this.sgv.clearFlags(1);
                            this.strikesRef = null;
                            return;
                        }
                        double[] dArr3 = new double[dArr2.length - 6];
                        int i8 = (i6 - 1) * 6;
                        System.arraycopy(dArr2, 0, dArr3, 0, i8);
                        double[] dArr4 = this.transforms;
                        int i9 = i6 * 6;
                        System.arraycopy(dArr4, i9, dArr3, i8, dArr4.length - i9);
                        this.transforms = dArr3;
                        while (true) {
                            int[] iArr2 = this.indices;
                            if (i3 >= iArr2.length) {
                                break;
                            }
                            int i10 = iArr2[i3];
                            if (i10 > i6) {
                                iArr2[i3] = i10 - 1;
                            }
                            i3++;
                        }
                        if (i2 > i6) {
                            i2--;
                        }
                    } else if (z2) {
                        double[] dArr5 = this.transforms;
                        double[] dArr6 = new double[dArr5.length + 6];
                        System.arraycopy(dArr5, 0, dArr6, 0, dArr5.length);
                        System.arraycopy(dArr, 0, dArr6, this.transforms.length, 6);
                        this.transforms = dArr6;
                    }
                    this.indices[i] = i2;
                }
            } else {
                if (z) {
                    return;
                }
                int[] iArr3 = new int[this.sgv.glyphs.length];
                this.indices = iArr3;
                iArr3[i] = 1;
                this.transforms = dArr;
            }
            this.sgv.clearCaches(i);
            this.sgv.addFlags(1);
            this.strikesRef = null;
        }

        public Object setupGlyphImages(long[] jArr, float[] fArr, AffineTransform affineTransform) {
            int length = this.sgv.glyphs.length;
            GlyphStrike[] allStrikes = getAllStrikes();
            for (int i = 0; i < length; i++) {
                GlyphStrike glyphStrike = allStrikes[this.indices[i]];
                int i2 = this.sgv.glyphs[i];
                jArr[i] = glyphStrike.strike.getGlyphImagePtr(i2);
                glyphStrike.getGlyphPosition(i2, i * 2, this.sgv.positions, fArr);
            }
            affineTransform.transform(fArr, 0, fArr, 0, length);
            return allStrikes;
        }

        public int transformCount() {
            double[] dArr = this.transforms;
            if (dArr == null) {
                return 0;
            }
            return dArr.length / 6;
        }

        public GlyphTransformInfo(StandardGlyphVector standardGlyphVector, GlyphTransformInfo glyphTransformInfo) {
            this.sgv = standardGlyphVector;
            int[] iArr = glyphTransformInfo.indices;
            this.indices = iArr == null ? null : (int[]) iArr.clone();
            double[] dArr = glyphTransformInfo.transforms;
            this.transforms = dArr == null ? null : (double[]) dArr.clone();
            this.strikesRef = null;
        }
    }

    @Override // java.awt.font.GlyphVector
    public Shape getGlyphOutline(int i, float f, float f2) {
        return getGlyphsOutline(i, 1, f, f2);
    }

    @Override // java.awt.font.GlyphVector
    public Shape getOutline(float f, float f2) {
        return getGlyphsOutline(0, this.glyphs.length, f, f2);
    }

    public void setGlyphTransforms(AffineTransform[] affineTransformArr) {
        setGlyphTransforms(affineTransformArr, 0, 0, this.glyphs.length);
    }

    public StandardGlyphVector(Font font, char[] cArr, FontRenderContext fontRenderContext) {
        init(font, cArr, 0, cArr.length, fontRenderContext, -1);
    }

    public StandardGlyphVector(Font font, char[] cArr, int i, int i2, FontRenderContext fontRenderContext) {
        init(font, cArr, i, i2, fontRenderContext, -1);
    }

    public float[] getGlyphPositions(float[] fArr) {
        return internalGetGlyphPositions(0, this.glyphs.length + 1, 0, fArr);
    }

    public AffineTransform[] getGlyphTransforms() {
        return getGlyphTransforms(0, this.glyphs.length, null);
    }

    public void setGlyphPositions(float[] fArr) {
        int length = (this.glyphs.length * 2) + 2;
        if (fArr.length == length) {
            this.positions = (float[]) fArr.clone();
            clearCaches();
            addFlags(2);
        } else {
            throw new IllegalArgumentException("srcPositions.length != " + length);
        }
    }

    public StandardGlyphVector(Font font, FontRenderContext fontRenderContext, int[] iArr, float[] fArr, int[] iArr2, int i) {
        initGlyphVector(font, fontRenderContext, iArr, fArr, iArr2, i);
        float tracking = getTracking(font);
        if (tracking != 0.0f) {
            Point2D.Float r12 = new Point2D.Float(tracking * font.getSize2D(), 0.0f);
            if (font.isTransformed()) {
                font.getTransform().deltaTransform(r12, r12);
            }
            FontStrike strike = FontUtilities.getFont2D(font).getStrike(font, fontRenderContext);
            float[] fArr2 = {r12.f97777x, r12.f97778y};
            for (int i2 = 0; i2 < 2; i2++) {
                float f = fArr2[i2];
                if (f != 0.0f) {
                    float f2 = 0.0f;
                    int i3 = i2;
                    int i4 = 0;
                    while (i4 < iArr.length) {
                        int i5 = i4 + 1;
                        if (strike.getGlyphAdvance(iArr[i4]) != 0.0f) {
                            fArr[i3] = fArr[i3] + f2;
                            f2 += f;
                        }
                        i3 += 2;
                        i4 = i5;
                    }
                    int length = (fArr.length - 2) + i2;
                    fArr[length] = fArr[length] + f2;
                }
            }
        }
    }

    private void clearCaches() {
        this.lbcacheRef = null;
        this.vbcacheRef = null;
    }

    public boolean equals(Object obj) {
        try {
            return equals((GlyphVector) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public StandardGlyphVector(Font font, CharacterIterator characterIterator, FontRenderContext fontRenderContext) {
        int beginIndex = characterIterator.getBeginIndex();
        int endIndex = characterIterator.getEndIndex() - beginIndex;
        char[] cArr = new char[endIndex];
        char first = characterIterator.first();
        while (first != 65535) {
            cArr[characterIterator.getIndex() - beginIndex] = first;
            first = characterIterator.next();
        }
        init(font, cArr, 0, endIndex, fontRenderContext, -1);
    }

    public StandardGlyphVector(Font font, int[] iArr, FontRenderContext fontRenderContext) {
        this.font = font;
        this.frc = fontRenderContext;
        this.flags = -1;
        initFontData();
        this.userGlyphs = iArr;
        this.glyphs = getValidatedGlyphs(iArr);
    }

    private StandardGlyphVector(GlyphVector glyphVector, FontRenderContext fontRenderContext) {
        this.font = glyphVector.getFont();
        this.frc = fontRenderContext;
        initFontData();
        int numGlyphs = glyphVector.getNumGlyphs();
        int[] glyphCodes = glyphVector.getGlyphCodes(0, numGlyphs, null);
        this.userGlyphs = glyphCodes;
        if (glyphVector instanceof StandardGlyphVector) {
            this.glyphs = glyphCodes;
        } else {
            this.glyphs = getValidatedGlyphs(glyphCodes);
        }
        int layoutFlags = glyphVector.getLayoutFlags() & 15;
        this.flags = layoutFlags;
        if ((layoutFlags & 2) != 0) {
            this.positions = glyphVector.getGlyphPositions(0, numGlyphs + 1, null);
        }
        if ((this.flags & 8) != 0) {
            this.charIndices = glyphVector.getGlyphCharIndices(0, numGlyphs, null);
        }
        if ((this.flags & 1) != 0) {
            AffineTransform[] affineTransformArr = new AffineTransform[numGlyphs];
            for (int i = 0; i < numGlyphs; i++) {
                affineTransformArr[i] = glyphVector.getGlyphTransform(i);
            }
            setGlyphTransforms(affineTransformArr);
        }
    }
}
