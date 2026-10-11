package sun.font;

import java.awt.Font;
import java.awt.font.FontRenderContext;
import java.awt.geom.AffineTransform;
import java.awt.geom.Point2D;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes16.dex */
public final class GlyphLayout {
    private static volatile GlyphLayout cache;
    private int _ercount;
    private LayoutEngineFactory _lef;
    private int _offset;
    private int _typo_flags;
    private float ptSize;
    private GVData _gvdata = new GVData();
    private TextRecord _textRecord = new TextRecord();
    private ScriptRun _scriptRuns = new ScriptRun();
    private FontRunIterator _fontRuns = new FontRunIterator();
    private ArrayList<EngineRecord> _erecords = new ArrayList<>(10);
    private Point2D.Float _pt = new Point2D.Float();
    private FontStrikeDesc _sd = new FontStrikeDesc();
    private float[] _mat = new float[4];

    /* loaded from: classes16.dex */
    public final class EngineRecord {
        private int eflags;
        private LayoutEngine engine;
        private int gmask;
        private LayoutEngineKey key = new LayoutEngineKey();
        private int limit;
        private int start;

        public EngineRecord() {
        }

        public void init(int i, int i2, Font2D font2D, int i3, int i4, int i5) {
            this.start = i;
            this.limit = i2;
            this.gmask = i5;
            this.key.init(font2D, i3, i4);
            this.eflags = 0;
            while (i < i2) {
                char c = GlyphLayout.this._textRecord.text[i];
                char c2 = c;
                int i6 = c;
                if (Character.isHighSurrogate(c2)) {
                    i6 = c;
                    if (i < i2 - 1) {
                        int i7 = i + 1;
                        i6 = c;
                        if (Character.isLowSurrogate(GlyphLayout.this._textRecord.text[i7])) {
                            i = i7;
                            i6 = Character.toCodePoint(c2, GlyphLayout.this._textRecord.text[i7]);
                        }
                    }
                }
                int type = Character.getType(i6);
                if (type == 6 || type == 7 || type == 8) {
                    this.eflags = 4;
                    break;
                }
                i++;
            }
            this.engine = GlyphLayout.this._lef.getEngine(this.key);
        }

        public void layout() {
            GlyphLayout.this._textRecord.start = this.start;
            GlyphLayout.this._textRecord.limit = this.limit;
            this.engine.layout(GlyphLayout.this._sd, GlyphLayout.this._mat, GlyphLayout.this.ptSize, this.gmask, this.start - GlyphLayout.this._offset, GlyphLayout.this._textRecord, GlyphLayout.this._typo_flags | this.eflags, GlyphLayout.this._pt, GlyphLayout.this._gvdata);
        }
    }

    /* loaded from: classes16.dex */
    public static final class GVData {
        private static final int UNINITIALIZED_FLAGS = -1;
        public int _count;
        public int _flags;
        public int[] _glyphs;
        public int[] _indices;
        public float[] _positions;

        public AndroidGlyphVector createGlyphVector(Font font, FontRenderContext fontRenderContext, AndroidGlyphVector androidGlyphVector) {
            float[] fArr;
            if (this._flags == -1) {
                this._flags = 0;
                int i = this._count;
                if (i > 1) {
                    boolean z = true;
                    boolean z2 = true;
                    int i2 = 0;
                    while (i2 < this._count && (z || z2)) {
                        int i3 = this._indices[i2];
                        z = z && i3 == i2;
                        z2 = z2 && i3 == (i = i + (-1));
                        i2++;
                    }
                    if (z2) {
                        this._flags |= 4;
                    }
                    if (!z2 && !z) {
                        this._flags |= 8;
                    }
                }
                this._flags |= 2;
            }
            int i4 = this._count;
            int[] iArr = new int[i4];
            System.arraycopy(this._glyphs, 0, iArr, 0, i4);
            int[] iArr2 = null;
            if ((this._flags & 2) != 0) {
                int i5 = (this._count * 2) + 2;
                float[] fArr2 = new float[i5];
                System.arraycopy(this._positions, 0, fArr2, 0, i5);
                fArr = fArr2;
            } else {
                fArr = null;
            }
            if ((this._flags & 8) != 0) {
                int i6 = this._count;
                iArr2 = new int[i6];
                System.arraycopy(this._indices, 0, iArr2, 0, i6);
            }
            int[] iArr3 = iArr2;
            if (androidGlyphVector == null) {
                return new AndroidGlyphVector(font, fontRenderContext, iArr, fArr, iArr3, this._flags);
            }
            androidGlyphVector.initGlyphVector(font, fontRenderContext, iArr, fArr, iArr3, this._flags);
            return androidGlyphVector;
        }

        public void grow() {
            grow(this._glyphs.length / 4);
        }

