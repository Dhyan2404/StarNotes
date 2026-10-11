package sun.font;

import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.font.FontRenderContext;
import java.awt.font.TextLayout;
import java.awt.geom.AffineTransform;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.concurrent.ConcurrentHashMap;
import sun.java2d.Disposer;
import sun.java2d.DisposerRecord;

/* loaded from: classes16.dex */
public final class FontDesignMetrics extends FontMetrics {
    private static final int CURRENT_VERSION = 1;
    private static FontRenderContext DEFAULT_FRC = null;
    private static final int MAXRECENT = 5;
    private static final float UNKNOWN_WIDTH = -1.0f;
    private static float roundingUpValue = 0.95f;
    static final long serialVersionUID = 4480069578560887773L;
    private transient float[] advCache;
    private float ascent;
    private int[] cache;
    private float descent;
    private transient double[] devmatrix;
    private Font font;
    private transient FontStrike fontStrike;
    private transient FontRenderContext frc;
    private AffineTransform frcTx;
    private transient int height;
    private boolean isAntiAliased;
    private float leading;
    private double[] matrix;
    private float maxAdvance;
    private int serVersion;
    private boolean usesFractionalMetrics;
    private static final ConcurrentHashMap<Object, KeyReference> metricsCache = new ConcurrentHashMap<>();
    private static final FontDesignMetrics[] recentMetrics = new FontDesignMetrics[5];
    private static int recentIndex = 0;

    /* loaded from: classes16.dex */
    public static class KeyReference extends SoftReference implements DisposerRecord, Disposer.PollDisposable {
        static ReferenceQueue queue = Disposer.getQueue();
        Object key;

        public KeyReference(Object obj, Object obj2) {
            super(obj2, queue);
            this.key = obj;
            Disposer.addReference(this, this);
        }

        @Override // sun.java2d.DisposerRecord
        public void dispose() {
            if (FontDesignMetrics.metricsCache.get(this.key) == this) {
                FontDesignMetrics.metricsCache.remove(this.key);
            }
        }
    }

    /* loaded from: classes16.dex */
    public static class MetricsKey {
        static final MetricsKey key = new MetricsKey();
        Font font;
        FontRenderContext frc;
        int hash;

