package sun.font;

import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.font.FontRenderContext;
import java.awt.font.GlyphJustificationInfo;
import java.awt.font.GraphicAttribute;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.awt.geom.Rectangle2D;
import org.apache.commons.collections4.IteratorUtils;
import sun.font.Decoration;

/* loaded from: classes16.dex */
public final class GraphicComponent implements TextLineComponent, Decoration.Label {
    public static final float GRAPHIC_LEADING = 2.0f;
    private AffineTransform baseTx;
    private int[] charsLtoV;

    /* renamed from: cm */
    private CoreMetrics f116348cm;
    private Decoration decorator;
    private GraphicAttribute graphic;
    private float graphicAdvance;
    private int graphicCount;
    private byte[] levels;
    private Rectangle2D visualBounds = null;

    public GraphicComponent(GraphicAttribute graphicAttribute, Decoration decoration, int[] iArr, byte[] bArr, int i, int i2, AffineTransform affineTransform) {
        if (i2 > i) {
            this.graphic = graphicAttribute;
            this.graphicAdvance = graphicAttribute.getAdvance();
            this.decorator = decoration;
            this.f116348cm = createCoreMetrics(graphicAttribute);
            this.baseTx = affineTransform;
            initLocalOrdering(iArr, bArr, i, i2);
            return;
        }
        throw new IllegalArgumentException("0 or negative length in GraphicComponent");
    }

    public static CoreMetrics createCoreMetrics(GraphicAttribute graphicAttribute) {
        return new CoreMetrics(graphicAttribute.getAscent(), graphicAttribute.getDescent(), 2.0f, graphicAttribute.getAscent() + graphicAttribute.getDescent() + 2.0f, graphicAttribute.getAlignment(), new float[]{0.0f, (-graphicAttribute.getAscent()) / 2.0f, -graphicAttribute.getAscent()}, (-graphicAttribute.getAscent()) / 2.0f, graphicAttribute.getAscent() / 12.0f, graphicAttribute.getDescent() / 3.0f, graphicAttribute.getAscent() / 12.0f, 0.0f, 0.0f);
    }

    private void initLocalOrdering(int[] iArr, byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        this.graphicCount = i3;
        if (iArr == null || iArr.length == i3) {
            this.charsLtoV = iArr;
        } else {
            this.charsLtoV = BidiUtils.createNormalizedMap(iArr, bArr, i, i2);
        }
        if (bArr != null) {
            int length = bArr.length;
            int i4 = this.graphicCount;
            if (length != i4) {
                byte[] bArr2 = new byte[i4];
                this.levels = bArr2;
                System.arraycopy(bArr, i, bArr2, 0, i4);
                return;
            }
        }
        this.levels = bArr;
    }

    @Override // sun.font.TextLineComponent
    public TextLineComponent applyJustificationDeltas(float[] fArr, int i, boolean[] zArr) {
        return this;
    }

    @Override // sun.font.TextLineComponent
    public boolean caretAtOffsetIsValid(int i) {
        return true;
    }

    @Override // sun.font.TextLineComponent
    public void draw(Graphics2D graphics2D, float f, float f2) {
        this.decorator.drawTextAndDecorations(this, graphics2D, f, f2);
    }

    @Override // sun.font.TextLineComponent
    public float getAdvance() {
        return this.graphicAdvance * this.graphicCount;
    }

    @Override // sun.font.TextLineComponent
    public float getAdvanceBetween(int i, int i2) {
        return this.graphicAdvance * (i2 - i);
    }

    @Override // sun.font.TextLineComponent
    public AffineTransform getBaselineTransform() {
        return this.baseTx;
    }

    @Override // sun.font.TextLineComponent
    public float getCharAdvance(int i) {
        return this.graphicAdvance;
    }

    @Override // sun.font.TextLineComponent
    public Rectangle2D getCharVisualBounds(int i) {
        return this.decorator.getCharVisualBounds(this, i);
    }

    @Override // sun.font.TextLineComponent
    public float getCharX(int i) {
        int[] iArr = this.charsLtoV;
        if (iArr != null) {
            i = iArr[i];
        }
        return this.graphicAdvance * i;
    }

    @Override // sun.font.TextLineComponent
    public float getCharY(int i) {
        return 0.0f;
    }

    @Override // sun.font.TextLineComponent
    public CoreMetrics getCoreMetrics() {
        return this.f116348cm;
    }

    public float getItalicAngle() {
        return 0.0f;
    }

    @Override // sun.font.TextLineComponent
    public Rectangle2D getItalicBounds() {
        return getLogicalBounds();
    }

    @Override // sun.font.TextLineComponent
    public void getJustificationInfos(GlyphJustificationInfo[] glyphJustificationInfoArr, int i, int i2, int i3) {
    }