        public void init(int i) {
            this._count = 0;
            this._flags = -1;
            int[] iArr = this._glyphs;
            if (iArr == null || iArr.length < i) {
                if (i < 20) {
                    i = 20;
                }
                this._glyphs = new int[i];
                this._positions = new float[(i * 2) + 2];
                this._indices = new int[i];
            }
        }

        public void grow(int i) {
            int[] iArr = this._glyphs;
            int length = iArr.length + i;
            int[] iArr2 = new int[length];
            System.arraycopy(iArr, 0, iArr2, 0, this._count);
            this._glyphs = iArr2;
            float[] fArr = new float[(length * 2) + 2];
            System.arraycopy(this._positions, 0, fArr, 0, (this._count * 2) + 2);
            this._positions = fArr;
            int[] iArr3 = new int[length];
            System.arraycopy(this._indices, 0, iArr3, 0, this._count);
            this._indices = iArr3;
        }
    }

    /* loaded from: classes16.dex */
    public interface LayoutEngine {
        void layout(FontStrikeDesc fontStrikeDesc, float[] fArr, float f, int i, int i2, TextRecord textRecord, int i3, Point2D.Float r8, GVData gVData);
    }

    /* loaded from: classes16.dex */
    public interface LayoutEngineFactory {
        LayoutEngine getEngine(Font2D font2D, int i, int i2);

        LayoutEngine getEngine(LayoutEngineKey layoutEngineKey);
    }

    /* loaded from: classes16.dex */
    public static final class LayoutEngineKey {
        private Font2D font;
        private int lang;
        private int script;

        public LayoutEngineKey() {
        }

