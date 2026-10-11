package sun.font;

import java.awt.font.GlyphVector;
import sun.java2d.loops.FontInfo;

/* loaded from: classes16.dex */
public final class GlyphList {
    private static final int DEFAULT_LENGTH = 32;
    private static final int MAXGRAYLENGTH = 8192;
    private static final int MINGRAYLENGTH = 1024;
    private static boolean inUse;
    private static GlyphList reusableGL = new GlyphList();
    char[] chData;
    int[] glyphData;
    int glyphindex;
    float gposx;
    float gposy;
    byte[] graybits;
    long[] images;
    boolean lcdRGBOrder;
    boolean lcdSubPixPos;
    int len = 0;
    int maxLen = 0;
    int maxPosLen = 0;
    int[] metrics;
    float[] positions;
    Object strikelist;
    boolean usePositions;

    /* renamed from: x */
    float f116346x;

    /* renamed from: y */
    float f116347y;

    private GlyphList() {
    }

    private void fillBounds(int[] iArr) {
        int i = StrikeCache.topLeftXOffset;
        int i2 = StrikeCache.topLeftYOffset;
        int i3 = StrikeCache.widthOffset;
        int i4 = StrikeCache.heightOffset;
        int i5 = StrikeCache.xAdvanceOffset;
        int i6 = StrikeCache.yAdvanceOffset;
        if (this.len == 0) {
            iArr[3] = 0;
            iArr[2] = 0;
            iArr[1] = 0;
            iArr[0] = 0;
            return;
        }
        for (int i7 = 0; i7 < this.len; i7++) {
        }
        double d = Float.POSITIVE_INFINITY;
        iArr[0] = (int) Math.floor(d);
        iArr[1] = (int) Math.floor(d);
        double d2 = Float.NEGATIVE_INFINITY;
        iArr[2] = (int) Math.floor(d2);
        iArr[3] = (int) Math.floor(d2);
    }

    public static GlyphList getInstance() {
        if (inUse) {
            return new GlyphList();
        }
        synchronized (GlyphList.class) {
            if (inUse) {
                return new GlyphList();
            }
            inUse = true;
            return reusableGL;
        }
    }

    private final boolean mapChars(FontInfo fontInfo, int i) {
        if (fontInfo.font2D.getMapper().charsToGlyphsNS(i, this.chData, this.glyphData)) {
            return false;
        }
        fontInfo.fontStrike.getGlyphImagePtrs(this.glyphData, this.images, i);
        this.glyphindex = -1;
        return true;
    }

    public void dispose() {
        if (this == reusableGL) {
            byte[] bArr = this.graybits;
            if (bArr != null && bArr.length > 8192) {
                this.graybits = null;
            }
            this.usePositions = false;
            this.strikelist = null;
            inUse = false;
        }
    }

    public void ensureCapacity(int i) {
        if (i < 0) {
            i = 0;
        }
        if (this.usePositions && i > this.maxPosLen) {
            this.positions = new float[(i * 2) + 2];
            this.maxPosLen = i;
        }
        int i2 = this.maxLen;
        if (i2 == 0 || i > i2) {
            this.glyphData = new int[i];
            this.chData = new char[i];
            this.images = new long[i];
            this.maxLen = i;
        }
    }

    public int[] getBounds() {
        if (this.glyphindex >= 0) {
            throw new InternalError("calling getBounds after setGlyphIndex");
        }
        if (this.metrics == null) {
            this.metrics = new int[5];
        }
        this.gposx = this.f116346x + 0.5f;
        this.gposy = this.f116347y + 0.5f;
        fillBounds(this.metrics);
        return this.metrics;
    }

    public byte[] getGrayBits() {
        int[] iArr = this.metrics;
        int i = iArr[4] * iArr[3];
        byte[] bArr = this.graybits;
        if (bArr == null) {
            this.graybits = new byte[Math.max(i, 1024)];
        } else if (i > bArr.length) {
            this.graybits = new byte[i];
        }
        return this.graybits;
    }

    public long[] getImages() {
        return this.images;
    }

    public int[] getMetrics() {
        return this.metrics;
    }

    public int getNumGlyphs() {
        return this.len;
    }

    public float[] getPositions() {
        return this.positions;
    }

    public Object getStrike() {
        return this.strikelist;
    }

    public float getX() {
        return this.f116346x;
    }

    public float getY() {
        return this.f116347y;
    }

    public boolean isRGBOrder() {
        return this.lcdRGBOrder;
    }

    public boolean isSubPixPos() {
        return this.lcdSubPixPos;
    }

    public boolean setFromChars(FontInfo fontInfo, char[] cArr, int i, int i2, float f, float f2) {
        this.f116346x = f;
        this.f116347y = f2;
        this.strikelist = fontInfo.fontStrike;
        this.lcdRGBOrder = fontInfo.lcdRGBOrder;
        this.lcdSubPixPos = fontInfo.lcdSubPixPos;
        this.len = i2;
        if (i2 < 0) {
            this.len = 0;
        } else {
            this.len = i2;
        }
        ensureCapacity(this.len);
        System.arraycopy(cArr, i, this.chData, 0, this.len);
        return mapChars(fontInfo, this.len);
    }

    public void setFromGlyphVector(FontInfo fontInfo, GlyphVector glyphVector, float f, float f2) {
        this.f116346x = f;
        this.f116347y = f2;
        this.lcdRGBOrder = fontInfo.lcdRGBOrder;
        this.lcdSubPixPos = fontInfo.lcdSubPixPos;
        StandardGlyphVector standardGV = StandardGlyphVector.getStandardGV(glyphVector, fontInfo);
        this.usePositions = standardGV.needsPositions(fontInfo.devTx);
        int numGlyphs = standardGV.getNumGlyphs();
        this.len = numGlyphs;
        ensureCapacity(numGlyphs);
        this.strikelist = standardGV.setupGlyphImages(this.images, this.usePositions ? this.positions : null, fontInfo.devTx);
        this.glyphindex = -1;
    }

    public boolean setFromString(FontInfo fontInfo, String str, float f, float f2) {
        this.f116346x = f;
        this.f116347y = f2;
        this.strikelist = fontInfo.fontStrike;
        this.lcdRGBOrder = fontInfo.lcdRGBOrder;
        this.lcdSubPixPos = fontInfo.lcdSubPixPos;
        int length = str.length();
        this.len = length;
        ensureCapacity(length);
        str.getChars(0, this.len, this.chData, 0);
        return mapChars(fontInfo, this.len);
    }

    public void setGlyphIndex(int i) {
        this.glyphindex = i;
    }

    public boolean usePositions() {
        return this.usePositions;
    }
}