    @Override // sun.font.TextLineComponent
    public int getLineBreakIndex(int i, float f) {
        int i2 = (int) (f / this.graphicAdvance);
        int i3 = this.graphicCount;
        return i2 > i3 - i ? i3 - i : i2;
    }

    @Override // sun.font.TextLineComponent, sun.font.Decoration.Label
    public Rectangle2D getLogicalBounds() {
        CoreMetrics coreMetrics = this.f116348cm;
        float f = -coreMetrics.ascent;
        return new Rectangle2D.Float(0.0f, f, this.graphicAdvance * this.graphicCount, coreMetrics.descent - f);
    }

    @Override // sun.font.TextLineComponent
    public int getNumCharacters() {
        return this.graphicCount;
    }

    @Override // sun.font.TextLineComponent
    public int getNumJustificationInfos() {
        return 0;
    }

    @Override // sun.font.TextLineComponent
    public Shape getOutline(float f, float f2) {
        return this.decorator.getOutline(this, f, f2);
    }

    @Override // sun.font.TextLineComponent
    public Rectangle getPixelBounds(FontRenderContext fontRenderContext, float f, float f2) {
        throw new InternalError("do not call if isSimple returns false");
    }

    @Override // sun.font.TextLineComponent
    public TextLineComponent getSubset(int i, int i2, int i3) {
        int i4;
        if (i >= 0 && i2 <= (i4 = this.graphicCount) && i < i2) {
            return (i == 0 && i2 == i4 && i3 == 2) ? this : new GraphicComponent(this, i, i2, i3);
        }
        throw new IllegalArgumentException("Invalid range.  start=" + i + "; limit=" + i2);
    }

    @Override // sun.font.TextLineComponent
    public Rectangle2D getVisualBounds() {
        if (this.visualBounds == null) {
            this.visualBounds = this.decorator.getVisualBounds(this);
        }
        Rectangle2D.Float r0 = new Rectangle2D.Float();
        r0.setRect(this.visualBounds);
        return r0;
    }

    @Override // sun.font.Decoration.Label
    public void handleDraw(Graphics2D graphics2D, float f, float f2) {
        for (int i = 0; i < this.graphicCount; i++) {
            this.graphic.draw(graphics2D, f, f2);
            f += this.graphicAdvance;
        }
    }

    @Override // sun.font.Decoration.Label
    public Rectangle2D handleGetCharVisualBounds(int i) {
        Rectangle2D bounds = this.graphic.getBounds();
        Rectangle2D.Float r1 = new Rectangle2D.Float();
        r1.setRect(bounds);
        r1.f97793x += this.graphicAdvance * i;
        return r1;
    }

    @Override // sun.font.Decoration.Label
    public Shape handleGetOutline(float f, float f2) {
        double[] dArr = {1.0d, 0.0d, 0.0d, 1.0d, f, f2};
        if (this.graphicCount == 1) {
            return this.graphic.getOutline(new AffineTransform(dArr));
        }
        GeneralPath generalPath = new GeneralPath();
        for (int i = 0; i < this.graphicCount; i++) {
            generalPath.append(this.graphic.getOutline(new AffineTransform(dArr)), false);
            dArr[4] = dArr[4] + this.graphicAdvance;
        }
        return generalPath;
    }

    @Override // sun.font.Decoration.Label
    public Rectangle2D handleGetVisualBounds() {
        Rectangle2D bounds = this.graphic.getBounds();
        return new Rectangle2D.Float((float) bounds.getX(), (float) bounds.getY(), ((float) bounds.getWidth()) + (this.graphicAdvance * (this.graphicCount - 1)), (float) bounds.getHeight());
    }

    @Override // sun.font.TextLineComponent
    public boolean isSimple() {
        return false;
    }

    public String toString() {
        return "[graphic=" + this.graphic + ":count=" + getNumCharacters() + IteratorUtils.f104924b;
    }

    private GraphicComponent(GraphicComponent graphicComponent, int i, int i2, int i3) {
        byte[] bArr;
        int[] iArr = null;
        this.graphic = graphicComponent.graphic;
        this.graphicAdvance = graphicComponent.graphicAdvance;
        this.decorator = graphicComponent.decorator;
        this.f116348cm = graphicComponent.f116348cm;
        this.baseTx = graphicComponent.baseTx;
        if (i3 == 2) {
            iArr = graphicComponent.charsLtoV;
            bArr = graphicComponent.levels;
        } else {
            if (i3 != 0 && i3 != 1) {
                throw new IllegalArgumentException("Invalid direction flag");
            }
            i2 -= i;
            i = 0;
            if (i3 == 1) {
                iArr = new int[i2];
                byte[] bArr2 = new byte[i2];
                for (int i4 = 0; i4 < i2; i4++) {
                    iArr[i4] = (i2 - i4) - 1;
                    bArr2[i4] = 1;
                }
                bArr = bArr2;
            } else {
                bArr = null;
            }
        }
        initLocalOrdering(iArr, bArr, i, i2);
    }
}