        public LayoutEngineKey copy() {
            return new LayoutEngineKey(this.font, this.script, this.lang);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            try {
                LayoutEngineKey layoutEngineKey = (LayoutEngineKey) obj;
                if (this.script == layoutEngineKey.script && this.lang == layoutEngineKey.lang) {
                    if (this.font.equals(layoutEngineKey.font)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException unused) {
                return false;
            }
        }

        public Font2D font() {
            return this.font;
        }

        public int hashCode() {
            return this.font.hashCode() ^ (this.script ^ this.lang);
        }

        public void init(Font2D font2D, int i, int i2) {
            this.font = font2D;
            this.script = i;
            this.lang = i2;
        }

        public int lang() {
            return this.lang;
        }

        public int script() {
            return this.script;
        }

        public LayoutEngineKey(Font2D font2D, int i, int i2) {
            init(font2D, i, i2);
        }
    }

    /* loaded from: classes16.dex */
    public static final class SDCache {
        private static final Point2D.Float ZERO_DELTA = new Point2D.Float();
        private static SoftReference<ConcurrentHashMap<SDKey, SDCache>> cacheRef;
        public Point2D.Float delta;
        public AffineTransform dtx;
        public AffineTransform gtx;
        public Font key_font;
        public FontRenderContext key_frc;

        /* renamed from: sd */
        public FontStrikeDesc f116345sd;

        /* loaded from: classes16.dex */
        public static final class SDKey {
            private final Font font;
            private final FontRenderContext frc;
            private final int hash;

            public SDKey(Font font, FontRenderContext fontRenderContext) {
                this.font = font;
                this.frc = fontRenderContext;
                this.hash = font.hashCode() ^ fontRenderContext.hashCode();
            }

            public boolean equals(Object obj) {
                try {
                    SDKey sDKey = (SDKey) obj;
                    if (this.hash == sDKey.hash && this.font.equals(sDKey.font)) {
                        return this.frc.equals(sDKey.frc);
                    }
                    return false;
                } catch (ClassCastException unused) {
                    return false;
                }
            }

            public int hashCode() {
                return this.hash;
            }
        }

        private SDCache(Font font, FontRenderContext fontRenderContext) {
            this.key_font = font;
            this.key_frc = fontRenderContext;
            AffineTransform transform = fontRenderContext.getTransform();
            this.dtx = transform;
            transform.setTransform(transform.getScaleX(), this.dtx.getShearY(), this.dtx.getShearX(), this.dtx.getScaleY(), 0.0d, 0.0d);
            float size2D = font.getSize2D();
            if (font.isTransformed()) {
                AffineTransform transform2 = font.getTransform();
                this.gtx = transform2;
                double d = size2D;
                transform2.scale(d, d);
                this.delta = new Point2D.Float((float) this.gtx.getTranslateX(), (float) this.gtx.getTranslateY());
                AffineTransform affineTransform = this.gtx;
                affineTransform.setTransform(affineTransform.getScaleX(), this.gtx.getShearY(), this.gtx.getShearX(), this.gtx.getScaleY(), 0.0d, 0.0d);
                this.gtx.preConcatenate(this.dtx);
            } else {
                this.delta = ZERO_DELTA;
                AffineTransform affineTransform2 = new AffineTransform(this.dtx);
                this.gtx = affineTransform2;
                double d2 = size2D;
                affineTransform2.scale(d2, d2);
            }
            this.f116345sd = new FontStrikeDesc(this.dtx, this.gtx, font.getStyle(), FontStrikeDesc.getAAHintIntVal(fontRenderContext.getAntiAliasingHint(), FontUtilities.getFont2D(font), (int) Math.abs(size2D)), FontStrikeDesc.getFMHintIntVal(fontRenderContext.getFractionalMetricsHint()));
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0061  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static sun.font.GlyphLayout.SDCache get(java.awt.Font r16, java.awt.font.FontRenderContext r17) {
            /*
                r0 = r16
                boolean r1 = r17.isTransformed()
                if (r1 == 0) goto L46
                java.awt.geom.AffineTransform r1 = r17.getTransform()
                double r2 = r1.getTranslateX()
                r4 = 0
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 != 0) goto L1e
                double r2 = r1.getTranslateY()
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 == 0) goto L46
            L1e:
                java.awt.geom.AffineTransform r2 = new java.awt.geom.AffineTransform
                double r4 = r1.getScaleX()
                double r6 = r1.getShearY()
                double r8 = r1.getShearX()
                double r10 = r1.getScaleY()
                r12 = 0
                r14 = 0
                r3 = r2
                r3.<init>(r4, r6, r8, r10, r12, r14)
                java.awt.font.FontRenderContext r1 = new java.awt.font.FontRenderContext
                java.lang.Object r3 = r17.getAntiAliasingHint()
                java.lang.Object r4 = r17.getFractionalMetricsHint()
                r1.<init>(r2, r3, r4)
                goto L48
            L46:
                r1 = r17
            L48:
                sun.font.GlyphLayout$SDCache$SDKey r2 = new sun.font.GlyphLayout$SDCache$SDKey
                r2.<init>(r0, r1)
                java.lang.ref.SoftReference<java.util.concurrent.ConcurrentHashMap<sun.font.GlyphLayout$SDCache$SDKey, sun.font.GlyphLayout$SDCache>> r3 = sun.font.GlyphLayout.SDCache.cacheRef
                r4 = 0
                if (r3 == 0) goto L61
                java.lang.Object r3 = r3.get()
                java.util.concurrent.ConcurrentHashMap r3 = (java.util.concurrent.ConcurrentHashMap) r3
                if (r3 == 0) goto L62
                java.lang.Object r4 = r3.get(r2)
                sun.font.GlyphLayout$SDCache r4 = (sun.font.GlyphLayout.SDCache) r4
                goto L62
            L61:
                r3 = r4
            L62:
                if (r4 != 0) goto L88
                sun.font.GlyphLayout$SDCache r4 = new sun.font.GlyphLayout$SDCache
                r4.<init>(r0, r1)
                if (r3 != 0) goto L7a
                java.util.concurrent.ConcurrentHashMap r3 = new java.util.concurrent.ConcurrentHashMap
                r0 = 10
                r3.<init>(r0)
                java.lang.ref.SoftReference r0 = new java.lang.ref.SoftReference
                r0.<init>(r3)
                sun.font.GlyphLayout.SDCache.cacheRef = r0
                goto L85
            L7a:
                int r0 = r3.size()
                r1 = 512(0x200, float:7.175E-43)
                if (r0 < r1) goto L85
                r3.clear()
            L85:
                r3.put(r2, r4)
            L88:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: sun.font.GlyphLayout.SDCache.get(java.awt.Font, java.awt.font.FontRenderContext):sun.font.GlyphLayout$SDCache");
        }
    }

    private GlyphLayout() {
    }

    public static void done(GlyphLayout glyphLayout) {
        glyphLayout._lef = null;
        cache = glyphLayout;
    }

    public static GlyphLayout get(LayoutEngineFactory layoutEngineFactory) {
        GlyphLayout glyphLayout;
        if (layoutEngineFactory == null) {
            layoutEngineFactory = SunLayoutEngine.instance();
        }
        synchronized (GlyphLayout.class) {
            glyphLayout = null;
            if (cache != null) {
                GlyphLayout glyphLayout2 = cache;
                cache = null;
                glyphLayout = glyphLayout2;
            }
        }
        if (glyphLayout == null) {
            glyphLayout = new GlyphLayout();
        }
        glyphLayout._lef = layoutEngineFactory;
        return glyphLayout;
    }

    private void init(int i) {
        this._typo_flags = 0;
        this._ercount = 0;
        this._gvdata.init(i);
    }

    private void nextEngineRecord(int i, int i2, int i3, int i4, Font2D font2D, int i5) {
        EngineRecord engineRecord;
        if (this._ercount == this._erecords.size()) {
            engineRecord = new EngineRecord();
            this._erecords.add(engineRecord);
        } else {
            engineRecord = this._erecords.get(this._ercount);
        }
        engineRecord.init(i, i2, font2D, i3, i4, i5);
        this._ercount++;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [sun.font.Font2D] */
    public AndroidGlyphVector layout(Font font, FontRenderContext fontRenderContext, char[] cArr, int i, int i2, int i3, AndroidGlyphVector androidGlyphVector) {
        int i4;
        int i5;
        int i6;
        if (cArr == null || i < 0 || i2 < 0 || i2 > cArr.length - i) {
            throw new IllegalArgumentException();
        }
        init(i2);
        if (font.hasLayoutAttributes()) {
            AttributeValues values = ((AttributeMap) font.getAttributes()).getValues();
            if (values.getKerning() != 0) {
                this._typo_flags |= 1;
            }
            if (values.getLigatures() != 0) {
                this._typo_flags |= 2;
            }
        }
        this._offset = i;
        SDCache sDCache = SDCache.get(font, fontRenderContext);
        int i7 = 0;
        this._mat[0] = (float) sDCache.gtx.getScaleX();
        this._mat[1] = (float) sDCache.gtx.getShearY();
        this._mat[2] = (float) sDCache.gtx.getShearX();
        this._mat[3] = (float) sDCache.gtx.getScaleY();
        this._pt.setLocation(sDCache.delta);
        this.ptSize = font.getSize2D();
        int i8 = i + i2;
        int length = cArr.length;
        if (i3 != 0) {
            if ((i3 & 1) != 0) {
                this._typo_flags |= Integer.MIN_VALUE;
            }
            int i9 = (i3 & 2) != 0 ? i : 0;
            if ((i3 & 4) != 0) {
                i5 = i9;
                i4 = i8;
            } else {
                i4 = length;
                i5 = i9;
            }
        } else {
            i4 = length;
            i5 = 0;
        }
        ?? font2D = FontUtilities.getFont2D(font);
        boolean z = font2D instanceof FontSubstitution;
        CompositeFont compositeFont = font2D;
        if (z) {
            compositeFont = ((FontSubstitution) font2D).getCompositeFont2D();
        }
        CompositeFont compositeFont2 = compositeFont;
        this._textRecord.init(cArr, i, i8, i5, i4);
        if (compositeFont2 instanceof CompositeFont) {
            this._scriptRuns.init(cArr, i, i2);
            this._fontRuns.init(compositeFont2, cArr, i, i8);
            int i10 = i;
            while (this._scriptRuns.next()) {
                int scriptLimit = this._scriptRuns.getScriptLimit();
                int i11 = i10;
                for (int scriptCode = this._scriptRuns.getScriptCode(); this._fontRuns.next(scriptCode, scriptLimit); scriptCode = scriptCode) {
                    PhysicalFont font2 = this._fontRuns.getFont();
                    if (font2 instanceof NativeFont) {
                        font2 = ((NativeFont) font2).getDelegateFont();
                    }
                    int glyphMask = this._fontRuns.getGlyphMask();
                    int pos = this._fontRuns.getPos();
                    nextEngineRecord(i11, pos, scriptCode, -1, font2, glyphMask);
                    i11 = pos;
                }
                i10 = i11;
            }
        } else {
            this._scriptRuns.init(cArr, i, i2);
            int i12 = i;
            while (this._scriptRuns.next()) {
                int scriptLimit2 = this._scriptRuns.getScriptLimit();
                nextEngineRecord(i12, scriptLimit2, this._scriptRuns.getScriptCode(), -1, compositeFont2, 0);
                i12 = scriptLimit2;
            }
        }
        int i13 = this._ercount;
        if (this._typo_flags < 0) {
            i7 = i13 - 1;
            i6 = -1;
            i13 = -1;
        } else {
            i6 = 1;
        }
        this._sd = sDCache.f116345sd;
        while (i7 != i13) {
            EngineRecord engineRecord = this._erecords.get(i7);
            while (true) {
                try {
                    engineRecord.layout();
                    break;
                } catch (IndexOutOfBoundsException unused) {
                    if (this._gvdata._count >= 0) {
                        this._gvdata.grow();
                    }
                }
            }
            if (this._gvdata._count < 0) {
                break;
            }
            i7 += i6;
        }
        GVData gVData = this._gvdata;
        if (gVData._count >= 0) {
            return gVData.createGlyphVector(font, fontRenderContext, androidGlyphVector);
        }
        AndroidGlyphVector androidGlyphVector2 = new AndroidGlyphVector(font, cArr, i, i2, fontRenderContext);
        if (!FontUtilities.debugFonts()) {
            return androidGlyphVector2;
        }
        FontUtilities.logWarning("OpenType layout failed on font: " + font);
        return androidGlyphVector2;
    }
}
