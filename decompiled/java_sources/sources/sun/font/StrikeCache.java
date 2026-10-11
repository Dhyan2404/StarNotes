package sun.font;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import jdk.internal.misc.NeoUnsafe;
import sun.java2d.Disposer;

/* loaded from: classes16.dex */
public final class StrikeCache {
    static int boundsOffset;
    static int cacheCellOffset;
    static boolean cacheRefTypeWeak;
    static int glyphInfoSize;
    static int heightOffset;
    static long invisibleGlyphPtr;
    static int managedOffset;
    static int nativeAddressSize;
    static int pixelDataOffset;
    static FontStrike[] recentStrikes;
    static int rowBytesOffset;
    static int topLeftXOffset;
    static int topLeftYOffset;
    static int widthOffset;
    static int xAdvanceOffset;
    static int yAdvanceOffset;
    static final NeoUnsafe unsafe = NeoUnsafe.getUnsafe();
    static ReferenceQueue<Object> refQueue = Disposer.getQueue();
    static ArrayList<GlyphDisposedListener> disposeListeners = new ArrayList<>(1);
    static int MINSTRIKES = 8;
    static int recentStrikeIndex = 0;

    /* loaded from: classes16.dex */
    public interface DisposableStrike {
        FontStrikeDisposer getDisposer();
    }

    /* loaded from: classes16.dex */
    public static class SoftDisposerRef extends SoftReference<FontStrike> implements DisposableStrike {
        private FontStrikeDisposer disposer;

        public SoftDisposerRef(FontStrike fontStrike) {
            super(fontStrike, StrikeCache.refQueue);
            FontStrikeDisposer fontStrikeDisposer = fontStrike.disposer;
            this.disposer = fontStrikeDisposer;
            Disposer.addReference(this, fontStrikeDisposer);
        }

        @Override // sun.font.StrikeCache.DisposableStrike
        public FontStrikeDisposer getDisposer() {
            return this.disposer;
        }
    }

    /* loaded from: classes16.dex */
    public static class WeakDisposerRef extends WeakReference<FontStrike> implements DisposableStrike {
        private FontStrikeDisposer disposer;

        public WeakDisposerRef(FontStrike fontStrike) {
            super(fontStrike, StrikeCache.refQueue);
            FontStrikeDisposer fontStrikeDisposer = fontStrike.disposer;
            this.disposer = fontStrikeDisposer;
            Disposer.addReference(this, fontStrikeDisposer);
        }

        @Override // sun.font.StrikeCache.DisposableStrike
        public FontStrikeDisposer getDisposer() {
            return this.disposer;
        }
    }

