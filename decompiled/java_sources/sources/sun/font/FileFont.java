package sun.font;

import java.awt.FontFormatException;
import java.awt.geom.GeneralPath;
import java.awt.geom.Point2D;
import java.awt.geom.Rectangle2D;
import java.io.File;
import java.io.IOException;
import java.lang.ref.Reference;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Iterator;
import java.util.List;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes16.dex */
public abstract class FileFont extends PhysicalFont {
    protected int fileSize;
    protected char[] glyphToCharMap;
    protected NativeFont[] nativeFonts;
    protected FontScaler scaler;
    protected boolean useJavaRasterizer;

    /* loaded from: classes16.dex */
    public static class CreatedFontFileDisposerRecord implements DisposerRecord {
        int count;
        File fontFile;
        CreatedFontTracker tracker;

        @Override // sun.java2d.DisposerRecord
        public void dispose() {
            AccessController.doPrivileged(new PrivilegedAction<Object>() { // from class: sun.font.FileFont.CreatedFontFileDisposerRecord.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    synchronized (CreatedFontFileDisposerRecord.this.fontFile) {
                        CreatedFontFileDisposerRecord createdFontFileDisposerRecord = CreatedFontFileDisposerRecord.this;
                        int i = createdFontFileDisposerRecord.count - 1;
                        createdFontFileDisposerRecord.count = i;
                        if (i > 0) {
                            return null;
                        }
                        File file = createdFontFileDisposerRecord.fontFile;
                        if (file != null) {
                            try {
                                CreatedFontTracker createdFontTracker = createdFontFileDisposerRecord.tracker;
                                if (createdFontTracker != null) {
                                    createdFontTracker.subBytes((int) file.length());
                                }
                                CreatedFontFileDisposerRecord.this.fontFile.delete();
                                SunFontManager.getInstance().tmpFontFiles.remove(CreatedFontFileDisposerRecord.this.fontFile);
                            } catch (Exception unused) {
                            }
                        }
                        return null;
                    }
                }
            });
        }

        private CreatedFontFileDisposerRecord(File file, int i, CreatedFontTracker createdFontTracker) {
            this.count = 0;
            this.fontFile = file;
            this.count = i <= 0 ? 1 : i;
            this.tracker = createdFontTracker;
        }
    }

    public FileFont(String str, Object obj) throws FontFormatException {
        super(str, obj);
        this.useJavaRasterizer = true;
    }

    public static void setFileToRemove(List<Font2D> list, File file, int i, CreatedFontTracker createdFontTracker) {
        CreatedFontFileDisposerRecord createdFontFileDisposerRecord = new CreatedFontFileDisposerRecord(file, i, createdFontTracker);
        Iterator<Font2D> it2 = list.iterator();
        while (it2.hasNext()) {
            Disposer.addObjectRecord(it2.next(), createdFontFileDisposerRecord);
        }
    }

    @Override // sun.font.Font2D
    public boolean canDoStyle(int i) {
        return true;
    }

    public abstract void close();

    @Override // sun.font.Font2D
    public FontStrike createStrike(FontStrikeDesc fontStrikeDesc) {
        return new FileFontStrike(this, fontStrikeDesc);
    }

    public synchronized void deregisterFontAndClearStrikeCache() {
        FileFontStrike fileFontStrike;
        SunFontManager.getInstance().deRegisterBadFont(this);
        for (Reference<FontStrike> reference : this.strikeCache.values()) {
            if (reference != null && (fileFontStrike = (FileFontStrike) reference.get()) != null) {
                long j = fileFontStrike.pScalerContext;
                if (j != 0) {
                    this.scaler.invalidateScalerContext(j);
                }
            }
        }
        FontScaler fontScaler = this.scaler;
        if (fontScaler != null) {
            fontScaler.disposeScaler();
        }
        this.scaler = FontScaler.getNullScaler();
    }

    @Override // sun.font.PhysicalFont
    public StrikeMetrics getFontMetrics(long j) {
        try {
            return getScaler().getFontMetrics(j);
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getFontMetrics(j);
        }
    }

    @Override // sun.font.PhysicalFont
    public float getGlyphAdvance(long j, int i) {
        try {
            return getScaler().getGlyphAdvance(j, i);
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getGlyphAdvance(j, i);
        }
    }

    @Override // sun.font.PhysicalFont
    public long getGlyphImage(long j, int i) {
        try {
            return getScaler().getGlyphImage(j, i);
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getGlyphImage(j, i);
        }
    }

    @Override // sun.font.PhysicalFont
    public void getGlyphMetrics(long j, int i, Point2D.Float r5) {
        try {
            getScaler().getGlyphMetrics(j, i, r5);
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            getGlyphMetrics(j, i, r5);
        }
    }

    @Override // sun.font.PhysicalFont
    public GeneralPath getGlyphOutline(long j, int i, float f, float f2) {
        try {
            return getScaler().getGlyphOutline(j, i, f, f2);
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getGlyphOutline(j, i, f, f2);
        }
    }

    @Override // sun.font.PhysicalFont
    public Rectangle2D.Float getGlyphOutlineBounds(long j, int i) {
        try {
            return getScaler().getGlyphOutlineBounds(j, i);
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getGlyphOutlineBounds(j, i);
        }
    }

    @Override // sun.font.PhysicalFont
    public GeneralPath getGlyphVectorOutline(long j, int[] iArr, int i, float f, float f2) {
        try {
            return getScaler().getGlyphVectorOutline(j, iArr, i, f, f2);
        } catch (FontScalerException unused) {
            this.scaler = FontScaler.getNullScaler();
            return this.getGlyphVectorOutline(j, iArr, i, f, f2);
        }
    }

    public String getPublicFileName() {
        boolean z;
        Boolean bool;
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager == null) {
            return this.platName;
        }
        try {
            securityManager.checkPropertyAccess("java.io.tmpdir");
            z = true;
        } catch (SecurityException unused) {
            z = false;
        }
        if (z) {
            return this.platName;
        }
        final File file = new File(this.platName);
        try {
            bool = (Boolean) AccessController.doPrivileged(new PrivilegedExceptionAction<Boolean>() { // from class: sun.font.FileFont.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.security.PrivilegedExceptionAction
                public Boolean run() {
                    boolean z2;
                    try {
                        String canonicalPath = new File(System.getProperty("java.io.tmpdir")).getCanonicalPath();
                        String canonicalPath2 = file.getCanonicalPath();
                        if (canonicalPath2 != null && !canonicalPath2.startsWith(canonicalPath)) {
                            z2 = false;
                            return Boolean.valueOf(z2);
                        }
                        z2 = true;
                        return Boolean.valueOf(z2);
                    } catch (IOException unused2) {
                        return Boolean.TRUE;
                    }
                }
            });
        } catch (PrivilegedActionException unused2) {
            bool = Boolean.TRUE;
        }
        return bool.booleanValue() ? "temp file" : this.platName;
    }

    public abstract FontScaler getScaler();

    @Override // sun.font.Font2D
    public long getUnitsPerEm() {
        return getScaler().getUnitsPerEm();
    }

    public abstract ByteBuffer readBlock(int i, int i2);
}
