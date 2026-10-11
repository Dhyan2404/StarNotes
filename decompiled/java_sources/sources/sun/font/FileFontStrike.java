package sun.font;

import java.awt.GraphicsEnvironment;
import java.awt.Rectangle;
import java.awt.geom.AffineTransform;
import java.awt.geom.GeneralPath;
import java.awt.geom.NoninvertibleTransformException;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentHashMap;
import jdk.internal.misc.NeoUnsafe;

/* loaded from: classes16.dex */
public class FileFontStrike extends PhysicalStrike {
    private static final int INTARRAY = 1;
    static final int INVISIBLE_GLYPHS = 65534;
    private static final int LONGARRAY = 2;
    private static final int SEGINTARRAY = 3;
    private static final int SEGLONGARRAY = 4;
    private static final int SEGSHIFT = 5;
    private static final int SEGSIZE = 32;
    private static final int UNINITIALISED = 0;
    private static boolean isXPorLater;
    ConcurrentHashMap<Integer, Rectangle2D.Float> boundsMap;
    private FileFont fileFont;
    private volatile int glyphCacheFormat;
    SoftReference<ConcurrentHashMap<Integer, Point2D.Float>> glyphMetricsMapRef;
    private float[] horizontalAdvances;
    private int intPtSize;
    AffineTransform invertDevTx;
    NativeStrike[] nativeStrikes;
    private WeakReference<ConcurrentHashMap<Integer, GeneralPath>> outlineMapRef;
    private float[][] segHorizontalAdvances;
    private int[][] segIntGlyphImages;
    private long[][] segLongGlyphImages;
    private boolean segmentedCache;
    boolean useNatives;

    static {
        if (!FontUtilities.isWindows || FontUtilities.useJDKScaler || GraphicsEnvironment.isHeadless()) {
            return;
        }
        isXPorLater = initNative();
    }

    public FileFontStrike(FileFont fileFont, FontStrikeDesc fontStrikeDesc) {
        super(fileFont, fontStrikeDesc);
        int i;
        this.glyphCacheFormat = 0;
        this.fileFont = fileFont;
        int i2 = fontStrikeDesc.style;
        int i3 = fileFont.style;
        if (i2 != i3) {
            if ((i2 & 2) == 2 && (i3 & 2) == 0) {
                this.algoStyle = true;
                this.italic = 0.7f;
            }
            if ((i2 & 1) == 1 && (i3 & 1) == 0) {
                this.algoStyle = true;
                this.boldness = 1.33f;
            }
        }
        double[] dArr = new double[4];
        AffineTransform affineTransform = fontStrikeDesc.glyphTx;
        affineTransform.getMatrix(dArr);
        if (!fontStrikeDesc.devTx.isIdentity() && fontStrikeDesc.devTx.getType() != 1) {
            try {
                this.invertDevTx = fontStrikeDesc.devTx.createInverse();
            } catch (NoninvertibleTransformException unused) {
            }
        }
        if (Double.isNaN(dArr[0]) || Double.isNaN(dArr[1]) || Double.isNaN(dArr[2]) || Double.isNaN(dArr[3]) || fileFont.getScaler() == null) {
            this.pScalerContext = NullFontScaler.getNullScalerContext();
        } else {
            this.pScalerContext = fileFont.getScaler().createScalerContext(dArr, fontStrikeDesc.aaHint, fontStrikeDesc.fmHint, this.boldness, this.italic);
        }
        CharToGlyphMapper mapper = fileFont.getMapper();
        this.mapper = mapper;
        int numGlyphs = mapper.getNumGlyphs();
        float f = (float) dArr[3];
        int i4 = (int) f;
        this.intPtSize = i4;
        this.segmentedCache = numGlyphs > 256 || (numGlyphs > 64 && (!((affineTransform.getType() & 124) == 0) || f != ((float) i4) || i4 < 6 || i4 > 36));
        if (this.pScalerContext == 0) {
            this.disposer = new FontStrikeDisposer(fileFont, fontStrikeDesc);
            initGlyphCache();
            this.pScalerContext = NullFontScaler.getNullScalerContext();
            SunFontManager.getInstance().deRegisterBadFont(fileFont);
            return;
        }
        if (FontUtilities.isWindows && isXPorLater && !FontUtilities.useJDKScaler && !GraphicsEnvironment.isHeadless() && !fileFont.useJavaRasterizer && (((i = fontStrikeDesc.aaHint) == 4 || i == 5) && dArr[1] == 0.0d && dArr[2] == 0.0d)) {
            double d = dArr[0];
            if (d == dArr[3] && d >= 3.0d && d <= 100.0d && !((TrueTypeFont) fileFont).useEmbeddedBitmapsForSize(this.intPtSize)) {
                this.useNatives = true;
            }
        }
        if (FontUtilities.isLogging() && FontUtilities.isWindows) {
            FontUtilities.logInfo("Strike for " + fileFont + " at size = " + this.intPtSize + " use natives = " + this.useNatives + " useJavaRasteriser = " + fileFont.useJavaRasterizer + " AAHint = " + fontStrikeDesc.aaHint + " Has Embedded bitmaps = " + ((TrueTypeFont) fileFont).useEmbeddedBitmapsForSize(this.intPtSize));
        }
        this.disposer = new FontStrikeDisposer(fileFont, fontStrikeDesc, this.pScalerContext);
        this.getImageWithAdvance = false;
        if (this.segmentedCache) {
            this.segHorizontalAdvances = new float[((numGlyphs + 32) - 1) / 32];
            return;
        }
        this.horizontalAdvances = new float[numGlyphs];
        for (int i5 = 0; i5 < numGlyphs; i5++) {
            this.horizontalAdvances[i5] = Float.MAX_VALUE;
        }
    }