    static {
        long[] jArr = new long[13];
        getGlyphCacheDescription(jArr);
        jArr[0] = 4;
        int i = (int) 4;
        nativeAddressSize = i;
        glyphInfoSize = (int) jArr[1];
        xAdvanceOffset = (int) jArr[2];
        yAdvanceOffset = (int) jArr[3];
        widthOffset = (int) jArr[4];
        heightOffset = (int) jArr[5];
        rowBytesOffset = (int) jArr[6];
        topLeftXOffset = (int) jArr[7];
        topLeftYOffset = (int) jArr[8];
        pixelDataOffset = (int) jArr[9];
        invisibleGlyphPtr = jArr[10];
        cacheCellOffset = (int) jArr[11];
        managedOffset = (int) jArr[12];
        if (i >= 4) {
            AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.font.StrikeCache.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    StrikeCache.cacheRefTypeWeak = System.getProperty("sun.java2d.font.reftype", "soft").equals("weak");
                    String property = System.getProperty("sun.java2d.font.minstrikes");
                    if (property != null) {
                        try {
                            int parseInt = Integer.parseInt(property);
                            StrikeCache.MINSTRIKES = parseInt;
                            if (parseInt <= 0) {
                                StrikeCache.MINSTRIKES = 1;
                            }
                        } catch (NumberFormatException unused) {
                        }
                    }
                    StrikeCache.recentStrikes = new FontStrike[StrikeCache.MINSTRIKES];
                    return null;
                }
            });
            return;
        }
        throw new InternalError("Unexpected address size for font data: " + nativeAddressSize);
    }

    public static void addGlyphDisposedListener(GlyphDisposedListener glyphDisposedListener) {
        synchronized (disposeListeners) {
            disposeListeners.add(glyphDisposedListener);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void disposeStrike(final sun.font.FontStrikeDisposer r2) {
        /*
            boolean r0 = sun.java2d.Disposer.pollingQueue
            if (r0 == 0) goto L8
            doDispose(r2)
            return
        L8:
            java.awt.GraphicsEnvironment r0 = java.awt.GraphicsEnvironment.getLocalGraphicsEnvironment()
            boolean r1 = java.awt.GraphicsEnvironment.isHeadless()
            if (r1 != 0) goto L2b
            java.awt.GraphicsDevice r0 = r0.getDefaultScreenDevice()
            java.awt.GraphicsConfiguration r0 = r0.getDefaultConfiguration()
            boolean r1 = r0 instanceof sun.java2d.pipe.p121hw.AccelGraphicsConfig
            if (r1 == 0) goto L2b
            sun.java2d.pipe.hw.AccelGraphicsConfig r0 = (sun.java2d.pipe.p121hw.AccelGraphicsConfig) r0
            sun.java2d.pipe.BufferedContext r0 = r0.getContext()
            if (r0 == 0) goto L2b
            sun.java2d.pipe.RenderQueue r0 = r0.getRenderQueue()
            goto L2c
        L2b:
            r0 = 0
        L2c:
            if (r0 == 0) goto L42
            r0.lock()
            sun.font.StrikeCache$2 r1 = new sun.font.StrikeCache$2     // Catch: java.lang.Throwable -> L3d
            r1.<init>()     // Catch: java.lang.Throwable -> L3d
            r0.flushAndInvokeNow(r1)     // Catch: java.lang.Throwable -> L3d
            r0.unlock()
            goto L45
        L3d:
            r2 = move-exception
            r0.unlock()
            throw r2
        L42:
            doDispose(r2)
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.font.StrikeCache.disposeStrike(sun.font.FontStrikeDisposer):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void doDispose(FontStrikeDisposer fontStrikeDisposer) {
        int[] iArr = fontStrikeDisposer.intGlyphImages;
        if (iArr != null) {
            freeCachedIntMemory(iArr, fontStrikeDisposer.pScalerContext);
            return;
        }
        long[] jArr = fontStrikeDisposer.longGlyphImages;
        if (jArr != null) {
            freeCachedLongMemory(jArr, fontStrikeDisposer.pScalerContext);
            return;
        }
        if (fontStrikeDisposer.segIntGlyphImages != null) {
            int i = 0;
            while (true) {
                int[][] iArr2 = fontStrikeDisposer.segIntGlyphImages;
                if (i >= iArr2.length) {
                    break;
                }
                int[] iArr3 = iArr2[i];
                if (iArr3 != null) {
                    freeCachedIntMemory(iArr3, fontStrikeDisposer.pScalerContext);
                    fontStrikeDisposer.pScalerContext = 0L;
                    fontStrikeDisposer.segIntGlyphImages[i] = null;
                }
                i++;
            }
            long j = fontStrikeDisposer.pScalerContext;
            if (j != 0) {
                freeCachedIntMemory(new int[0], j);
                return;
            }
            return;
        }
        if (fontStrikeDisposer.segLongGlyphImages == null) {
            if (fontStrikeDisposer.pScalerContext != 0) {
                if (longAddresses()) {
                    freeCachedLongMemory(new long[0], fontStrikeDisposer.pScalerContext);
                    return;
                } else {
                    freeCachedIntMemory(new int[0], fontStrikeDisposer.pScalerContext);
                    return;
                }
            }
            return;
        }
        int i2 = 0;
        while (true) {
            long[][] jArr2 = fontStrikeDisposer.segLongGlyphImages;
            if (i2 >= jArr2.length) {
                break;
            }
            long[] jArr3 = jArr2[i2];
            if (jArr3 != null) {
                freeCachedLongMemory(jArr3, fontStrikeDisposer.pScalerContext);
                fontStrikeDisposer.pScalerContext = 0L;
                fontStrikeDisposer.segLongGlyphImages[i2] = null;
            }
            i2++;
        }
        long j2 = fontStrikeDisposer.pScalerContext;
        if (j2 != 0) {
            freeCachedLongMemory(new long[0], j2);
        }
    }

    private static void freeCachedIntMemory(int[] iArr, long j) {
        synchronized (disposeListeners) {
            if (disposeListeners.size() > 0) {
                ArrayList arrayList = null;
                for (int i = 0; i < iArr.length; i++) {
                    if (iArr[i] != 0 && unsafe.getByte(r3 + managedOffset) == 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(Long.valueOf(iArr[i]));
                    }
                }
                if (arrayList != null) {
                    notifyDisposeListeners(arrayList);
                }
            }
        }
        freeIntMemory(iArr, j);
    }

    private static void freeCachedLongMemory(long[] jArr, long j) {
        synchronized (disposeListeners) {
            if (disposeListeners.size() > 0) {
                ArrayList arrayList = null;
                for (int i = 0; i < jArr.length; i++) {
                    long j2 = jArr[i];
                    if (j2 != 0 && unsafe.getByte(j2 + managedOffset) == 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(Long.valueOf(jArr[i]));
                    }
                }
                if (arrayList != null) {
                    notifyDisposeListeners(arrayList);
                }
            }
        }
        freeLongMemory(jArr, j);
    }

    private static void freeIntMemory(int[] iArr, long j) {
    }

    public static void freeIntPointer(int i) {
    }

    private static void freeLongMemory(long[] jArr, long j) {
    }

    public static void freeLongPointer(long j) {
    }

    public static void getGlyphCacheDescription(long[] jArr) {
    }

    public static Reference<FontStrike> getStrikeRef(FontStrike fontStrike) {
        return getStrikeRef(fontStrike, cacheRefTypeWeak);
    }

    private static boolean longAddresses() {
        return nativeAddressSize == 8;
    }

    private static void notifyDisposeListeners(ArrayList<Long> arrayList) {
        Iterator<GlyphDisposedListener> it2 = disposeListeners.iterator();
        while (it2.hasNext()) {
            it2.next().glyphDisposed(arrayList);
        }
    }

    public static void refStrike(FontStrike fontStrike) {
        int i = recentStrikeIndex;
        recentStrikes[i] = fontStrike;
        int i2 = i + 1;
        if (i2 == MINSTRIKES) {
            i2 = 0;
        }
        recentStrikeIndex = i2;
    }

    public static Reference<FontStrike> getStrikeRef(FontStrike fontStrike, boolean z) {
        if (fontStrike.disposer == null) {
            if (z) {
                return new WeakReference(fontStrike);
            }
            return new SoftReference(fontStrike);
        }
        if (z) {
            return new WeakDisposerRef(fontStrike);
        }
        return new SoftDisposerRef(fontStrike);
    }
}