        public MetricsKey() {
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof MetricsKey)) {
                return false;
            }
            MetricsKey metricsKey = (MetricsKey) obj;
            return this.font.equals(metricsKey.font) && this.frc.equals(metricsKey.frc);
        }

        public int hashCode() {
            return this.hash;
        }

        public void init(Font font, FontRenderContext fontRenderContext) {
            this.font = font;
            this.frc = fontRenderContext;
            this.hash = font.hashCode() + fontRenderContext.hashCode();
        }

        public MetricsKey(Font font, FontRenderContext fontRenderContext) {
            init(font, fontRenderContext);
        }
    }

    private FontDesignMetrics(Font font) {
        this(font, getDefaultFrc());
    }

    private static FontRenderContext getDefaultFrc() {
        return DEFAULT_FRC;
    }

    private float getLatinCharWidth(char c) {
        float f = this.advCache[c];
        if (f != -1.0f) {
            return f;
        }
        float handleCharWidth = handleCharWidth(c);
        this.advCache[c] = handleCharWidth;
        return handleCharWidth;
    }

    public static FontDesignMetrics getMetrics(Font font) {
        return getMetrics(font, getDefaultFrc());
    }

    private float handleCharWidth(int i) {
        return this.fontStrike.getCodePointAdvance(i);
    }

    private void initAdvCache() {
        this.advCache = new float[256];
        for (int i = 0; i < 256; i++) {
            this.advCache[i] = -1.0f;
        }
    }

    private void initMatrixAndMetrics() {
        FontStrike strike = FontUtilities.getFont2D(this.font).getStrike(this.font, this.frc);
        this.fontStrike = strike;
        StrikeMetrics fontMetrics = strike.getFontMetrics();
        this.ascent = fontMetrics.getAscent();
        this.descent = fontMetrics.getDescent();
        this.leading = fontMetrics.getLeading();
        this.maxAdvance = fontMetrics.getMaxAdvance();
        double[] dArr = new double[4];
        this.devmatrix = dArr;
        this.frcTx.getMatrix(dArr);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        if (this.serVersion != 1) {
            FontRenderContext defaultFrc = getDefaultFrc();
            this.frc = defaultFrc;
            this.isAntiAliased = defaultFrc.isAntiAliased();
            this.usesFractionalMetrics = this.frc.usesFractionalMetrics();
            this.frcTx = this.frc.getTransform();
        } else {
            this.frc = new FontRenderContext(this.frcTx, this.isAntiAliased, this.usesFractionalMetrics);
        }
        this.height = -1;
        this.cache = null;
        initMatrixAndMetrics();
        initAdvCache();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        this.cache = new int[256];
        for (int i = 0; i < 256; i++) {
            this.cache[i] = -1;
        }
        this.serVersion = 1;
        objectOutputStream.defaultWriteObject();
        this.cache = null;
    }

    @Override // java.awt.FontMetrics
    public int charWidth(char c) {
        float handleCharWidth;
        if (c < 256) {
            handleCharWidth = getLatinCharWidth(c);
        } else {
            handleCharWidth = handleCharWidth(c);
        }
        return (int) (handleCharWidth + 0.5d);
    }

    @Override // java.awt.FontMetrics
    public int charsWidth(char[] cArr, int i, int i2) {
        float f;
        float handleCharWidth;
        if (this.font.hasLayoutAttributes()) {
            if (i2 == 0) {
                return 0;
            }
            f = new TextLayout(new String(cArr, i, i2), this.font, this.frc).getAdvance();
        } else {
            if (i2 < 0) {
                throw new IndexOutOfBoundsException("len=" + i2);
            }
            int i3 = i + i2;
            float f2 = 0.0f;
            int i4 = i;
            while (true) {
                if (i4 >= i3) {
                    f = f2;
                    break;
                }
                char c = cArr[i4];
                if (c < 256) {
                    handleCharWidth = getLatinCharWidth(c);
                } else {
                    if (FontUtilities.isNonSimpleChar(c)) {
                        f = new TextLayout(new String(cArr, i, i2), this.font, this.frc).getAdvance();
                        break;
                    }
                    handleCharWidth = handleCharWidth(c);
                }
                f2 += handleCharWidth;
                i4++;
            }
        }
        return (int) (f + 0.5d);
    }

    @Override // java.awt.FontMetrics
    public int getAscent() {
        return (int) (roundingUpValue + this.ascent);
    }

    @Override // java.awt.FontMetrics
    public int getDescent() {
        return (int) (roundingUpValue + this.descent);
    }

    @Override // java.awt.FontMetrics
    public FontRenderContext getFontRenderContext() {
        return this.frc;
    }

    @Override // java.awt.FontMetrics
    public int getHeight() {
        if (this.height < 0) {
            this.height = getAscent() + ((int) (roundingUpValue + this.descent + this.leading));
        }
        return this.height;
    }

    @Override // java.awt.FontMetrics
    public int getLeading() {
        float f = roundingUpValue;
        float f2 = this.descent;
        return ((int) ((f + f2) + this.leading)) - ((int) (f + f2));
    }

    @Override // java.awt.FontMetrics
    public int getMaxAdvance() {
        return (int) (this.maxAdvance + 0.99f);
    }

    @Override // java.awt.FontMetrics
    public int[] getWidths() {
        int[] iArr = new int[256];
        for (char c = 0; c < 256; c = (char) (c + 1)) {
            float[] fArr = this.advCache;
            float f = fArr[c];
            if (f == -1.0f) {
                f = handleCharWidth(c);
                fArr[c] = f;
            }
            iArr[c] = (int) (f + 0.5d);
        }
        return iArr;
    }

    @Override // java.awt.FontMetrics
    public int stringWidth(String str) {
        float f;
        float handleCharWidth;
        int i = 0;
        if (!this.font.hasLayoutAttributes()) {
            int length = str.length();
            float f2 = 0.0f;
            while (true) {
                if (i >= length) {
                    f = f2;
                    break;
                }
                char charAt = str.charAt(i);
                if (charAt < 256) {
                    handleCharWidth = getLatinCharWidth(charAt);
                } else {
                    if (FontUtilities.isNonSimpleChar(charAt)) {
                        f = new TextLayout(str, this.font, this.frc).getAdvance();
                        break;
                    }
                    handleCharWidth = handleCharWidth(charAt);
                }
                f2 += handleCharWidth;
                i++;
            }
        } else {
            if (str == null) {
                throw new NullPointerException("str is null");
            }
            if (str.length() == 0) {
                return 0;
            }
            f = new TextLayout(str, this.font, this.frc).getAdvance();
        }
        return (int) (f + 0.5d);
    }

    private FontDesignMetrics(Font font, FontRenderContext fontRenderContext) {
        super(font);
        this.serVersion = 0;
        this.height = -1;
        this.devmatrix = null;
        this.font = font;
        this.frc = fontRenderContext;
        this.isAntiAliased = fontRenderContext.isAntiAliased();
        this.usesFractionalMetrics = fontRenderContext.usesFractionalMetrics();
        this.frcTx = fontRenderContext.getTransform();
        this.matrix = new double[4];
        initMatrixAndMetrics();
        initAdvCache();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static FontDesignMetrics getMetrics(Font font, FontRenderContext fontRenderContext) {
        KeyReference keyReference;
        KeyReference keyReference2;
        boolean equals = fontRenderContext.equals(getDefaultFrc());
        if (equals) {
            keyReference2 = metricsCache.get(font);
        } else {
            synchronized (MetricsKey.class) {
                MetricsKey metricsKey = MetricsKey.key;
                metricsKey.init(font, fontRenderContext);
                keyReference = metricsCache.get(metricsKey);
            }
            keyReference2 = keyReference;
        }
        FontDesignMetrics fontDesignMetrics = keyReference2 != null ? (FontDesignMetrics) keyReference2.get() : null;
        if (fontDesignMetrics == null) {
            fontDesignMetrics = new FontDesignMetrics(font, fontRenderContext);
            if (equals) {
                metricsCache.put(font, new KeyReference(font, fontDesignMetrics));
            } else {
                MetricsKey metricsKey2 = new MetricsKey(font, fontRenderContext);
                metricsCache.put(metricsKey2, new KeyReference(metricsKey2, fontDesignMetrics));
            }
        }
        int i = 0;
        while (true) {
            FontDesignMetrics[] fontDesignMetricsArr = recentMetrics;
            if (i < fontDesignMetricsArr.length) {
                if (fontDesignMetricsArr[i] == fontDesignMetrics) {
                    return fontDesignMetrics;
                }
                i++;
            } else {
                synchronized (fontDesignMetricsArr) {
                    int i2 = recentIndex;
                    int i3 = i2 + 1;
                    recentIndex = i3;
                    fontDesignMetricsArr[i2] = fontDesignMetrics;
                    if (i3 == 5) {
                        recentIndex = 0;
                    }
                }
                return fontDesignMetrics;
            }
        }
    }

    @Override // java.awt.FontMetrics
    public int charWidth(int i) {
        if (!Character.isValidCodePoint(i)) {
            i = 65535;
        }
        return (int) (handleCharWidth(i) + 0.5d);
    }
}