    private native long _getGlyphImageFromWindows(String str, int i, int i2, int i3, boolean z, int i4);

    private long getCachedGlyphPtrInternal(int i) {
        int i2 = this.glyphCacheFormat;
        if (i2 == 1) {
            return this.intGlyphImages[i] & 4294967295L;
        }
        if (i2 == 2) {
            return this.longGlyphImages[i];
        }
        if (i2 == 3) {
            if (this.segIntGlyphImages[i >> 5] != null) {
                return r6[i % 32] & 4294967295L;
            }
            return 0L;
        }
        if (i2 != 4) {
            return 0L;
        }
        long[] jArr = this.segLongGlyphImages[i >> 5];
        if (jArr != null) {
            return jArr[i % 32];
        }
        return 0L;
    }

    private int getGlyphImageMinX(long j, int i) {
        NeoUnsafe neoUnsafe = StrikeCache.unsafe;
        char c = neoUnsafe.getChar(StrikeCache.widthOffset + j);
        char c2 = neoUnsafe.getChar(StrikeCache.heightOffset + j);
        if (neoUnsafe.getChar(StrikeCache.rowBytesOffset + j) == c) {
            return i;
        }
        long address = neoUnsafe.getAddress(j + StrikeCache.pixelDataOffset);
        if (address == 0) {
            return i;
        }
        for (int i2 = 0; i2 < c2; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                if (StrikeCache.unsafe.getByte((i2 * r2) + address + i3) != 0) {
                    return i;
                }
            }
        }
        return i + 1;
    }

    private synchronized void initGlyphCache() {
        int i;
        int numGlyphs = this.mapper.getNumGlyphs();
        int i2 = 1;
        if (this.segmentedCache) {
            int i3 = ((numGlyphs + 32) - 1) / 32;
            if (PhysicalStrike.longAddresses) {
                long[][] jArr = new long[i3];
                this.segLongGlyphImages = jArr;
                this.disposer.segLongGlyphImages = jArr;
                i = 4;
            } else {
                int[][] iArr = new int[i3];
                this.segIntGlyphImages = iArr;
                this.disposer.segIntGlyphImages = iArr;
                i = 3;
            }
            i2 = i;
        } else if (PhysicalStrike.longAddresses) {
            long[] jArr2 = new long[numGlyphs];
            this.longGlyphImages = jArr2;
            this.disposer.longGlyphImages = jArr2;
            i2 = 2;
        } else {
            int[] iArr2 = new int[numGlyphs];
            this.intGlyphImages = iArr2;
            this.disposer.intGlyphImages = iArr2;
        }
        this.glyphCacheFormat = i2;
    }

    private static boolean initNative() {
        return false;
    }

    private synchronized long setCachedGlyphPtr(int i, long j) {
        try {
        } catch (Exception unused) {
            int i2 = this.glyphCacheFormat;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            return ((NullFontScaler) FontScaler.getNullScaler()).getGlyphImage(NullFontScaler.getNullScalerContext(), i);
                        }
                    }
                }
                StrikeCache.freeLongPointer(j);
                return ((NullFontScaler) FontScaler.getNullScaler()).getGlyphImage(NullFontScaler.getNullScalerContext(), i);
            }
            StrikeCache.freeIntPointer((int) j);
            return ((NullFontScaler) FontScaler.getNullScaler()).getGlyphImage(NullFontScaler.getNullScalerContext(), i);
        }
        return setCachedGlyphPtrInternal(i, j);
    }

    private long setCachedGlyphPtrInternal(int i, long j) {
        int i2 = this.glyphCacheFormat;
        if (i2 == 1) {
            int[] iArr = this.intGlyphImages;
            if (iArr[i] == 0) {
                iArr[i] = (int) j;
                return j;
            }
            StrikeCache.freeIntPointer((int) j);
            return this.intGlyphImages[i] & 4294967295L;
        }
        if (i2 == 2) {
            long[] jArr = this.longGlyphImages;
            if (jArr[i] == 0) {
                jArr[i] = j;
                return j;
            }
            StrikeCache.freeLongPointer(j);
            return this.longGlyphImages[i];
        }
        if (i2 == 3) {
            int i3 = i >> 5;
            int i4 = i % 32;
            int[][] iArr2 = this.segIntGlyphImages;
            if (iArr2[i3] == null) {
                iArr2[i3] = new int[32];
            }
            int[] iArr3 = iArr2[i3];
            if (iArr3[i4] == 0) {
                iArr3[i4] = (int) j;
                return j;
            }
            StrikeCache.freeIntPointer((int) j);
            return this.segIntGlyphImages[i3][i4] & 4294967295L;
        }
        if (i2 != 4) {
            initGlyphCache();
            return setCachedGlyphPtr(i, j);
        }
        int i5 = i >> 5;
        int i6 = i % 32;
        long[][] jArr2 = this.segLongGlyphImages;
        if (jArr2[i5] == null) {
            jArr2[i5] = new long[32];
        }
        long[] jArr3 = jArr2[i5];
        if (jArr3[i6] == 0) {
            jArr3[i6] = j;
            return j;
        }
        StrikeCache.freeLongPointer(j);
        return this.segLongGlyphImages[i5][i6];
    }

    @Override // sun.font.PhysicalStrike
    public void adjustPoint(Point2D.Float r1) {
        AffineTransform affineTransform = this.invertDevTx;
        if (affineTransform != null) {
            affineTransform.deltaTransform(r1, r1);
        }
    }

    public long getCachedGlyphPtr(int i) {
        try {
            return getCachedGlyphPtrInternal(i);
        } catch (Exception unused) {
            return ((NullFontScaler) FontScaler.getNullScaler()).getGlyphImage(NullFontScaler.getNullScalerContext(), i);
        }
    }

    @Override // sun.font.PhysicalStrike, sun.font.FontStrike
    public Point2D.Float getCharMetrics(char c) {
        return getGlyphMetrics(this.mapper.charToGlyph(c));
    }

    @Override // sun.font.PhysicalStrike, sun.font.FontStrike
    public float getCodePointAdvance(int i) {
        return getGlyphAdvance(this.mapper.charToGlyph(i));
    }

    @Override // sun.font.PhysicalStrike, sun.font.FontStrike
    public StrikeMetrics getFontMetrics() {
        if (this.strikeMetrics == null) {
            StrikeMetrics fontMetrics = this.fileFont.getFontMetrics(this.pScalerContext);
            this.strikeMetrics = fontMetrics;
            AffineTransform affineTransform = this.invertDevTx;
            if (affineTransform != null) {
                fontMetrics.convertToUserSpace(affineTransform);
            }
        }
        return this.strikeMetrics;
    }

    @Override // sun.font.FontStrike
    public float getGlyphAdvance(int i) {
        return getGlyphAdvance(i, true);
    }

    @Override // sun.font.FontStrike
    public void getGlyphImageBounds(int i, Point2D.Float r9, Rectangle rectangle) {
        long glyphImagePtr = getGlyphImagePtr(i);
        if (glyphImagePtr == 0) {
            rectangle.f97732x = (int) Math.floor(r9.f97777x + 0.5f);
            rectangle.f97733y = (int) Math.floor(r9.f97778y + 0.5f);
            rectangle.height = 0;
            rectangle.width = 0;
            return;
        }
        NeoUnsafe neoUnsafe = StrikeCache.unsafe;
        float f = neoUnsafe.getFloat(StrikeCache.topLeftXOffset + glyphImagePtr);
        float f2 = neoUnsafe.getFloat(StrikeCache.topLeftYOffset + glyphImagePtr);
        rectangle.f97732x = (int) Math.floor(r9.f97777x + f + 0.5f);
        rectangle.f97733y = (int) Math.floor(r9.f97778y + f2 + 0.5f);
        rectangle.width = neoUnsafe.getShort(StrikeCache.widthOffset + glyphImagePtr) & 65535;
        rectangle.height = neoUnsafe.getShort(StrikeCache.heightOffset + glyphImagePtr) & 65535;
        int i2 = this.desc.aaHint;
        if ((i2 == 4 || i2 == 5) && f <= -2.0f) {
            int glyphImageMinX = getGlyphImageMinX(glyphImagePtr, rectangle.f97732x);
            int i3 = rectangle.f97732x;
            if (glyphImageMinX > i3) {
                rectangle.f97732x = i3 + 1;
                rectangle.width--;
            }
        }
    }

    public long getGlyphImageFromNative(int i) {
        return FontUtilities.isWindows ? getGlyphImageFromWindows(i) : getGlyphImageFromX11(i);
    }

    public long getGlyphImageFromWindows(int i) {
        String familyName = this.fileFont.getFamilyName(null);
        int i2 = this.desc.style;
        int style = (i2 & 2) | (i2 & 1) | this.fileFont.getStyle();
        int i3 = this.intPtSize;
        long _getGlyphImageFromWindows = _getGlyphImageFromWindows(familyName, style, i3, i, this.desc.fmHint == 2, ((TrueTypeFont) this.fileFont).fontDataSize);
        if (_getGlyphImageFromWindows != 0) {
            StrikeCache.unsafe.putFloat(StrikeCache.xAdvanceOffset + _getGlyphImageFromWindows, getGlyphAdvance(i, false));
            return _getGlyphImageFromWindows;
        }
        if (FontUtilities.isLogging()) {
            FontUtilities.logWarning("Failed to render glyph using GDI: code=" + i + ", fontFamily=" + familyName + ", style=" + style + ", size=" + i3);
        }
        return this.fileFont.getGlyphImage(this.pScalerContext, i);
    }

    public long getGlyphImageFromX11(int i) {
        char c = this.fileFont.glyphToCharMap[i];
        for (int i2 = 0; i2 < this.nativeStrikes.length; i2++) {
            CharToGlyphMapper mapper = this.fileFont.nativeFonts[i2].getMapper();
            int charToGlyph = mapper.charToGlyph(c) & 65535;
            if (charToGlyph != mapper.getMissingGlyphCode()) {
                long glyphImagePtrNoCache = this.nativeStrikes[i2].getGlyphImagePtrNoCache(charToGlyph);
                if (glyphImagePtrNoCache != 0) {
                    return glyphImagePtrNoCache;
                }
            }
        }
        return this.fileFont.getGlyphImage(this.pScalerContext, i);
    }

    @Override // sun.font.FontStrike
    public long getGlyphImagePtr(int i) {
        if (i >= 65534) {
            return StrikeCache.invisibleGlyphPtr;
        }
        long cachedGlyphPtr = getCachedGlyphPtr(i);
        if (cachedGlyphPtr != 0) {
            return cachedGlyphPtr;
        }
        if (this.useNatives) {
            cachedGlyphPtr = getGlyphImageFromNative(i);
            if (cachedGlyphPtr == 0 && FontUtilities.isLogging()) {
                FontUtilities.logInfo("Strike for " + this.fileFont + " at size = " + this.intPtSize + " couldn't get native glyph for code = " + i);
            }
        }
        if (cachedGlyphPtr == 0) {
            cachedGlyphPtr = this.fileFont.getGlyphImage(this.pScalerContext, i);
        }
        return setCachedGlyphPtr(i, cachedGlyphPtr);
    }

    @Override // sun.font.FontStrike
    public void getGlyphImagePtrs(int[] iArr, long[] jArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 >= 65534) {
                jArr[i2] = StrikeCache.invisibleGlyphPtr;
            } else {
                long cachedGlyphPtr = getCachedGlyphPtr(i3);
                jArr[i2] = cachedGlyphPtr;
                if (cachedGlyphPtr == 0) {
                    long glyphImageFromNative = this.useNatives ? getGlyphImageFromNative(i3) : 0L;
                    if (glyphImageFromNative == 0) {
                        glyphImageFromNative = this.fileFont.getGlyphImage(this.pScalerContext, i3);
                    }
                    jArr[i2] = setCachedGlyphPtr(i3, glyphImageFromNative);
                }
            }
        }
    }

    @Override // sun.font.FontStrike
    public Point2D.Float getGlyphMetrics(int i) {
        return getGlyphMetrics(i, true);
    }

    @Override // sun.font.FontStrike
    public GeneralPath getGlyphOutline(int i, float f, float f2) {
        ConcurrentHashMap<Integer, GeneralPath> concurrentHashMap;
        WeakReference<ConcurrentHashMap<Integer, GeneralPath>> weakReference = this.outlineMapRef;
        GeneralPath generalPath = null;
        if (weakReference != null) {
            concurrentHashMap = weakReference.get();
            if (concurrentHashMap != null) {
                generalPath = concurrentHashMap.get(Integer.valueOf(i));
            }
        } else {
            concurrentHashMap = null;
        }
        if (generalPath == null) {
            generalPath = this.fileFont.getGlyphOutline(this.pScalerContext, i, 0.0f, 0.0f);
            if (concurrentHashMap == null) {
                concurrentHashMap = new ConcurrentHashMap<>();
                this.outlineMapRef = new WeakReference<>(concurrentHashMap);
            }
            concurrentHashMap.put(Integer.valueOf(i), generalPath);
        }
        GeneralPath generalPath2 = (GeneralPath) generalPath.clone();
        if (f != 0.0f || f2 != 0.0f) {
            generalPath2.transform(AffineTransform.getTranslateInstance(f, f2));
        }
        return generalPath2;
    }

    @Override // sun.font.FontStrike
    public Rectangle2D.Float getGlyphOutlineBounds(int i) {
        if (this.boundsMap == null) {
            this.boundsMap = new ConcurrentHashMap<>();
        }
        Integer valueOf = Integer.valueOf(i);
        Rectangle2D.Float r1 = this.boundsMap.get(valueOf);
        if (r1 != null) {
            return r1;
        }
        Rectangle2D.Float glyphOutlineBounds = this.fileFont.getGlyphOutlineBounds(this.pScalerContext, i);
        this.boundsMap.put(valueOf, glyphOutlineBounds);
        return glyphOutlineBounds;
    }

    @Override // sun.font.FontStrike
    public GeneralPath getGlyphVectorOutline(int[] iArr, float f, float f2) {
        return this.fileFont.getGlyphVectorOutline(this.pScalerContext, iArr, iArr.length, f, f2);
    }

    @Override // sun.font.PhysicalStrike, sun.font.FontStrike
    public int getNumGlyphs() {
        return this.fileFont.getNumGlyphs();
    }

    public Rectangle2D getOutlineBounds(int i) {
        return this.fileFont.getGlyphOutlineBounds(this.pScalerContext, i);
    }

    @Override // sun.font.PhysicalStrike
    public int getSlot0GlyphImagePtrs(int[] iArr, long[] jArr, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            if ((i4 >>> 24) != 0) {
                return i2;
            }
            i2++;
            if (i4 >= 65534) {
                jArr[i3] = StrikeCache.invisibleGlyphPtr;
            } else {
                long cachedGlyphPtr = getCachedGlyphPtr(i4);
                jArr[i3] = cachedGlyphPtr;
                if (cachedGlyphPtr == 0) {
                    long glyphImageFromNative = this.useNatives ? getGlyphImageFromNative(i4) : 0L;
                    if (glyphImageFromNative == 0) {
                        glyphImageFromNative = this.fileFont.getGlyphImage(this.pScalerContext, i4);
                    }
                    jArr[i3] = setCachedGlyphPtr(i4, glyphImageFromNative);
                }
            }
        }
        return i2;
    }

    private float getGlyphAdvance(int i, boolean z) {
        float[][] fArr;
        float[] fArr2;
        float f;
        float[][] fArr3;
        long cachedGlyphPtr;
        if (i >= 65534) {
            return 0.0f;
        }
        float[] fArr4 = this.horizontalAdvances;
        if (fArr4 != null) {
            float f2 = fArr4[i];
            if (f2 != Float.MAX_VALUE) {
                if (z || this.invertDevTx == null) {
                    return f2;
                }
                Point2D.Float r6 = new Point2D.Float(f2, 0.0f);
                this.desc.devTx.deltaTransform(r6, r6);
                return r6.f97777x;
            }
        } else if (this.segmentedCache && (fArr = this.segHorizontalAdvances) != null && (fArr2 = fArr[i >> 5]) != null) {
            float f3 = fArr2[i % 32];
            if (f3 != Float.MAX_VALUE) {
                if (z || this.invertDevTx == null) {
                    return f3;
                }
                Point2D.Float r62 = new Point2D.Float(f3, 0.0f);
                this.desc.devTx.deltaTransform(r62, r62);
                return r62.f97777x;
            }
        }
        if (!z && this.invertDevTx != null) {
            Point2D.Float r7 = new Point2D.Float();
            this.fileFont.getGlyphMetrics(this.pScalerContext, i, r7);
            return r7.f97777x;
        }
        if (this.invertDevTx == null && z) {
            if (this.getImageWithAdvance) {
                cachedGlyphPtr = getGlyphImagePtr(i);
            } else {
                cachedGlyphPtr = getCachedGlyphPtr(i);
            }
            if (cachedGlyphPtr != 0) {
                f = StrikeCache.unsafe.getFloat(cachedGlyphPtr + StrikeCache.xAdvanceOffset);
            } else {
                f = this.fileFont.getGlyphAdvance(this.pScalerContext, i);
            }
        } else {
            f = getGlyphMetrics(i, z).f97777x;
        }
        float[] fArr5 = this.horizontalAdvances;
        if (fArr5 != null) {
            fArr5[i] = f;
        } else if (this.segmentedCache && (fArr3 = this.segHorizontalAdvances) != null) {
            int i2 = i >> 5;
            int i3 = i % 32;
            if (fArr3[i2] == null) {
                fArr3[i2] = new float[32];
                for (int i4 = 0; i4 < 32; i4++) {
                    this.segHorizontalAdvances[i2][i4] = Float.MAX_VALUE;
                }
            }
            this.segHorizontalAdvances[i2][i3] = f;
        }
        return f;
    }

    private Point2D.Float getGlyphMetrics(int i, boolean z) {
        Point2D.Float r7 = new Point2D.Float();
        if (i >= 65534) {
            return r7;
        }
        Integer valueOf = Integer.valueOf(i);
        SoftReference<ConcurrentHashMap<Integer, Point2D.Float>> softReference = this.glyphMetricsMapRef;
        Point2D.Float r2 = null;
        ConcurrentHashMap<Integer, Point2D.Float> concurrentHashMap = softReference != null ? softReference.get() : null;
        if (concurrentHashMap != null && (r2 = concurrentHashMap.get(valueOf)) != null) {
            r7.f97777x = r2.f97777x;
            r7.f97778y = r2.f97778y;
            return r7;
        }
        if (r2 == null) {
            this.fileFont.getGlyphMetrics(this.pScalerContext, i, r7);
            AffineTransform affineTransform = this.invertDevTx;
            if (affineTransform != null) {
                affineTransform.deltaTransform(r7, r7);
            }
            Point2D.Float r6 = new Point2D.Float(r7.f97777x, r7.f97778y);
            if (concurrentHashMap == null) {
                concurrentHashMap = new ConcurrentHashMap<>();
                this.glyphMetricsMapRef = new SoftReference<>(concurrentHashMap);
            }
            concurrentHashMap.put(valueOf, r6);
        }
        return r7;
    }
}
