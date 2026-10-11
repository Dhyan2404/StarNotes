package sun.font;

import java.awt.geom.Point2D;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes16.dex */
public abstract class PhysicalStrike extends FontStrike {
    static final long INTMASK = 4294967295L;
    protected static final int complexTX = 124;
    static boolean longAddresses;
    protected boolean getImageWithAdvance;
    ConcurrentHashMap<Integer, Point2D.Float> glyphPointMapCache;
    protected int[] intGlyphImages;
    protected long[] longGlyphImages;
    protected CharToGlyphMapper mapper;
    protected long pScalerContext;
    private PhysicalFont physicalFont;

    static {
        int i = StrikeCache.nativeAddressSize;
        if (i == 4) {
            longAddresses = false;
        } else {
            if (i != 8) {
                throw new RuntimeException("Unexpected address size");
            }
            longAddresses = true;
        }
    }

    public PhysicalStrike(PhysicalFont physicalFont, FontStrikeDesc fontStrikeDesc) {
        this.physicalFont = physicalFont;
        this.desc = fontStrikeDesc;
    }

    public void adjustPoint(Point2D.Float r1) {
    }

    @Override // sun.font.FontStrike
    public Point2D.Float getCharMetrics(char c) {
        return getGlyphMetrics(this.physicalFont.getMapper().charToGlyph(c));
    }

    @Override // sun.font.FontStrike
    public float getCodePointAdvance(int i) {
        return getGlyphAdvance(this.physicalFont.getMapper().charToGlyph(i));
    }

    @Override // sun.font.FontStrike
    public StrikeMetrics getFontMetrics() {
        if (this.strikeMetrics == null) {
            this.strikeMetrics = this.physicalFont.getFontMetrics(this.pScalerContext);
        }
        return this.strikeMetrics;
    }

    public Point2D.Float getGlyphPoint(int i, int i2) {
        Point2D.Float r1;
        Integer valueOf = Integer.valueOf((i << 16) | i2);
        ConcurrentHashMap<Integer, Point2D.Float> concurrentHashMap = this.glyphPointMapCache;
        if (concurrentHashMap == null) {
            synchronized (this) {
                if (this.glyphPointMapCache == null) {
                    this.glyphPointMapCache = new ConcurrentHashMap<>();
                }
            }
            r1 = null;
        } else {
            r1 = concurrentHashMap.get(valueOf);
        }
        if (r1 != null) {
            return r1;
        }
        Point2D.Float glyphPoint = this.physicalFont.getGlyphPoint(this.pScalerContext, i, i2);
        adjustPoint(glyphPoint);
        this.glyphPointMapCache.put(valueOf, glyphPoint);
        return glyphPoint;
    }

    @Override // sun.font.FontStrike
    public CharToGlyphMapper getMapper() {
        return this.mapper;
    }

    @Override // sun.font.FontStrike
    public int getNumGlyphs() {
        return this.physicalFont.getNumGlyphs();
    }

    public int getSlot0GlyphImagePtrs(int[] iArr, long[] jArr, int i) {
        return 0;
    }

    public PhysicalStrike() {
    }
}
