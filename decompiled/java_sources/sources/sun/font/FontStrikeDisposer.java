package sun.font;

import java.lang.ref.Reference;
import java.util.concurrent.ConcurrentHashMap;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes16.dex */
public class FontStrikeDisposer implements DisposerRecord, Disposer.PollDisposable {
    boolean comp;
    FontStrikeDesc desc;
    boolean disposed;
    int[] intGlyphImages;
    long[] longGlyphImages;
    long pScalerContext;
    int[][] segIntGlyphImages;
    long[][] segLongGlyphImages;
    ConcurrentHashMap<FontStrikeDesc, Reference<FontStrike>> strikeCache;

    public FontStrikeDisposer(Font2D font2D, FontStrikeDesc fontStrikeDesc, long j, int[] iArr) {
        this.pScalerContext = 0L;
        this.disposed = false;
        this.comp = false;
        this.strikeCache = font2D.strikeCache;
        this.desc = fontStrikeDesc;
        this.pScalerContext = j;
        this.intGlyphImages = iArr;
    }

    @Override // sun.java2d.DisposerRecord
    public synchronized void dispose() {
        if (!this.disposed) {
            Reference<FontStrike> reference = this.strikeCache.get(this.desc);
            if (reference != null && reference.get() == null) {
                this.strikeCache.remove(this.desc);
            }
            StrikeCache.disposeStrike(this);
            this.disposed = true;
        }
    }

    public FontStrikeDisposer(Font2D font2D, FontStrikeDesc fontStrikeDesc, long j, long[] jArr) {
        this.pScalerContext = 0L;
        this.disposed = false;
        this.comp = false;
        this.strikeCache = font2D.strikeCache;
        this.desc = fontStrikeDesc;
        this.pScalerContext = j;
        this.longGlyphImages = jArr;
    }

    public FontStrikeDisposer(Font2D font2D, FontStrikeDesc fontStrikeDesc, long j) {
        this.pScalerContext = 0L;
        this.disposed = false;
        this.comp = false;
        this.strikeCache = font2D.strikeCache;
        this.desc = fontStrikeDesc;
        this.pScalerContext = j;
    }

    public FontStrikeDisposer(Font2D font2D, FontStrikeDesc fontStrikeDesc) {
        this.pScalerContext = 0L;
        this.disposed = false;
        this.comp = false;
        this.strikeCache = font2D.strikeCache;
        this.desc = fontStrikeDesc;
        this.comp = true;
    }
}
