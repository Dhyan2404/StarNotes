package sun.font;

import java.awt.geom.Point2D;
import java.lang.ref.SoftReference;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import sun.font.GlyphLayout;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes16.dex */
public final class SunLayoutEngine implements GlyphLayout.LayoutEngine, GlyphLayout.LayoutEngineFactory {
    static WeakHashMap<Font2D, Boolean> aatInfo;
    private static final WeakHashMap<Font2D, FaceRef> facePtr;
    private static GlyphLayout.LayoutEngineFactory instance;
    private SoftReference<ConcurrentHashMap<GlyphLayout.LayoutEngineKey, GlyphLayout.LayoutEngine>> cacheref = new SoftReference<>(null);
    private GlyphLayout.LayoutEngineKey key;

    /* loaded from: classes16.dex */
    public static class FaceRef implements DisposerRecord {
        private Long facePtr;
        private Font2D font;

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized long getNativePtr() {
            if (this.facePtr == null) {
                Font2D font2D = this.font;
                Long valueOf = Long.valueOf(SunLayoutEngine.createFace(font2D, SunLayoutEngine.isAAT(font2D), this.font.getPlatformNativeFontPtr()));
                this.facePtr = valueOf;
                if (valueOf.longValue() != 0) {
                    Disposer.addObjectRecord(this.font, this);
                }
                this.font = null;
            }
            return this.facePtr.longValue();
        }

        @Override // sun.java2d.DisposerRecord
        public void dispose() {
            SunLayoutEngine.disposeFace(this.facePtr.longValue());
        }

        private FaceRef(Font2D font2D) {
            this.font = font2D;
        }
    }

    static {
        FontManagerNativeLibrary.load();
        aatInfo = new WeakHashMap<>();
        facePtr = new WeakHashMap<>();
    }

    private SunLayoutEngine() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long createFace(Font2D font2D, boolean z, long j) {
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void disposeFace(long j) {
    }

    private long getFacePtr(Font2D font2D) {
        FaceRef faceRef;
        WeakHashMap<Font2D, FaceRef> weakHashMap = facePtr;
        synchronized (weakHashMap) {
            faceRef = weakHashMap.get(font2D);
            if (faceRef == null) {
                faceRef = new FaceRef(font2D);
                weakHashMap.put(font2D, faceRef);
            }
        }
        return faceRef.getNativePtr();
    }

    public static GlyphLayout.LayoutEngineFactory instance() {
        if (instance == null) {
            instance = new SunLayoutEngine();
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002c, code lost:
    
        if (r0.getDirectoryEntry(sun.font.TrueTypeFont.mortTag) == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0043, code lost:
    
        if (r0.getTableBytes(sun.font.TrueTypeFont.mortTag) == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isAAT(sun.font.Font2D r5) {
        /*
            java.util.WeakHashMap<sun.font.Font2D, java.lang.Boolean> r0 = sun.font.SunLayoutEngine.aatInfo
            monitor-enter(r0)
            java.util.WeakHashMap<sun.font.Font2D, java.lang.Boolean> r1 = sun.font.SunLayoutEngine.aatInfo     // Catch: java.lang.Throwable -> L57
            java.lang.Object r1 = r1.get(r5)     // Catch: java.lang.Throwable -> L57
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L57
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto L13
            boolean r5 = r1.booleanValue()
            return r5
        L13:
            boolean r0 = r5 instanceof sun.font.TrueTypeFont
            r1 = 1836020340(0x6d6f7274, float:4.6315802E27)
            r2 = 1
            r3 = 1836020344(0x6d6f7278, float:4.6315813E27)
            r4 = 0
            if (r0 == 0) goto L32
            r0 = r5
            sun.font.TrueTypeFont r0 = (sun.font.TrueTypeFont) r0
            sun.font.TrueTypeFont$DirectoryEntry r3 = r0.getDirectoryEntry(r3)
            if (r3 != 0) goto L30
            sun.font.TrueTypeFont$DirectoryEntry r0 = r0.getDirectoryEntry(r1)
            if (r0 == 0) goto L2f
            goto L30
        L2f:
            r2 = r4
        L30:
            r4 = r2
            goto L46
        L32:
            boolean r0 = r5 instanceof sun.font.PhysicalFont
            if (r0 == 0) goto L46
            r0 = r5
            sun.font.PhysicalFont r0 = (sun.font.PhysicalFont) r0
            byte[] r3 = r0.getTableBytes(r3)
            if (r3 != 0) goto L30
            byte[] r0 = r0.getTableBytes(r1)
            if (r0 == 0) goto L2f
            goto L30
        L46:
            java.util.WeakHashMap<sun.font.Font2D, java.lang.Boolean> r1 = sun.font.SunLayoutEngine.aatInfo
            monitor-enter(r1)
            java.util.WeakHashMap<sun.font.Font2D, java.lang.Boolean> r0 = sun.font.SunLayoutEngine.aatInfo     // Catch: java.lang.Throwable -> L54
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r4)     // Catch: java.lang.Throwable -> L54
            r0.put(r5, r2)     // Catch: java.lang.Throwable -> L54
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L54
            return r4
        L54:
            r5 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L54
            throw r5
        L57:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L57
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.SunLayoutEngine.isAAT(sun.font.Font2D):boolean");
    }

    private static boolean shape(Font2D font2D, FontStrike fontStrike, float f, float[] fArr, long j, long j2, boolean z, char[] cArr, GlyphLayout.GVData gVData, int i, int i2, int i3, int i4, Point2D.Float r16, int i5, int i6) {
        return false;
    }

    @Override // sun.font.GlyphLayout.LayoutEngineFactory
    public GlyphLayout.LayoutEngine getEngine(Font2D font2D, int i, int i2) {
        return getEngine(new GlyphLayout.LayoutEngineKey(font2D, i, i2));
    }

    @Override // sun.font.GlyphLayout.LayoutEngine
    public void layout(FontStrikeDesc fontStrikeDesc, float[] fArr, float f, int i, int i2, TextRecord textRecord, int i3, Point2D.Float r23, GlyphLayout.GVData gVData) {
        Font2D font = this.key.font();
        font.getStrike(fontStrikeDesc).layout(gVData, font, textRecord.text, f, this.key.script(), textRecord.start, textRecord.limit, i2, r23, i3, i);
    }

    @Override // sun.font.GlyphLayout.LayoutEngineFactory
    public GlyphLayout.LayoutEngine getEngine(GlyphLayout.LayoutEngineKey layoutEngineKey) {
        ConcurrentHashMap<GlyphLayout.LayoutEngineKey, GlyphLayout.LayoutEngine> concurrentHashMap = this.cacheref.get();
        if (concurrentHashMap == null) {
            concurrentHashMap = new ConcurrentHashMap<>();
            this.cacheref = new SoftReference<>(concurrentHashMap);
        }
        GlyphLayout.LayoutEngine layoutEngine = concurrentHashMap.get(layoutEngineKey);
        if (layoutEngine != null) {
            return layoutEngine;
        }
        GlyphLayout.LayoutEngineKey copy = layoutEngineKey.copy();
        SunLayoutEngine sunLayoutEngine = new SunLayoutEngine(copy);
        concurrentHashMap.put(copy, sunLayoutEngine);
        return sunLayoutEngine;
    }

    private SunLayoutEngine(GlyphLayout.LayoutEngineKey layoutEngineKey) {
        this.key = layoutEngineKey;
    }
}
