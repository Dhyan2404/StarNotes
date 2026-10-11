package sun.font;

import java.awt.Rectangle;
import java.awt.Shape;
import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;

/* loaded from: classes16.dex */
public final class CompositeStrike extends FontStrike {
    static final int SLOTMASK = 16777215;
    private CompositeFont compFont;
    int numGlyphs = 0;
    private PhysicalStrike[] strikes;

    public CompositeStrike(CompositeFont compositeFont, FontStrikeDesc fontStrikeDesc) {
        this.compFont = compositeFont;
        this.desc = fontStrikeDesc;
        this.disposer = new FontStrikeDisposer(compositeFont, fontStrikeDesc);
        int i = fontStrikeDesc.style;
        CompositeFont compositeFont2 = this.compFont;
        int i2 = compositeFont2.style;
        if (i != i2) {
            this.algoStyle = true;
            if ((i & 1) == 1 && (i2 & 1) == 0) {
                this.boldness = 1.33f;
            }
            if ((i & 2) == 2 && (i2 & 2) == 0) {
                this.italic = 0.7f;
            }
        }
        this.strikes = new PhysicalStrike[compositeFont2.numSlots];
    }

    @Override // sun.font.FontStrike
    public Point2D.Float getCharMetrics(char c) {
        return getGlyphMetrics(this.compFont.getMapper().charToGlyph(c));
    }

    @Override // sun.font.FontStrike
    public float getCodePointAdvance(int i) {
        return getGlyphAdvance(this.compFont.getMapper().charToGlyph(i));
    }

    @Override // sun.font.FontStrike
    public StrikeMetrics getFontMetrics() {
        if (this.strikeMetrics == null) {
            StrikeMetrics strikeMetrics = new StrikeMetrics();
            for (int i = 0; i < this.compFont.numMetricsSlots; i++) {
                strikeMetrics.merge(getStrikeForSlot(i).getFontMetrics());
            }
            this.strikeMetrics = strikeMetrics;
        }
        return this.strikeMetrics;
    }

    @Override // sun.font.FontStrike
    public float getGlyphAdvance(int i) {
        return getStrikeForGlyph(i).getGlyphAdvance(i & 16777215);
    }

    @Override // sun.font.FontStrike
    public void getGlyphImageBounds(int i, Point2D.Float r3, Rectangle rectangle) {
        getStrikeForGlyph(i).getGlyphImageBounds(i & 16777215, r3, rectangle);
    }

    @Override // sun.font.FontStrike
    public long getGlyphImagePtr(int i) {
        return getStrikeForGlyph(i).getGlyphImagePtr(i & 16777215);
    }

    @Override // sun.font.FontStrike
    public void getGlyphImagePtrs(int[] iArr, long[] jArr, int i) {
        int slot0GlyphImagePtrs = getStrikeForSlot(0).getSlot0GlyphImagePtrs(iArr, jArr, i);
        if (slot0GlyphImagePtrs == i) {
            return;
        }
        while (slot0GlyphImagePtrs < i) {
            jArr[slot0GlyphImagePtrs] = getStrikeForGlyph(iArr[slot0GlyphImagePtrs]).getGlyphImagePtr(iArr[slot0GlyphImagePtrs] & 16777215);
            slot0GlyphImagePtrs++;
        }
    }

    @Override // sun.font.FontStrike
    public Point2D.Float getGlyphMetrics(int i) {
        return getStrikeForGlyph(i).getGlyphMetrics(i & 16777215);
    }

    @Override // sun.font.FontStrike
    public GeneralPath getGlyphOutline(int i, float f, float f2) {
        GeneralPath glyphOutline = getStrikeForGlyph(i).getGlyphOutline(i & 16777215, f, f2);
        return glyphOutline == null ? new GeneralPath() : glyphOutline;
    }

    @Override // sun.font.FontStrike
    public Rectangle2D.Float getGlyphOutlineBounds(int i) {
        return getStrikeForGlyph(i).getGlyphOutlineBounds(i & 16777215);
    }

    @Override // sun.font.FontStrike
    public GeneralPath getGlyphVectorOutline(int[] iArr, float f, float f2) {
        int i;
        GeneralPath generalPath = null;
        for (int i2 = 0; i2 < iArr.length; i2 = i) {
            int i3 = iArr[i2] >>> 24;
            i = i2;
            while (i < iArr.length) {
                int i4 = i + 1;
                if ((iArr[i4] >>> 24) != i3) {
                    break;
                }
                i = i4;
            }
            int i5 = (i - i2) + 1;
            int[] iArr2 = new int[i5];
            for (int i6 = 0; i6 < i5; i6++) {
                iArr2[i6] = iArr[i6] & 16777215;
            }
            GeneralPath glyphVectorOutline = getStrikeForSlot(i3).getGlyphVectorOutline(iArr2, f, f2);
            if (generalPath == null) {
                generalPath = glyphVectorOutline;
            } else if (glyphVectorOutline != null) {
                generalPath.append((Shape) glyphVectorOutline, false);
            }
        }
        return generalPath == null ? new GeneralPath() : generalPath;
    }

    @Override // sun.font.FontStrike
    public CharToGlyphMapper getMapper() {
        return this.compFont.getMapper();
    }

    @Override // sun.font.FontStrike
    public int getNumGlyphs() {
        return this.compFont.getNumGlyphs();
    }

    public PhysicalStrike getStrikeForGlyph(int i) {
        return getStrikeForSlot(i >>> 24);
    }

    public PhysicalStrike getStrikeForSlot(int i) {
        PhysicalStrike[] physicalStrikeArr = this.strikes;
        if (i >= physicalStrikeArr.length) {
            i = 0;
        }
        PhysicalStrike physicalStrike = physicalStrikeArr[i];
        if (physicalStrike != null) {
            return physicalStrike;
        }
        PhysicalStrike physicalStrike2 = (PhysicalStrike) this.compFont.getSlotFont(i).getStrike(this.desc);
        this.strikes[i] = physicalStrike2;
        return physicalStrike2;
    }
}
