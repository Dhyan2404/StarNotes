package com.caverock.androidsvg;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.util.Base64;
import android.util.Log;
import com.bumptech.glide.load.model.DataUrlLoader;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.PreserveAspectRatio;
import com.caverock.androidsvg.SVG;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.sunia.HTREnginev2.ind;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.Stack;

/* renamed from: com.caverock.androidsvg.a */
/* loaded from: classes3.dex */
public class C2139a {

    /* renamed from: i */
    public static final String f16097i = "SVGAndroidRenderer";

    /* renamed from: j */
    public static final float f16098j = 0.5522848f;

    /* renamed from: k */
    public static final float f16099k = 0.2127f;

    /* renamed from: l */
    public static final float f16100l = 0.7151f;

    /* renamed from: m */
    public static final float f16101m = 0.0722f;

    /* renamed from: n */
    public static final String f16102n = "serif";

    /* renamed from: o */
    public static HashSet<String> f16103o;

    /* renamed from: a */
    public Canvas f16104a;

    /* renamed from: b */
    public float f16105b;

    /* renamed from: c */
    public SVG f16106c;

    /* renamed from: d */
    public h f16107d;

    /* renamed from: e */
    public Stack<h> f16108e;

    /* renamed from: f */
    public Stack<SVG.InterfaceC2091h0> f16109f;

    /* renamed from: g */
    public Stack<Matrix> f16110g;

    /* renamed from: h */
    public CSSParser.C2068m f16111h = null;

    /* renamed from: com.caverock.androidsvg.a$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f16112a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f16113b;

        /* renamed from: c */
        public static final /* synthetic */ int[] f16114c;

        static {
            int[] iArr = new int[SVG.Style.LineJoin.values().length];
            f16114c = iArr;
            try {
                iArr[SVG.Style.LineJoin.Miter.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16114c[SVG.Style.LineJoin.Round.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16114c[SVG.Style.LineJoin.Bevel.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SVG.Style.LineCap.values().length];
            f16113b = iArr2;
            try {
                iArr2[SVG.Style.LineCap.Butt.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16113b[SVG.Style.LineCap.Round.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16113b[SVG.Style.LineCap.Square.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr3 = new int[PreserveAspectRatio.Alignment.values().length];
            f16112a = iArr3;
            try {
                iArr3[PreserveAspectRatio.Alignment.xMidYMin.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f16112a[PreserveAspectRatio.Alignment.xMidYMid.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f16112a[PreserveAspectRatio.Alignment.xMidYMax.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f16112a[PreserveAspectRatio.Alignment.xMaxYMin.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f16112a[PreserveAspectRatio.Alignment.xMaxYMid.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f16112a[PreserveAspectRatio.Alignment.xMaxYMax.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f16112a[PreserveAspectRatio.Alignment.xMinYMid.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f16112a[PreserveAspectRatio.Alignment.xMinYMax.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* renamed from: com.caverock.androidsvg.a$b */
    /* loaded from: classes3.dex */
    public class b implements SVG.InterfaceC2120w {

        /* renamed from: b */
        public float f16116b;

        /* renamed from: c */
        public float f16117c;

        /* renamed from: h */
        public boolean f16122h;

        /* renamed from: a */
        public List<c> f16115a = new ArrayList();

        /* renamed from: d */
        public c f16118d = null;

        /* renamed from: e */
        public boolean f16119e = false;

        /* renamed from: f */
        public boolean f16120f = true;

        /* renamed from: g */
        public int f16121g = -1;

        public b(SVG.C2118v c2118v) {
            if (c2118v == null) {
                return;
            }
            c2118v.m9395e(this);
            if (this.f16122h) {
                this.f16118d.m9670b(this.f16115a.get(this.f16121g));
                this.f16115a.set(this.f16121g, this.f16118d);
                this.f16122h = false;
            }
            c cVar = this.f16118d;
            if (cVar != null) {
                this.f16115a.add(cVar);
            }
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        /* renamed from: a */
        public void mo9391a(float f, float f2, float f3, float f4, float f5, float f6) {
            if (this.f16120f || this.f16119e) {
                this.f16118d.m9669a(f, f2);
                this.f16115a.add(this.f16118d);
                this.f16119e = false;
            }
            this.f16118d = new c(f5, f6, f5 - f3, f6 - f4);
            this.f16122h = false;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        /* renamed from: b */
        public void mo9392b(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            this.f16119e = true;
            this.f16120f = false;
            c cVar = this.f16118d;
            C2139a.m9570m(cVar.f16124a, cVar.f16125b, f, f2, f3, z, z2, f4, f5, this);
            this.f16120f = true;
            this.f16122h = false;
        }

        /* renamed from: c */
        public List<c> m9668c() {
            return this.f16115a;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void close() {
            this.f16115a.add(this.f16118d);
            lineTo(this.f16116b, this.f16117c);
            this.f16122h = true;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void lineTo(float f, float f2) {
            this.f16118d.m9669a(f, f2);
            this.f16115a.add(this.f16118d);
            C2139a c2139a = C2139a.this;
            c cVar = this.f16118d;
            this.f16118d = new c(f, f2, f - cVar.f16124a, f2 - cVar.f16125b);
            this.f16122h = false;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void moveTo(float f, float f2) {
            if (this.f16122h) {
                this.f16118d.m9670b(this.f16115a.get(this.f16121g));
                this.f16115a.set(this.f16121g, this.f16118d);
                this.f16122h = false;
            }
            c cVar = this.f16118d;
            if (cVar != null) {
                this.f16115a.add(cVar);
            }
            this.f16116b = f;
            this.f16117c = f2;
            this.f16118d = new c(f, f2, 0.0f, 0.0f);
            this.f16121g = this.f16115a.size();
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void quadTo(float f, float f2, float f3, float f4) {
            this.f16118d.m9669a(f, f2);
            this.f16115a.add(this.f16118d);
            this.f16118d = new c(f3, f4, f3 - f, f4 - f2);
            this.f16122h = false;
        }
    }

    /* renamed from: com.caverock.androidsvg.a$c */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: a */
        public float f16124a;

        /* renamed from: b */
        public float f16125b;

        /* renamed from: c */
        public float f16126c;

        /* renamed from: d */
        public float f16127d;

        /* renamed from: e */
        public boolean f16128e = false;

        public c(float f, float f2, float f3, float f4) {
            this.f16126c = 0.0f;
            this.f16127d = 0.0f;
            this.f16124a = f;
            this.f16125b = f2;
            double sqrt = Math.sqrt((f3 * f3) + (f4 * f4));
            if (sqrt != 0.0d) {
                this.f16126c = (float) (f3 / sqrt);
                this.f16127d = (float) (f4 / sqrt);
            }
        }

        /* renamed from: a */
        public void m9669a(float f, float f2) {
            float f3 = f - this.f16124a;
            float f4 = f2 - this.f16125b;
            double sqrt = Math.sqrt((f3 * f3) + (f4 * f4));
            if (sqrt != 0.0d) {
                f3 = (float) (f3 / sqrt);
                f4 = (float) (f4 / sqrt);
            }
            float f5 = this.f16126c;
            if (f3 != (-f5) || f4 != (-this.f16127d)) {
                this.f16126c = f5 + f3;
                this.f16127d += f4;
            } else {
                this.f16128e = true;
                this.f16126c = -f4;
                this.f16127d = f3;
            }
        }

        /* renamed from: b */
        public void m9670b(c cVar) {
            float f = cVar.f16126c;
            float f2 = this.f16126c;
            if (f == (-f2)) {
                float f3 = cVar.f16127d;
                if (f3 == (-this.f16127d)) {
                    this.f16128e = true;
                    this.f16126c = -f3;
                    this.f16127d = cVar.f16126c;
                    return;
                }
            }
            this.f16126c = f2 + f;
            this.f16127d += cVar.f16127d;
        }

        public String toString() {
            return MotionUtils.f31761c + this.f16124a + "," + this.f16125b + " " + this.f16126c + "," + this.f16127d + MotionUtils.f31762d;
        }
    }

    /* renamed from: com.caverock.androidsvg.a$d */
    /* loaded from: classes3.dex */
    public class d implements SVG.InterfaceC2120w {

        /* renamed from: a */
        public Path f16130a = new Path();

        /* renamed from: b */
        public float f16131b;

        /* renamed from: c */
        public float f16132c;

        public d(SVG.C2118v c2118v) {
            if (c2118v == null) {
                return;
            }
            c2118v.m9395e(this);
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        /* renamed from: a */
        public void mo9391a(float f, float f2, float f3, float f4, float f5, float f6) {
            this.f16130a.cubicTo(f, f2, f3, f4, f5, f6);
            this.f16131b = f5;
            this.f16132c = f6;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        /* renamed from: b */
        public void mo9392b(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            C2139a.m9570m(this.f16131b, this.f16132c, f, f2, f3, z, z2, f4, f5, this);
            this.f16131b = f4;
            this.f16132c = f5;
        }

        /* renamed from: c */
        public Path m9671c() {
            return this.f16130a;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void close() {
            this.f16130a.close();
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void lineTo(float f, float f2) {
            this.f16130a.lineTo(f, f2);
            this.f16131b = f;
            this.f16132c = f2;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void moveTo(float f, float f2) {
            this.f16130a.moveTo(f, f2);
            this.f16131b = f;
            this.f16132c = f2;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void quadTo(float f, float f2, float f3, float f4) {
            this.f16130a.quadTo(f, f2, f3, f4);
            this.f16131b = f3;
            this.f16132c = f4;
        }
    }

    /* renamed from: com.caverock.androidsvg.a$e */
    /* loaded from: classes3.dex */
    public class e extends f {

        /* renamed from: e */
        public Path f16134e;

        public e(Path path, float f, float f2) {
            super(f, f2);
            this.f16134e = path;
        }

        @Override // com.caverock.androidsvg.C2139a.f, com.caverock.androidsvg.C2139a.j
        /* renamed from: b */
        public void mo9672b(String str) {
            if (C2139a.this.m9631g1()) {
                if (C2139a.this.f16107d.f16144b) {
                    C2139a.this.f16104a.drawTextOnPath(str, this.f16134e, this.f16136b, this.f16137c, C2139a.this.f16107d.f16146d);
                }
                if (C2139a.this.f16107d.f16145c) {
                    C2139a.this.f16104a.drawTextOnPath(str, this.f16134e, this.f16136b, this.f16137c, C2139a.this.f16107d.f16147e);
                }
            }
            this.f16136b += C2139a.this.f16107d.f16146d.measureText(str);
        }
    }

    /* renamed from: com.caverock.androidsvg.a$f */
    /* loaded from: classes3.dex */
    public class f extends j {

        /* renamed from: b */
        public float f16136b;

        /* renamed from: c */
        public float f16137c;

        public f(float f, float f2) {
            super(C2139a.this, null);
            this.f16136b = f;
            this.f16137c = f2;
        }

        @Override // com.caverock.androidsvg.C2139a.j
        /* renamed from: b */
        public void mo9672b(String str) {
            C2139a.m9559G("TextSequence render", new Object[0]);
            if (C2139a.this.m9631g1()) {
                if (C2139a.this.f16107d.f16144b) {
                    C2139a.this.f16104a.drawText(str, this.f16136b, this.f16137c, C2139a.this.f16107d.f16146d);
                }
                if (C2139a.this.f16107d.f16145c) {
                    C2139a.this.f16104a.drawText(str, this.f16136b, this.f16137c, C2139a.this.f16107d.f16147e);
                }
            }
            this.f16136b += C2139a.this.f16107d.f16146d.measureText(str);
        }
    }

    /* renamed from: com.caverock.androidsvg.a$g */
    /* loaded from: classes3.dex */
    public class g extends j {

        /* renamed from: b */
        public float f16139b;

        /* renamed from: c */
        public float f16140c;

        /* renamed from: d */
        public Path f16141d;

        public g(float f, float f2, Path path) {
            super(C2139a.this, null);
            this.f16139b = f;
            this.f16140c = f2;
            this.f16141d = path;
        }

        @Override // com.caverock.androidsvg.C2139a.j
        /* renamed from: a */
        public boolean mo9673a(SVG.AbstractC2121w0 abstractC2121w0) {
            if (!(abstractC2121w0 instanceof SVG.C2123x0)) {
                return true;
            }
            C2139a.m9569h1("Using <textPath> elements in a clip path is not supported.", new Object[0]);
            return false;
        }

        @Override // com.caverock.androidsvg.C2139a.j
        /* renamed from: b */
        public void mo9672b(String str) {
            if (C2139a.this.m9631g1()) {
                Path path = new Path();
                C2139a.this.f16107d.f16146d.getTextPath(str, 0, str.length(), this.f16139b, this.f16140c, path);
                this.f16141d.addPath(path);
            }
            this.f16139b += C2139a.this.f16107d.f16146d.measureText(str);
        }
    }

    /* renamed from: com.caverock.androidsvg.a$i */
    /* loaded from: classes3.dex */
    public class i extends j {

        /* renamed from: b */
        public float f16152b;

        /* renamed from: c */
        public float f16153c;

        /* renamed from: d */
        public RectF f16154d;

        public i(float f, float f2) {
            super(C2139a.this, null);
            this.f16154d = new RectF();
            this.f16152b = f;
            this.f16153c = f2;
        }

        @Override // com.caverock.androidsvg.C2139a.j
        /* renamed from: a */
        public boolean mo9673a(SVG.AbstractC2121w0 abstractC2121w0) {
            if (!(abstractC2121w0 instanceof SVG.C2123x0)) {
                return true;
            }
            SVG.C2123x0 c2123x0 = (SVG.C2123x0) abstractC2121w0;
            SVG.C2099l0 m9357m = abstractC2121w0.f15964a.m9357m(c2123x0.f16023o);
            if (m9357m == null) {
                C2139a.m9560N("TextPath path reference '%s' not found", c2123x0.f16023o);
                return false;
            }
            SVG.C2116u c2116u = (SVG.C2116u) m9357m;
            Path m9671c = new d(c2116u.f16002o).m9671c();
            Matrix matrix = c2116u.f15958n;
            if (matrix != null) {
                m9671c.transform(matrix);
            }
            RectF rectF = new RectF();
            m9671c.computeBounds(rectF, true);
            this.f16154d.union(rectF);
            return false;
        }

        @Override // com.caverock.androidsvg.C2139a.j
        /* renamed from: b */
        public void mo9672b(String str) {
            if (C2139a.this.m9631g1()) {
                Rect rect = new Rect();
                C2139a.this.f16107d.f16146d.getTextBounds(str, 0, str.length(), rect);
                RectF rectF = new RectF(rect);
                rectF.offset(this.f16152b, this.f16153c);
                this.f16154d.union(rectF);
            }
            this.f16152b += C2139a.this.f16107d.f16146d.measureText(str);
        }
    }

    /* renamed from: com.caverock.androidsvg.a$j */
    /* loaded from: classes3.dex */
    public abstract class j {
        public j() {
        }

        /* renamed from: a */
        public boolean mo9673a(SVG.AbstractC2121w0 abstractC2121w0) {
            return true;
        }

        /* renamed from: b */
        public abstract void mo9672b(String str);

        public /* synthetic */ j(C2139a c2139a, a aVar) {
            this();
        }
    }

    public C2139a(Canvas canvas, float f2) {
        this.f16104a = canvas;
        this.f16105b = f2;
    }

    /* renamed from: B */
    public static double m9556B(double d2) {
        if (d2 < -1.0d) {
            return 3.141592653589793d;
        }
        if (d2 > 1.0d) {
            return 0.0d;
        }
        return Math.acos(d2);
    }

    /* renamed from: C */
    public static int m9557C(float f2) {
        int i2 = (int) (f2 * 256.0f);
        if (i2 < 0) {
            return 0;
        }
        if (i2 > 255) {
            return 255;
        }
        return i2;
    }

    /* renamed from: F */
    public static int m9558F(int i2, float f2) {
        int i3 = 255;
        int round = Math.round(((i2 >> 24) & 255) * f2);
        if (round < 0) {
            i3 = 0;
        } else if (round <= 255) {
            i3 = round;
        }
        return (i2 & 16777215) | (i3 << 24);
    }

    /* renamed from: G */
    public static void m9559G(String str, Object... objArr) {
    }

    /* renamed from: N */
    public static void m9560N(String str, Object... objArr) {
        Log.e(f16097i, String.format(str, objArr));
    }

    /* renamed from: d0 */
    public static synchronized void m9565d0() {
        synchronized (C2139a.class) {
            HashSet<String> hashSet = new HashSet<>();
            f16103o = hashSet;
            hashSet.add("Structure");
            f16103o.add("BasicStructure");
            f16103o.add("ConditionalProcessing");
            f16103o.add(GeoConstant.Image);
            f16103o.add("Style");
            f16103o.add("ViewportAttribute");
            f16103o.add(HWRValues.PART_TYPE_SHAPE);
            f16103o.add("BasicText");
            f16103o.add("PaintAttribute");
            f16103o.add("BasicPaintAttribute");
            f16103o.add("OpacityAttribute");
            f16103o.add("BasicGraphicsAttribute");
            f16103o.add("Marker");
            f16103o.add("Gradient");
            f16103o.add("Pattern");
            f16103o.add("Clip");
            f16103o.add("BasicClip");
            f16103o.add("Mask");
            f16103o.add("View");
        }
    }

    /* renamed from: h1 */
    public static void m9569h1(String str, Object... objArr) {
        Log.w(f16097i, String.format(str, objArr));
    }

    /* renamed from: m */
    public static void m9570m(float f2, float f3, float f4, float f5, float f6, boolean z, boolean z2, float f7, float f8, SVG.InterfaceC2120w interfaceC2120w) {
        float f9;
        SVG.InterfaceC2120w interfaceC2120w2;
        if (f2 == f7 && f3 == f8) {
            return;
        }
        if (f4 == 0.0f) {
            f9 = f7;
            interfaceC2120w2 = interfaceC2120w;
        } else {
            if (f5 != 0.0f) {
                float abs = Math.abs(f4);
                float abs2 = Math.abs(f5);
                double radians = Math.toRadians(f6 % 360.0d);
                double cos = Math.cos(radians);
                double sin = Math.sin(radians);
                double d2 = (f2 - f7) / 2.0d;
                double d3 = (f3 - f8) / 2.0d;
                double d4 = (cos * d2) + (sin * d3);
                double d5 = ((-sin) * d2) + (d3 * cos);
                double d6 = abs * abs;
                double d7 = abs2 * abs2;
                double d8 = d4 * d4;
                double d9 = d5 * d5;
                double d10 = (d8 / d6) + (d9 / d7);
                if (d10 > 0.99999d) {
                    double sqrt = Math.sqrt(d10) * 1.00001d;
                    abs = (float) (abs * sqrt);
                    abs2 = (float) (sqrt * abs2);
                    d6 = abs * abs;
                    d7 = abs2 * abs2;
                }
                double d11 = z == z2 ? -1.0d : 1.0d;
                double d12 = d6 * d7;
                double d13 = d6 * d9;
                double d14 = d7 * d8;
                double d15 = ((d12 - d13) - d14) / (d13 + d14);
                if (d15 < 0.0d) {
                    d15 = 0.0d;
                }
                double sqrt2 = d11 * Math.sqrt(d15);
                double d16 = abs;
                double d17 = abs2;
                double d18 = ((d16 * d5) / d17) * sqrt2;
                float f10 = abs;
                float f11 = abs2;
                double d19 = sqrt2 * (-((d17 * d4) / d16));
                double d20 = ((f2 + f7) / 2.0d) + ((cos * d18) - (sin * d19));
                double d21 = ((f3 + f8) / 2.0d) + (sin * d18) + (cos * d19);
                double d22 = (d4 - d18) / d16;
                double d23 = (d5 - d19) / d17;
                double d24 = ((-d4) - d18) / d16;
                double d25 = ((-d5) - d19) / d17;
                double d26 = (d22 * d22) + (d23 * d23);
                double acos = (d23 < 0.0d ? -1.0d : 1.0d) * Math.acos(d22 / Math.sqrt(d26));
                double m9556B = ((d22 * d25) - (d23 * d24) >= 0.0d ? 1.0d : -1.0d) * m9556B(((d22 * d24) + (d23 * d25)) / Math.sqrt(d26 * ((d24 * d24) + (d25 * d25))));
                if (!z2 && m9556B > 0.0d) {
                    m9556B -= 6.283185307179586d;
                } else if (z2 && m9556B < 0.0d) {
                    m9556B += 6.283185307179586d;
                }
                float[] m9571n = m9571n(acos % 6.283185307179586d, m9556B % 6.283185307179586d);
                Matrix matrix = new Matrix();
                matrix.postScale(f10, f11);
                matrix.postRotate(f6);
                matrix.postTranslate((float) d20, (float) d21);
                matrix.mapPoints(m9571n);
                m9571n[m9571n.length - 2] = f7;
                m9571n[m9571n.length - 1] = f8;
                for (int i2 = 0; i2 < m9571n.length; i2 += 6) {
                    interfaceC2120w.mo9391a(m9571n[i2], m9571n[i2 + 1], m9571n[i2 + 2], m9571n[i2 + 3], m9571n[i2 + 4], m9571n[i2 + 5]);
                }
                return;
            }
            interfaceC2120w2 = interfaceC2120w;
            f9 = f7;
        }
        interfaceC2120w2.lineTo(f9, f8);
    }

    /* renamed from: n */
    public static float[] m9571n(double d2, double d3) {
        int ceil = (int) Math.ceil((Math.abs(d3) * 2.0d) / 3.141592653589793d);
        double d4 = d3 / ceil;
        double d5 = d4 / 2.0d;
        double sin = (Math.sin(d5) * 1.3333333333333333d) / (Math.cos(d5) + 1.0d);
        float[] fArr = new float[ceil * 6];
        int i2 = 0;
        for (int i3 = 0; i3 < ceil; i3++) {
            double d6 = d2 + (i3 * d4);
            double cos = Math.cos(d6);
            double sin2 = Math.sin(d6);
            int i4 = i2 + 1;
            fArr[i2] = (float) (cos - (sin * sin2));
            int i5 = i4 + 1;
            fArr[i4] = (float) (sin2 + (cos * sin));
            d4 = d4;
            double d7 = d6 + d4;
            double cos2 = Math.cos(d7);
            double sin3 = Math.sin(d7);
            int i6 = i5 + 1;
            fArr[i5] = (float) ((sin * sin3) + cos2);
            int i7 = i6 + 1;
            fArr[i6] = (float) (sin3 - (sin * cos2));
            int i8 = i7 + 1;
            fArr[i7] = (float) cos2;
            i2 = i8 + 1;
            fArr[i8] = (float) sin3;
        }
        return fArr;
    }

    /* renamed from: A */
    public final void m9572A(SVG.C2099l0 c2099l0) {
        Boolean bool;
        if ((c2099l0 instanceof SVG.AbstractC2095j0) && (bool = ((SVG.AbstractC2095j0) c2099l0).f15954d) != null) {
            this.f16107d.f16150h = bool.booleanValue();
        }
    }

    /* renamed from: A0 */
    public final void m9573A0(SVG.C2106p c2106p) {
        m9559G("Line render", new Object[0]);
        m9627e1(this.f16107d, c2106p);
        if (m9584I() && m9631g1() && this.f16107d.f16145c) {
            Matrix matrix = c2106p.f15958n;
            if (matrix != null) {
                this.f16104a.concat(matrix);
            }
            Path m9635i0 = m9635i0(c2106p);
            m9624c1(c2106p);
            m9662x(c2106p);
            m9656u(c2106p);
            boolean m9657u0 = m9657u0();
            m9588K(m9635i0);
            m9600Q0(c2106p);
            if (m9657u0) {
                m9651r0(c2106p);
            }
        }
    }

    /* renamed from: B0 */
    public final void m9574B0(SVG.C2116u c2116u) {
        m9559G("Path render", new Object[0]);
        if (c2116u.f16002o == null) {
            return;
        }
        m9627e1(this.f16107d, c2116u);
        if (m9584I() && m9631g1()) {
            h hVar = this.f16107d;
            if (hVar.f16145c || hVar.f16144b) {
                Matrix matrix = c2116u.f15958n;
                if (matrix != null) {
                    this.f16104a.concat(matrix);
                }
                Path m9671c = new d(c2116u.f16002o).m9671c();
                if (c2116u.f15947h == null) {
                    c2116u.f15947h = m9650r(m9671c);
                }
                m9624c1(c2116u);
                m9662x(c2116u);
                m9656u(c2116u);
                boolean m9657u0 = m9657u0();
                if (this.f16107d.f16144b) {
                    m9671c.setFillType(m9623c0());
                    m9586J(c2116u, m9671c);
                }
                if (this.f16107d.f16145c) {
                    m9588K(m9671c);
                }
                m9600Q0(c2116u);
                if (m9657u0) {
                    m9651r0(c2116u);
                }
            }
        }
    }

    /* renamed from: C0 */
    public final void m9575C0(SVG.C2124y c2124y) {
        m9559G("PolyLine render", new Object[0]);
        m9627e1(this.f16107d, c2124y);
        if (m9584I() && m9631g1()) {
            h hVar = this.f16107d;
            if (hVar.f16145c || hVar.f16144b) {
                Matrix matrix = c2124y.f15958n;
                if (matrix != null) {
                    this.f16104a.concat(matrix);
                }
                if (c2124y.f16026o.length < 2) {
                    return;
                }
                Path m9637j0 = m9637j0(c2124y);
                m9624c1(c2124y);
                m9637j0.setFillType(m9623c0());
                m9662x(c2124y);
                m9656u(c2124y);
                boolean m9657u0 = m9657u0();
                if (this.f16107d.f16144b) {
                    m9586J(c2124y, m9637j0);
                }
                if (this.f16107d.f16145c) {
                    m9588K(m9637j0);
                }
                m9600Q0(c2124y);
                if (m9657u0) {
                    m9651r0(c2124y);
                }
            }
        }
    }

    /* renamed from: D */
    public final void m9576D() {
        this.f16104a.restore();
        this.f16107d = this.f16108e.pop();
    }

    /* renamed from: D0 */
    public final void m9577D0(SVG.C2126z c2126z) {
        m9559G("Polygon render", new Object[0]);
        m9627e1(this.f16107d, c2126z);
        if (m9584I() && m9631g1()) {
            h hVar = this.f16107d;
            if (hVar.f16145c || hVar.f16144b) {
                Matrix matrix = c2126z.f15958n;
                if (matrix != null) {
                    this.f16104a.concat(matrix);
                }
                if (c2126z.f16026o.length < 2) {
                    return;
                }
                Path m9637j0 = m9637j0(c2126z);
                m9624c1(c2126z);
                m9662x(c2126z);
                m9656u(c2126z);
                boolean m9657u0 = m9657u0();
                if (this.f16107d.f16144b) {
                    m9586J(c2126z, m9637j0);
                }
                if (this.f16107d.f16145c) {
                    m9588K(m9637j0);
                }
                m9600Q0(c2126z);
                if (m9657u0) {
                    m9651r0(c2126z);
                }
            }
        }
    }

    /* renamed from: E */
    public final void m9578E() {
        ind.m54725a(this.f16104a, ind.f73407a);
        this.f16108e.push(this.f16107d);
        this.f16107d = new h(this.f16107d);
    }

    /* renamed from: E0 */
    public final void m9579E0(SVG.C2074a0 c2074a0) {
        m9559G("Rect render", new Object[0]);
        SVG.C2104o c2104o = c2074a0.f15898q;
        if (c2104o == null || c2074a0.f15899r == null || c2104o.m9390h() || c2074a0.f15899r.m9390h()) {
            return;
        }
        m9627e1(this.f16107d, c2074a0);
        if (m9584I() && m9631g1()) {
            Matrix matrix = c2074a0.f15958n;
            if (matrix != null) {
                this.f16104a.concat(matrix);
            }
            Path m9639k0 = m9639k0(c2074a0);
            m9624c1(c2074a0);
            m9662x(c2074a0);
            m9656u(c2074a0);
            boolean m9657u0 = m9657u0();
            if (this.f16107d.f16144b) {
                m9586J(c2074a0, m9639k0);
            }
            if (this.f16107d.f16145c) {
                m9588K(m9639k0);
            }
            if (m9657u0) {
                m9651r0(c2074a0);
            }
        }
    }

    /* renamed from: F0 */
    public final void m9580F0(SVG.C2083d0 c2083d0) {
        m9583H0(c2083d0, m9643n0(c2083d0.f15922q, c2083d0.f15923r, c2083d0.f15924s, c2083d0.f15925t), c2083d0.f15984p, c2083d0.f15972o);
    }

    /* renamed from: G0 */
    public final void m9581G0(SVG.C2083d0 c2083d0, SVG.C2076b c2076b) {
        m9583H0(c2083d0, c2076b, c2083d0.f15984p, c2083d0.f15972o);
    }

    /* renamed from: H */
    public final void m9582H(boolean z, SVG.C2076b c2076b, SVG.C2114t c2114t) {
        SVG.C2099l0 m9357m = this.f16106c.m9357m(c2114t.f15999e);
        if (m9357m != null) {
            if (m9357m instanceof SVG.C2097k0) {
                m9628f0(z, c2076b, (SVG.C2097k0) m9357m);
                return;
            } else if (m9357m instanceof SVG.C2105o0) {
                m9642m0(z, c2076b, (SVG.C2105o0) m9357m);
                return;
            } else {
                if (m9357m instanceof SVG.C2077b0) {
                    m9616Y0(z, (SVG.C2077b0) m9357m);
                    return;
                }
                return;
            }
        }
        Object[] objArr = new Object[2];
        objArr[0] = z ? "Fill" : "Stroke";
        objArr[1] = c2114t.f15999e;
        m9560N("%s reference '%s' not found", objArr);
        SVG.AbstractC2101m0 abstractC2101m0 = c2114t.f16000f;
        if (abstractC2101m0 != null) {
            m9614X0(this.f16107d, z, abstractC2101m0);
        } else if (z) {
            this.f16107d.f16144b = false;
        } else {
            this.f16107d.f16145c = false;
        }
    }

    /* renamed from: H0 */
    public final void m9583H0(SVG.C2083d0 c2083d0, SVG.C2076b c2076b, SVG.C2076b c2076b2, PreserveAspectRatio preserveAspectRatio) {
        m9559G("Svg render", new Object[0]);
        if (c2076b.f15906c == 0.0f || c2076b.f15907d == 0.0f) {
            return;
        }
        if (preserveAspectRatio == null && (preserveAspectRatio = c2083d0.f15972o) == null) {
            preserveAspectRatio = PreserveAspectRatio.LETTERBOX;
        }
        m9627e1(this.f16107d, c2083d0);
        if (m9584I()) {
            h hVar = this.f16107d;
            hVar.f16148f = c2076b;
            if (!hVar.f16143a.f15885z.booleanValue()) {
                SVG.C2076b c2076b3 = this.f16107d.f16148f;
                m9612W0(c2076b3.f15904a, c2076b3.f15905b, c2076b3.f15906c, c2076b3.f15907d);
            }
            m9658v(c2083d0, this.f16107d.f16148f);
            if (c2076b2 != null) {
                this.f16104a.concat(m9654t(this.f16107d.f16148f, c2076b2, preserveAspectRatio));
                this.f16107d.f16149g = c2083d0.f15984p;
            } else {
                Canvas canvas = this.f16104a;
                SVG.C2076b c2076b4 = this.f16107d.f16148f;
                canvas.translate(c2076b4.f15904a, c2076b4.f15905b);
            }
            boolean m9657u0 = m9657u0();
            m9629f1();
            m9594N0(c2083d0, true);
            if (m9657u0) {
                m9651r0(c2083d0);
            }
            m9624c1(c2083d0);
        }
    }

    /* renamed from: I */
    public final boolean m9584I() {
        Boolean bool = this.f16107d.f16143a.f15863k0;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* renamed from: I0 */
    public final void m9585I0(SVG.C2099l0 c2099l0) {
        if (c2099l0 instanceof SVG.InterfaceC2112s) {
            return;
        }
        m9620a1();
        m9572A(c2099l0);
        if (c2099l0 instanceof SVG.C2083d0) {
            m9580F0((SVG.C2083d0) c2099l0);
        } else if (c2099l0 instanceof SVG.C2078b1) {
            m9593M0((SVG.C2078b1) c2099l0);
        } else if (c2099l0 instanceof SVG.C2109q0) {
            m9587J0((SVG.C2109q0) c2099l0);
        } else if (c2099l0 instanceof SVG.C2098l) {
            m9665y0((SVG.C2098l) c2099l0);
        } else if (c2099l0 instanceof SVG.C2102n) {
            m9667z0((SVG.C2102n) c2099l0);
        } else if (c2099l0 instanceof SVG.C2116u) {
            m9574B0((SVG.C2116u) c2099l0);
        } else if (c2099l0 instanceof SVG.C2074a0) {
            m9579E0((SVG.C2074a0) c2099l0);
        } else if (c2099l0 instanceof SVG.C2082d) {
            m9661w0((SVG.C2082d) c2099l0);
        } else if (c2099l0 instanceof SVG.C2092i) {
            m9663x0((SVG.C2092i) c2099l0);
        } else if (c2099l0 instanceof SVG.C2106p) {
            m9573A0((SVG.C2106p) c2099l0);
        } else if (c2099l0 instanceof SVG.C2126z) {
            m9577D0((SVG.C2126z) c2099l0);
        } else if (c2099l0 instanceof SVG.C2124y) {
            m9575C0((SVG.C2124y) c2099l0);
        } else if (c2099l0 instanceof SVG.C2117u0) {
            m9591L0((SVG.C2117u0) c2099l0);
        }
        m9618Z0();
    }

    /* renamed from: J */
    public final void m9586J(SVG.AbstractC2093i0 abstractC2093i0, Path path) {
        SVG.AbstractC2101m0 abstractC2101m0 = this.f16107d.f16143a.f15857f;
        if (abstractC2101m0 instanceof SVG.C2114t) {
            SVG.C2099l0 m9357m = this.f16106c.m9357m(((SVG.C2114t) abstractC2101m0).f15999e);
            if (m9357m instanceof SVG.C2122x) {
                m9605T(abstractC2093i0, path, (SVG.C2122x) m9357m);
                return;
            }
        }
        this.f16104a.drawPath(path, this.f16107d.f16146d);
    }

    /* renamed from: J0 */
    public final void m9587J0(SVG.C2109q0 c2109q0) {
        m9559G("Switch render", new Object[0]);
        m9627e1(this.f16107d, c2109q0);
        if (m9584I()) {
            Matrix matrix = c2109q0.f15963o;
            if (matrix != null) {
                this.f16104a.concat(matrix);
            }
            m9656u(c2109q0);
            boolean m9657u0 = m9657u0();
            m9604S0(c2109q0);
            if (m9657u0) {
                m9651r0(c2109q0);
            }
            m9624c1(c2109q0);
        }
    }

    /* renamed from: K */
    public final void m9588K(Path path) {
        h hVar = this.f16107d;
        if (hVar.f16143a.f15850C0 != SVG.Style.VectorEffect.NonScalingStroke) {
            this.f16104a.drawPath(path, hVar.f16147e);
            return;
        }
        Matrix matrix = this.f16104a.getMatrix();
        Path path2 = new Path();
        path.transform(matrix, path2);
        this.f16104a.setMatrix(new Matrix());
        Shader shader = this.f16107d.f16147e.getShader();
        Matrix matrix2 = new Matrix();
        if (shader != null) {
            shader.getLocalMatrix(matrix2);
            Matrix matrix3 = new Matrix(matrix2);
            matrix3.postConcat(matrix);
            shader.setLocalMatrix(matrix3);
        }
        this.f16104a.drawPath(path2, this.f16107d.f16147e);
        this.f16104a.setMatrix(matrix);
        if (shader != null) {
            shader.setLocalMatrix(matrix2);
        }
    }

    /* renamed from: K0 */
    public final void m9589K0(SVG.C2111r0 c2111r0, SVG.C2076b c2076b) {
        m9559G("Symbol render", new Object[0]);
        if (c2076b.f15906c == 0.0f || c2076b.f15907d == 0.0f) {
            return;
        }
        PreserveAspectRatio preserveAspectRatio = c2111r0.f15972o;
        if (preserveAspectRatio == null) {
            preserveAspectRatio = PreserveAspectRatio.LETTERBOX;
        }
        m9627e1(this.f16107d, c2111r0);
        h hVar = this.f16107d;
        hVar.f16148f = c2076b;
        if (!hVar.f16143a.f15885z.booleanValue()) {
            SVG.C2076b c2076b2 = this.f16107d.f16148f;
            m9612W0(c2076b2.f15904a, c2076b2.f15905b, c2076b2.f15906c, c2076b2.f15907d);
        }
        SVG.C2076b c2076b3 = c2111r0.f15984p;
        if (c2076b3 != null) {
            this.f16104a.concat(m9654t(this.f16107d.f16148f, c2076b3, preserveAspectRatio));
            this.f16107d.f16149g = c2111r0.f15984p;
        } else {
            Canvas canvas = this.f16104a;
            SVG.C2076b c2076b4 = this.f16107d.f16148f;
            canvas.translate(c2076b4.f15904a, c2076b4.f15905b);
        }
        boolean m9657u0 = m9657u0();
        m9594N0(c2111r0, true);
        if (m9657u0) {
            m9651r0(c2111r0);
        }
        m9624c1(c2111r0);
    }

    /* renamed from: L */
    public final float m9590L(float f2, float f3, float f4, float f5) {
        return (f2 * f4) + (f3 * f5);
    }

    /* renamed from: L0 */
    public final void m9591L0(SVG.C2117u0 c2117u0) {
        m9559G("Text render", new Object[0]);
        m9627e1(this.f16107d, c2117u0);
        if (m9584I()) {
            Matrix matrix = c2117u0.f16004s;
            if (matrix != null) {
                this.f16104a.concat(matrix);
            }
            List<SVG.C2104o> list = c2117u0.f16027o;
            float f2 = 0.0f;
            float m9387e = (list == null || list.size() == 0) ? 0.0f : c2117u0.f16027o.get(0).m9387e(this);
            List<SVG.C2104o> list2 = c2117u0.f16028p;
            float m9388f = (list2 == null || list2.size() == 0) ? 0.0f : c2117u0.f16028p.get(0).m9388f(this);
            List<SVG.C2104o> list3 = c2117u0.f16029q;
            float m9387e2 = (list3 == null || list3.size() == 0) ? 0.0f : c2117u0.f16029q.get(0).m9387e(this);
            List<SVG.C2104o> list4 = c2117u0.f16030r;
            if (list4 != null && list4.size() != 0) {
                f2 = c2117u0.f16030r.get(0).m9388f(this);
            }
            SVG.Style.TextAnchor m9611W = m9611W();
            if (m9611W != SVG.Style.TextAnchor.Start) {
                float m9652s = m9652s(c2117u0);
                if (m9611W == SVG.Style.TextAnchor.Middle) {
                    m9652s /= 2.0f;
                }
                m9387e -= m9652s;
            }
            if (c2117u0.f15947h == null) {
                i iVar = new i(m9387e, m9388f);
                m9592M(c2117u0, iVar);
                RectF rectF = iVar.f16154d;
                c2117u0.f15947h = new SVG.C2076b(rectF.left, rectF.top, rectF.width(), iVar.f16154d.height());
            }
            m9624c1(c2117u0);
            m9662x(c2117u0);
            m9656u(c2117u0);
            boolean m9657u0 = m9657u0();
            m9592M(c2117u0, new f(m9387e + m9387e2, m9388f + f2));
            if (m9657u0) {
                m9651r0(c2117u0);
            }
        }
    }

    /* renamed from: M */
    public final void m9592M(SVG.AbstractC2121w0 abstractC2121w0, j jVar) {
        if (m9584I()) {
            Iterator<SVG.C2099l0> it2 = abstractC2121w0.f15931i.iterator();
            boolean z = true;
            while (it2.hasNext()) {
                SVG.C2099l0 next = it2.next();
                if (next instanceof SVG.C2075a1) {
                    jVar.mo9672b(m9622b1(((SVG.C2075a1) next).f15902c, z, !it2.hasNext()));
                } else {
                    m9655t0(next, jVar);
                }
                z = false;
            }
        }
    }

    /* renamed from: M0 */
    public final void m9593M0(SVG.C2078b1 c2078b1) {
        m9559G("Use render", new Object[0]);
        SVG.C2104o c2104o = c2078b1.f15911s;
        if (c2104o == null || !c2104o.m9390h()) {
            SVG.C2104o c2104o2 = c2078b1.f15912t;
            if (c2104o2 == null || !c2104o2.m9390h()) {
                m9627e1(this.f16107d, c2078b1);
                if (m9584I()) {
                    SVG.C2099l0 m9357m = c2078b1.f15964a.m9357m(c2078b1.f15908p);
                    if (m9357m == null) {
                        m9560N("Use reference '%s' not found", c2078b1.f15908p);
                        return;
                    }
                    Matrix matrix = c2078b1.f15963o;
                    if (matrix != null) {
                        this.f16104a.concat(matrix);
                    }
                    SVG.C2104o c2104o3 = c2078b1.f15909q;
                    float m9387e = c2104o3 != null ? c2104o3.m9387e(this) : 0.0f;
                    SVG.C2104o c2104o4 = c2078b1.f15910r;
                    this.f16104a.translate(m9387e, c2104o4 != null ? c2104o4.m9388f(this) : 0.0f);
                    m9656u(c2078b1);
                    boolean m9657u0 = m9657u0();
                    m9649q0(c2078b1);
                    if (m9357m instanceof SVG.C2083d0) {
                        SVG.C2076b m9643n0 = m9643n0(null, null, c2078b1.f15911s, c2078b1.f15912t);
                        m9620a1();
                        m9581G0((SVG.C2083d0) m9357m, m9643n0);
                        m9618Z0();
                    } else if (m9357m instanceof SVG.C2111r0) {
                        SVG.C2104o c2104o5 = c2078b1.f15911s;
                        if (c2104o5 == null) {
                            c2104o5 = new SVG.C2104o(100.0f, SVG.Unit.percent);
                        }
                        SVG.C2104o c2104o6 = c2078b1.f15912t;
                        if (c2104o6 == null) {
                            c2104o6 = new SVG.C2104o(100.0f, SVG.Unit.percent);
                        }
                        SVG.C2076b m9643n02 = m9643n0(null, null, c2104o5, c2104o6);
                        m9620a1();
                        m9589K0((SVG.C2111r0) m9357m, m9643n02);
                        m9618Z0();
                    } else {
                        m9585I0(m9357m);
                    }
                    m9647p0();
                    if (m9657u0) {
                        m9651r0(c2078b1);
                    }
                    m9624c1(c2078b1);
                }
            }
        }
    }

    /* renamed from: N0 */
    public final void m9594N0(SVG.InterfaceC2091h0 interfaceC2091h0, boolean z) {
        if (z) {
            m9649q0(interfaceC2091h0);
        }
        Iterator<SVG.C2099l0> it2 = interfaceC2091h0.getChildren().iterator();
        while (it2.hasNext()) {
            m9585I0(it2.next());
        }
        if (z) {
            m9647p0();
        }
    }

    /* renamed from: O */
    public final void m9595O(SVG.AbstractC2121w0 abstractC2121w0, StringBuilder sb) {
        Iterator<SVG.C2099l0> it2 = abstractC2121w0.f15931i.iterator();
        boolean z = true;
        while (it2.hasNext()) {
            SVG.C2099l0 next = it2.next();
            if (next instanceof SVG.AbstractC2121w0) {
                m9595O((SVG.AbstractC2121w0) next, sb);
            } else if (next instanceof SVG.C2075a1) {
                sb.append(m9622b1(((SVG.C2075a1) next).f15902c, z, !it2.hasNext()));
            }
            z = false;
        }
    }

    /* renamed from: O0 */
    public void m9596O0(SVG svg, RenderOptions renderOptions) {
        SVG.C2076b c2076b;
        PreserveAspectRatio preserveAspectRatio;
        if (renderOptions == null) {
            throw new NullPointerException("renderOptions shouldn't be null");
        }
        this.f16106c = svg;
        SVG.C2083d0 m9355k = svg.m9355k();
        if (m9355k == null) {
            m9569h1("Nothing to render. Document is empty.", new Object[0]);
            return;
        }
        if (renderOptions.hasView()) {
            SVG.AbstractC2095j0 m9352g = this.f16106c.m9352g(renderOptions.f15791e);
            if (m9352g == null || !(m9352g instanceof SVG.C2081c1)) {
                Log.w(f16097i, String.format("View element with id \"%s\" not found.", renderOptions.f15791e));
                return;
            }
            SVG.C2081c1 c2081c1 = (SVG.C2081c1) m9352g;
            c2076b = c2081c1.f15984p;
            if (c2076b == null) {
                Log.w(f16097i, String.format("View element with id \"%s\" is missing a viewBox attribute.", renderOptions.f15791e));
                return;
            }
            preserveAspectRatio = c2081c1.f15972o;
        } else {
            c2076b = renderOptions.hasViewBox() ? renderOptions.f15790d : m9355k.f15984p;
            preserveAspectRatio = renderOptions.hasPreserveAspectRatio() ? renderOptions.f15788b : m9355k.f15972o;
        }
        if (renderOptions.hasCss()) {
            svg.m9346a(renderOptions.f15787a);
        }
        if (renderOptions.hasTarget()) {
            CSSParser.C2068m c2068m = new CSSParser.C2068m();
            this.f16111h = c2068m;
            c2068m.f15777a = svg.m9352g(renderOptions.f15789c);
        }
        m9610V0();
        m9572A(m9355k);
        m9620a1();
        SVG.C2076b c2076b2 = new SVG.C2076b(renderOptions.f15792f);
        SVG.C2104o c2104o = m9355k.f15924s;
        if (c2104o != null) {
            c2076b2.f15906c = c2104o.m9386d(this, c2076b2.f15906c);
        }
        SVG.C2104o c2104o2 = m9355k.f15925t;
        if (c2104o2 != null) {
            c2076b2.f15907d = c2104o2.m9386d(this, c2076b2.f15907d);
        }
        m9583H0(m9355k, c2076b2, c2076b, preserveAspectRatio);
        m9618Z0();
        if (renderOptions.hasCss()) {
            svg.m9347b();
        }
    }

    /* renamed from: P */
    public final void m9597P(SVG.AbstractC2094j abstractC2094j, String str) {
        SVG.C2099l0 m9357m = abstractC2094j.f15964a.m9357m(str);
        if (m9357m == null) {
            m9569h1("Gradient reference '%s' not found", str);
            return;
        }
        if (!(m9357m instanceof SVG.AbstractC2094j)) {
            m9560N("Gradient href attributes must point to other gradient elements", new Object[0]);
            return;
        }
        if (m9357m == abstractC2094j) {
            m9560N("Circular reference in gradient href attribute '%s'", str);
            return;
        }
        SVG.AbstractC2094j abstractC2094j2 = (SVG.AbstractC2094j) m9357m;
        if (abstractC2094j.f15949i == null) {
            abstractC2094j.f15949i = abstractC2094j2.f15949i;
        }
        if (abstractC2094j.f15950j == null) {
            abstractC2094j.f15950j = abstractC2094j2.f15950j;
        }
        if (abstractC2094j.f15951k == null) {
            abstractC2094j.f15951k = abstractC2094j2.f15951k;
        }
        if (abstractC2094j.f15948h.isEmpty()) {
            abstractC2094j.f15948h = abstractC2094j2.f15948h;
        }
        try {
            if (abstractC2094j instanceof SVG.C2097k0) {
                m9599Q((SVG.C2097k0) abstractC2094j, (SVG.C2097k0) m9357m);
            } else {
                m9601R((SVG.C2105o0) abstractC2094j, (SVG.C2105o0) m9357m);
            }
        } catch (ClassCastException unused) {
        }
        String str2 = abstractC2094j2.f15952l;
        if (str2 != null) {
            m9597P(abstractC2094j, str2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ff, code lost:
    
        if (r7 != 8) goto L67;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x003b  */
    /* renamed from: P0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9598P0(com.caverock.androidsvg.SVG.C2108q r12, com.caverock.androidsvg.C2139a.c r13) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.C2139a.m9598P0(com.caverock.androidsvg.SVG$q, com.caverock.androidsvg.a$c):void");
    }

    /* renamed from: Q */
    public final void m9599Q(SVG.C2097k0 c2097k0, SVG.C2097k0 c2097k02) {
        if (c2097k0.f15959m == null) {
            c2097k0.f15959m = c2097k02.f15959m;
        }
        if (c2097k0.f15960n == null) {
            c2097k0.f15960n = c2097k02.f15960n;
        }
        if (c2097k0.f15961o == null) {
            c2097k0.f15961o = c2097k02.f15961o;
        }
        if (c2097k0.f15962p == null) {
            c2097k0.f15962p = c2097k02.f15962p;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0096 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0083  */
    /* renamed from: Q0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9600Q0(com.caverock.androidsvg.SVG.AbstractC2096k r10) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.C2139a.m9600Q0(com.caverock.androidsvg.SVG$k):void");
    }

    /* renamed from: R */
    public final void m9601R(SVG.C2105o0 c2105o0, SVG.C2105o0 c2105o02) {
        if (c2105o0.f15975m == null) {
            c2105o0.f15975m = c2105o02.f15975m;
        }
        if (c2105o0.f15976n == null) {
            c2105o0.f15976n = c2105o02.f15976n;
        }
        if (c2105o0.f15977o == null) {
            c2105o0.f15977o = c2105o02.f15977o;
        }
        if (c2105o0.f15978p == null) {
            c2105o0.f15978p = c2105o02.f15978p;
        }
        if (c2105o0.f15979q == null) {
            c2105o0.f15979q = c2105o02.f15979q;
        }
    }

    /* renamed from: R0 */
    public final void m9602R0(SVG.C2110r c2110r, SVG.AbstractC2093i0 abstractC2093i0, SVG.C2076b c2076b) {
        float f2;
        float f3;
        m9559G("Mask render", new Object[0]);
        Boolean bool = c2110r.f15991o;
        boolean z = true;
        if (bool != null && bool.booleanValue()) {
            SVG.C2104o c2104o = c2110r.f15995s;
            f2 = c2104o != null ? c2104o.m9387e(this) : c2076b.f15906c;
            SVG.C2104o c2104o2 = c2110r.f15996t;
            f3 = c2104o2 != null ? c2104o2.m9388f(this) : c2076b.f15907d;
        } else {
            SVG.C2104o c2104o3 = c2110r.f15995s;
            float m9386d = c2104o3 != null ? c2104o3.m9386d(this, 1.0f) : 1.2f;
            SVG.C2104o c2104o4 = c2110r.f15996t;
            float m9386d2 = c2104o4 != null ? c2104o4.m9386d(this, 1.0f) : 1.2f;
            f2 = m9386d * c2076b.f15906c;
            f3 = m9386d2 * c2076b.f15907d;
        }
        if (f2 == 0.0f || f3 == 0.0f) {
            return;
        }
        m9620a1();
        h m9607U = m9607U(c2110r);
        this.f16107d = m9607U;
        m9607U.f16143a.f15869q = Float.valueOf(1.0f);
        boolean m9657u0 = m9657u0();
        this.f16104a.save();
        Boolean bool2 = c2110r.f15992p;
        if (bool2 != null && !bool2.booleanValue()) {
            z = false;
        }
        if (!z) {
            this.f16104a.translate(c2076b.f15904a, c2076b.f15905b);
            this.f16104a.scale(c2076b.f15906c, c2076b.f15907d);
        }
        m9594N0(c2110r, false);
        this.f16104a.restore();
        if (m9657u0) {
            m9653s0(abstractC2093i0, c2076b);
        }
        m9618Z0();
    }

    /* renamed from: S */
    public final void m9603S(SVG.C2122x c2122x, String str) {
        SVG.C2099l0 m9357m = c2122x.f15964a.m9357m(str);
        if (m9357m == null) {
            m9569h1("Pattern reference '%s' not found", str);
            return;
        }
        if (!(m9357m instanceof SVG.C2122x)) {
            m9560N("Pattern href attributes must point to other pattern elements", new Object[0]);
            return;
        }
        if (m9357m == c2122x) {
            m9560N("Circular reference in pattern href attribute '%s'", str);
            return;
        }
        SVG.C2122x c2122x2 = (SVG.C2122x) m9357m;
        if (c2122x.f16015q == null) {
            c2122x.f16015q = c2122x2.f16015q;
        }
        if (c2122x.f16016r == null) {
            c2122x.f16016r = c2122x2.f16016r;
        }
        if (c2122x.f16017s == null) {
            c2122x.f16017s = c2122x2.f16017s;
        }
        if (c2122x.f16018t == null) {
            c2122x.f16018t = c2122x2.f16018t;
        }
        if (c2122x.f16019u == null) {
            c2122x.f16019u = c2122x2.f16019u;
        }
        if (c2122x.f16020v == null) {
            c2122x.f16020v = c2122x2.f16020v;
        }
        if (c2122x.f16021w == null) {
            c2122x.f16021w = c2122x2.f16021w;
        }
        if (c2122x.f15931i.isEmpty()) {
            c2122x.f15931i = c2122x2.f15931i;
        }
        if (c2122x.f15984p == null) {
            c2122x.f15984p = c2122x2.f15984p;
        }
        if (c2122x.f15972o == null) {
            c2122x.f15972o = c2122x2.f15972o;
        }
        String str2 = c2122x2.f16022x;
        if (str2 != null) {
            m9603S(c2122x, str2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: S0 */
    public final void m9604S0(SVG.C2109q0 c2109q0) {
        Set<String> mo9378i;
        String language = Locale.getDefault().getLanguage();
        SVGExternalFileResolver m9345j = SVG.m9345j();
        for (SVG.C2099l0 c2099l0 : c2109q0.getChildren()) {
            if (c2099l0 instanceof SVG.InterfaceC2085e0) {
                SVG.InterfaceC2085e0 interfaceC2085e0 = (SVG.InterfaceC2085e0) c2099l0;
                if (interfaceC2085e0.mo9375f() == null && ((mo9378i = interfaceC2085e0.mo9378i()) == null || (!mo9378i.isEmpty() && mo9378i.contains(language)))) {
                    Set<String> requiredFeatures = interfaceC2085e0.getRequiredFeatures();
                    if (requiredFeatures != null) {
                        if (f16103o == null) {
                            m9565d0();
                        }
                        if (!requiredFeatures.isEmpty() && f16103o.containsAll(requiredFeatures)) {
                        }
                    }
                    Set<String> mo9377h = interfaceC2085e0.mo9377h();
                    if (mo9377h != null) {
                        if (!mo9377h.isEmpty() && m9345j != null) {
                            Iterator<String> it2 = mo9377h.iterator();
                            while (it2.hasNext()) {
                                if (!m9345j.isFormatSupported(it2.next())) {
                                    break;
                                }
                            }
                        }
                    }
                    Set<String> mo9380m = interfaceC2085e0.mo9380m();
                    if (mo9380m != null) {
                        if (!mo9380m.isEmpty() && m9345j != null) {
                            Iterator<String> it3 = mo9380m.iterator();
                            while (it3.hasNext()) {
                                if (m9345j.resolveFont(it3.next(), this.f16107d.f16143a.f15875u.intValue(), String.valueOf(this.f16107d.f16143a.f15877v)) == null) {
                                    break;
                                }
                            }
                        }
                    }
                    m9585I0(c2099l0);
                    return;
                }
            }
        }
    }

    /* renamed from: T */
    public final void m9605T(SVG.AbstractC2093i0 abstractC2093i0, Path path, SVG.C2122x c2122x) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        Boolean bool = c2122x.f16015q;
        boolean z = bool != null && bool.booleanValue();
        String str = c2122x.f16022x;
        if (str != null) {
            m9603S(c2122x, str);
        }
        if (z) {
            SVG.C2104o c2104o = c2122x.f16018t;
            f2 = c2104o != null ? c2104o.m9387e(this) : 0.0f;
            SVG.C2104o c2104o2 = c2122x.f16019u;
            f4 = c2104o2 != null ? c2104o2.m9388f(this) : 0.0f;
            SVG.C2104o c2104o3 = c2122x.f16020v;
            f5 = c2104o3 != null ? c2104o3.m9387e(this) : 0.0f;
            SVG.C2104o c2104o4 = c2122x.f16021w;
            f3 = c2104o4 != null ? c2104o4.m9388f(this) : 0.0f;
        } else {
            SVG.C2104o c2104o5 = c2122x.f16018t;
            float m9386d = c2104o5 != null ? c2104o5.m9386d(this, 1.0f) : 0.0f;
            SVG.C2104o c2104o6 = c2122x.f16019u;
            float m9386d2 = c2104o6 != null ? c2104o6.m9386d(this, 1.0f) : 0.0f;
            SVG.C2104o c2104o7 = c2122x.f16020v;
            float m9386d3 = c2104o7 != null ? c2104o7.m9386d(this, 1.0f) : 0.0f;
            SVG.C2104o c2104o8 = c2122x.f16021w;
            float m9386d4 = c2104o8 != null ? c2104o8.m9386d(this, 1.0f) : 0.0f;
            SVG.C2076b c2076b = abstractC2093i0.f15947h;
            float f7 = c2076b.f15904a;
            float f8 = c2076b.f15906c;
            f2 = (m9386d * f8) + f7;
            float f9 = c2076b.f15905b;
            float f10 = c2076b.f15907d;
            float f11 = m9386d3 * f8;
            f3 = m9386d4 * f10;
            f4 = (m9386d2 * f10) + f9;
            f5 = f11;
        }
        if (f5 == 0.0f || f3 == 0.0f) {
            return;
        }
        PreserveAspectRatio preserveAspectRatio = c2122x.f15972o;
        if (preserveAspectRatio == null) {
            preserveAspectRatio = PreserveAspectRatio.LETTERBOX;
        }
        m9620a1();
        this.f16104a.clipPath(path);
        h hVar = new h();
        m9625d1(hVar, SVG.Style.m9361a());
        hVar.f16143a.f15885z = Boolean.FALSE;
        this.f16107d = m9609V(c2122x, hVar);
        SVG.C2076b c2076b2 = abstractC2093i0.f15947h;
        Matrix matrix = c2122x.f16017s;
        if (matrix != null) {
            this.f16104a.concat(matrix);
            Matrix matrix2 = new Matrix();
            if (c2122x.f16017s.invert(matrix2)) {
                SVG.C2076b c2076b3 = abstractC2093i0.f15947h;
                SVG.C2076b c2076b4 = abstractC2093i0.f15947h;
                SVG.C2076b c2076b5 = abstractC2093i0.f15947h;
                float[] fArr = {c2076b3.f15904a, c2076b3.f15905b, c2076b3.m9367b(), c2076b4.f15905b, c2076b4.m9367b(), abstractC2093i0.f15947h.m9368c(), c2076b5.f15904a, c2076b5.m9368c()};
                matrix2.mapPoints(fArr);
                float f12 = fArr[0];
                float f13 = fArr[1];
                RectF rectF = new RectF(f12, f13, f12, f13);
                for (int i2 = 2; i2 <= 6; i2 += 2) {
                    float f14 = fArr[i2];
                    if (f14 < rectF.left) {
                        rectF.left = f14;
                    }
                    if (f14 > rectF.right) {
                        rectF.right = f14;
                    }
                    float f15 = fArr[i2 + 1];
                    if (f15 < rectF.top) {
                        rectF.top = f15;
                    }
                    if (f15 > rectF.bottom) {
                        rectF.bottom = f15;
                    }
                }
                float f16 = rectF.left;
                float f17 = rectF.top;
                c2076b2 = new SVG.C2076b(f16, f17, rectF.right - f16, rectF.bottom - f17);
            }
        }
        float floor = f2 + (((float) Math.floor((c2076b2.f15904a - f2) / f5)) * f5);
        float m9367b = c2076b2.m9367b();
        float m9368c = c2076b2.m9368c();
        SVG.C2076b c2076b6 = new SVG.C2076b(0.0f, 0.0f, f5, f3);
        boolean m9657u0 = m9657u0();
        for (float floor2 = f4 + (((float) Math.floor((c2076b2.f15905b - f4) / f3)) * f3); floor2 < m9368c; floor2 += f3) {
            float f18 = floor;
            while (f18 < m9367b) {
                c2076b6.f15904a = f18;
                c2076b6.f15905b = floor2;
                m9620a1();
                if (this.f16107d.f16143a.f15885z.booleanValue()) {
                    f6 = floor;
                } else {
                    f6 = floor;
                    m9612W0(c2076b6.f15904a, c2076b6.f15905b, c2076b6.f15906c, c2076b6.f15907d);
                }
                SVG.C2076b c2076b7 = c2122x.f15984p;
                if (c2076b7 != null) {
                    this.f16104a.concat(m9654t(c2076b6, c2076b7, preserveAspectRatio));
                } else {
                    Boolean bool2 = c2122x.f16016r;
                    boolean z2 = bool2 == null || bool2.booleanValue();
                    this.f16104a.translate(f18, floor2);
                    if (!z2) {
                        Canvas canvas = this.f16104a;
                        SVG.C2076b c2076b8 = abstractC2093i0.f15947h;
                        canvas.scale(c2076b8.f15906c, c2076b8.f15907d);
                    }
                }
                Iterator<SVG.C2099l0> it2 = c2122x.f15931i.iterator();
                while (it2.hasNext()) {
                    m9585I0(it2.next());
                }
                m9618Z0();
                f18 += f5;
                floor = f6;
            }
        }
        if (m9657u0) {
            m9651r0(c2122x);
        }
        m9618Z0();
    }

    /* renamed from: T0 */
    public final void m9606T0(SVG.C2123x0 c2123x0) {
        m9559G("TextPath render", new Object[0]);
        m9627e1(this.f16107d, c2123x0);
        if (m9584I() && m9631g1()) {
            SVG.C2099l0 m9357m = c2123x0.f15964a.m9357m(c2123x0.f16023o);
            if (m9357m == null) {
                m9560N("TextPath reference '%s' not found", c2123x0.f16023o);
                return;
            }
            SVG.C2116u c2116u = (SVG.C2116u) m9357m;
            Path m9671c = new d(c2116u.f16002o).m9671c();
            Matrix matrix = c2116u.f15958n;
            if (matrix != null) {
                m9671c.transform(matrix);
            }
            PathMeasure pathMeasure = new PathMeasure(m9671c, false);
            SVG.C2104o c2104o = c2123x0.f16024p;
            float m9386d = c2104o != null ? c2104o.m9386d(this, pathMeasure.getLength()) : 0.0f;
            SVG.Style.TextAnchor m9611W = m9611W();
            if (m9611W != SVG.Style.TextAnchor.Start) {
                float m9652s = m9652s(c2123x0);
                if (m9611W == SVG.Style.TextAnchor.Middle) {
                    m9652s /= 2.0f;
                }
                m9386d -= m9652s;
            }
            m9662x((SVG.AbstractC2093i0) c2123x0.mo9364a());
            boolean m9657u0 = m9657u0();
            m9592M(c2123x0, new e(m9671c, m9386d, 0.0f));
            if (m9657u0) {
                m9651r0(c2123x0);
            }
        }
    }

    /* renamed from: U */
    public final h m9607U(SVG.C2099l0 c2099l0) {
        h hVar = new h();
        m9625d1(hVar, SVG.Style.m9361a());
        return m9609V(c2099l0, hVar);
    }

    /* renamed from: U0 */
    public final boolean m9608U0() {
        return this.f16107d.f16143a.f15869q.floatValue() < 1.0f || this.f16107d.f16143a.f15882x0 != null;
    }

    /* renamed from: V */
    public final h m9609V(SVG.C2099l0 c2099l0, h hVar) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (c2099l0 instanceof SVG.AbstractC2095j0) {
                arrayList.add(0, (SVG.AbstractC2095j0) c2099l0);
            }
            Object obj = c2099l0.f15965b;
            if (obj == null) {
                break;
            }
            c2099l0 = (SVG.C2099l0) obj;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            m9627e1(hVar, (SVG.AbstractC2095j0) it2.next());
        }
        h hVar2 = this.f16107d;
        hVar.f16149g = hVar2.f16149g;
        hVar.f16148f = hVar2.f16148f;
        return hVar;
    }

    /* renamed from: V0 */
    public final void m9610V0() {
        this.f16107d = new h();
        this.f16108e = new Stack<>();
        m9625d1(this.f16107d, SVG.Style.m9361a());
        h hVar = this.f16107d;
        hVar.f16148f = null;
        hVar.f16150h = false;
        this.f16108e.push(new h(hVar));
        this.f16110g = new Stack<>();
        this.f16109f = new Stack<>();
    }

    /* renamed from: W */
    public final SVG.Style.TextAnchor m9611W() {
        SVG.Style.TextAnchor textAnchor;
        SVG.Style style = this.f16107d.f16143a;
        if (style.f15881x == SVG.Style.TextDirection.LTR || (textAnchor = style.f15883y) == SVG.Style.TextAnchor.Middle) {
            return style.f15883y;
        }
        SVG.Style.TextAnchor textAnchor2 = SVG.Style.TextAnchor.Start;
        return textAnchor == textAnchor2 ? SVG.Style.TextAnchor.End : textAnchor2;
    }

    /* renamed from: W0 */
    public final void m9612W0(float f2, float f3, float f4, float f5) {
        float f6 = f4 + f2;
        float f7 = f5 + f3;
        SVG.C2079c c2079c = this.f16107d.f16143a.f15852J;
        if (c2079c != null) {
            f2 += c2079c.f15916d.m9387e(this);
            f3 += this.f16107d.f16143a.f15852J.f15913a.m9388f(this);
            f6 -= this.f16107d.f16143a.f15852J.f15914b.m9387e(this);
            f7 -= this.f16107d.f16143a.f15852J.f15915c.m9388f(this);
        }
        this.f16104a.clipRect(f2, f3, f6, f7);
    }

    /* renamed from: X */
    public final Path.FillType m9613X() {
        SVG.Style.FillRule fillRule = this.f16107d.f16143a.f15880w0;
        return (fillRule == null || fillRule != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
    }

    /* renamed from: X0 */
    public final void m9614X0(h hVar, boolean z, SVG.AbstractC2101m0 abstractC2101m0) {
        int i2;
        SVG.Style style = hVar.f16143a;
        float floatValue = (z ? style.f15859h : style.f15861j).floatValue();
        if (abstractC2101m0 instanceof SVG.C2086f) {
            i2 = ((SVG.C2086f) abstractC2101m0).f15930e;
        } else if (!(abstractC2101m0 instanceof SVG.C2088g)) {
            return;
        } else {
            i2 = hVar.f16143a.f15871r.f15930e;
        }
        int m9558F = m9558F(i2, floatValue);
        if (z) {
            hVar.f16146d.setColor(m9558F);
        } else {
            hVar.f16147e.setColor(m9558F);
        }
    }

    /* renamed from: Y */
    public float m9615Y() {
        return this.f16107d.f16146d.getTextSize();
    }

    /* renamed from: Y0 */
    public final void m9616Y0(boolean z, SVG.C2077b0 c2077b0) {
        if (z) {
            if (m9626e0(c2077b0.f15955e, SVG.f15810R)) {
                h hVar = this.f16107d;
                SVG.Style style = hVar.f16143a;
                SVG.AbstractC2101m0 abstractC2101m0 = c2077b0.f15955e.f15884y0;
                style.f15857f = abstractC2101m0;
                hVar.f16144b = abstractC2101m0 != null;
            }
            if (m9626e0(c2077b0.f15955e, 4294967296L)) {
                this.f16107d.f16143a.f15859h = c2077b0.f15955e.f15886z0;
            }
            if (m9626e0(c2077b0.f15955e, 6442450944L)) {
                h hVar2 = this.f16107d;
                m9614X0(hVar2, z, hVar2.f16143a.f15857f);
                return;
            }
            return;
        }
        if (m9626e0(c2077b0.f15955e, SVG.f15810R)) {
            h hVar3 = this.f16107d;
            SVG.Style style2 = hVar3.f16143a;
            SVG.AbstractC2101m0 abstractC2101m02 = c2077b0.f15955e.f15884y0;
            style2.f15860i = abstractC2101m02;
            hVar3.f16145c = abstractC2101m02 != null;
        }
        if (m9626e0(c2077b0.f15955e, 4294967296L)) {
            this.f16107d.f16143a.f15861j = c2077b0.f15955e.f15886z0;
        }
        if (m9626e0(c2077b0.f15955e, 6442450944L)) {
            h hVar4 = this.f16107d;
            m9614X0(hVar4, z, hVar4.f16143a.f15860i);
        }
    }

    /* renamed from: Z */
    public float m9617Z() {
        return this.f16107d.f16146d.getTextSize() / 2.0f;
    }

    /* renamed from: Z0 */
    public final void m9618Z0() {
        this.f16104a.restore();
        this.f16107d = this.f16108e.pop();
    }

    /* renamed from: a0 */
    public SVG.C2076b m9619a0() {
        h hVar = this.f16107d;
        SVG.C2076b c2076b = hVar.f16149g;
        return c2076b != null ? c2076b : hVar.f16148f;
    }

    /* renamed from: a1 */
    public final void m9620a1() {
        this.f16104a.save();
        this.f16108e.push(this.f16107d);
        this.f16107d = new h(this.f16107d);
    }

    /* renamed from: b0 */
    public float m9621b0() {
        return this.f16105b;
    }

    /* renamed from: b1 */
    public final String m9622b1(String str, boolean z, boolean z2) {
        if (this.f16107d.f16150h) {
            return str.replaceAll("[\\n\\t]", " ");
        }
        String replaceAll = str.replaceAll("\\n", "").replaceAll("\\t", " ");
        if (z) {
            replaceAll = replaceAll.replaceAll("^\\s+", "");
        }
        if (z2) {
            replaceAll = replaceAll.replaceAll("\\s+$", "");
        }
        return replaceAll.replaceAll("\\s{2,}", " ");
    }

    /* renamed from: c0 */
    public final Path.FillType m9623c0() {
        SVG.Style.FillRule fillRule = this.f16107d.f16143a.f15858g;
        return (fillRule == null || fillRule != SVG.Style.FillRule.EvenOdd) ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
    }

    /* renamed from: c1 */
    public final void m9624c1(SVG.AbstractC2093i0 abstractC2093i0) {
        if (abstractC2093i0.f15965b == null || abstractC2093i0.f15947h == null) {
            return;
        }
        Matrix matrix = new Matrix();
        if (this.f16110g.peek().invert(matrix)) {
            SVG.C2076b c2076b = abstractC2093i0.f15947h;
            SVG.C2076b c2076b2 = abstractC2093i0.f15947h;
            SVG.C2076b c2076b3 = abstractC2093i0.f15947h;
            float[] fArr = {c2076b.f15904a, c2076b.f15905b, c2076b.m9367b(), c2076b2.f15905b, c2076b2.m9367b(), abstractC2093i0.f15947h.m9368c(), c2076b3.f15904a, c2076b3.m9368c()};
            matrix.preConcat(this.f16104a.getMatrix());
            matrix.mapPoints(fArr);
            float f2 = fArr[0];
            float f3 = fArr[1];
            RectF rectF = new RectF(f2, f3, f2, f3);
            for (int i2 = 2; i2 <= 6; i2 += 2) {
                float f4 = fArr[i2];
                if (f4 < rectF.left) {
                    rectF.left = f4;
                }
                if (f4 > rectF.right) {
                    rectF.right = f4;
                }
                float f5 = fArr[i2 + 1];
                if (f5 < rectF.top) {
                    rectF.top = f5;
                }
                if (f5 > rectF.bottom) {
                    rectF.bottom = f5;
                }
            }
            SVG.AbstractC2093i0 abstractC2093i02 = (SVG.AbstractC2093i0) this.f16109f.peek();
            SVG.C2076b c2076b4 = abstractC2093i02.f15947h;
            if (c2076b4 == null) {
                abstractC2093i02.f15947h = SVG.C2076b.m9366a(rectF.left, rectF.top, rectF.right, rectF.bottom);
            } else {
                c2076b4.m9370e(SVG.C2076b.m9366a(rectF.left, rectF.top, rectF.right, rectF.bottom));
            }
        }
    }

    /* renamed from: d1 */
    public final void m9625d1(h hVar, SVG.Style style) {
        if (m9626e0(style, 4096L)) {
            hVar.f16143a.f15871r = style.f15871r;
        }
        if (m9626e0(style, 2048L)) {
            hVar.f16143a.f15869q = style.f15869q;
        }
        if (m9626e0(style, 1L)) {
            hVar.f16143a.f15857f = style.f15857f;
            SVG.AbstractC2101m0 abstractC2101m0 = style.f15857f;
            hVar.f16144b = (abstractC2101m0 == null || abstractC2101m0 == SVG.C2086f.f15929g) ? false : true;
        }
        if (m9626e0(style, 4L)) {
            hVar.f16143a.f15859h = style.f15859h;
        }
        if (m9626e0(style, 6149L)) {
            m9614X0(hVar, true, hVar.f16143a.f15857f);
        }
        if (m9626e0(style, 2L)) {
            hVar.f16143a.f15858g = style.f15858g;
        }
        if (m9626e0(style, 8L)) {
            hVar.f16143a.f15860i = style.f15860i;
            SVG.AbstractC2101m0 abstractC2101m02 = style.f15860i;
            hVar.f16145c = (abstractC2101m02 == null || abstractC2101m02 == SVG.C2086f.f15929g) ? false : true;
        }
        if (m9626e0(style, 16L)) {
            hVar.f16143a.f15861j = style.f15861j;
        }
        if (m9626e0(style, 6168L)) {
            m9614X0(hVar, false, hVar.f16143a.f15860i);
        }
        if (m9626e0(style, SVG.f15814V)) {
            hVar.f16143a.f15850C0 = style.f15850C0;
        }
        if (m9626e0(style, 32L)) {
            SVG.Style style2 = hVar.f16143a;
            SVG.C2104o c2104o = style.f15862k;
            style2.f15862k = c2104o;
            hVar.f16147e.setStrokeWidth(c2104o.m9385c(this));
        }
        if (m9626e0(style, 64L)) {
            hVar.f16143a.f15864l = style.f15864l;
            int i2 = a.f16113b[style.f15864l.ordinal()];
            if (i2 == 1) {
                hVar.f16147e.setStrokeCap(Paint.Cap.BUTT);
            } else if (i2 == 2) {
                hVar.f16147e.setStrokeCap(Paint.Cap.ROUND);
            } else if (i2 == 3) {
                hVar.f16147e.setStrokeCap(Paint.Cap.SQUARE);
            }
        }
        if (m9626e0(style, 128L)) {
            hVar.f16143a.f15865m = style.f15865m;
            int i3 = a.f16114c[style.f15865m.ordinal()];
            if (i3 == 1) {
                hVar.f16147e.setStrokeJoin(Paint.Join.MITER);
            } else if (i3 == 2) {
                hVar.f16147e.setStrokeJoin(Paint.Join.ROUND);
            } else if (i3 == 3) {
                hVar.f16147e.setStrokeJoin(Paint.Join.BEVEL);
            }
        }
        if (m9626e0(style, 256L)) {
            hVar.f16143a.f15866n = style.f15866n;
            hVar.f16147e.setStrokeMiter(style.f15866n.floatValue());
        }
        if (m9626e0(style, 512L)) {
            hVar.f16143a.f15867o = style.f15867o;
        }
        if (m9626e0(style, 1024L)) {
            hVar.f16143a.f15868p = style.f15868p;
        }
        Typeface typeface = null;
        if (m9626e0(style, 1536L)) {
            SVG.C2104o[] c2104oArr = hVar.f16143a.f15867o;
            if (c2104oArr == null) {
                hVar.f16147e.setPathEffect(null);
            } else {
                int length = c2104oArr.length;
                int i4 = length % 2 == 0 ? length : length * 2;
                float[] fArr = new float[i4];
                float f2 = 0.0f;
                for (int i5 = 0; i5 < i4; i5++) {
                    float m9385c = hVar.f16143a.f15867o[i5 % length].m9385c(this);
                    fArr[i5] = m9385c;
                    f2 += m9385c;
                }
                if (f2 == 0.0f) {
                    hVar.f16147e.setPathEffect(null);
                } else {
                    float m9385c2 = hVar.f16143a.f15868p.m9385c(this);
                    if (m9385c2 < 0.0f) {
                        m9385c2 = (m9385c2 % f2) + f2;
                    }
                    hVar.f16147e.setPathEffect(new DashPathEffect(fArr, m9385c2));
                }
            }
        }
        if (m9626e0(style, 16384L)) {
            float m9615Y = m9615Y();
            hVar.f16143a.f15873t = style.f15873t;
            hVar.f16146d.setTextSize(style.f15873t.m9386d(this, m9615Y));
            hVar.f16147e.setTextSize(style.f15873t.m9386d(this, m9615Y));
        }
        if (m9626e0(style, 8192L)) {
            hVar.f16143a.f15872s = style.f15872s;
        }
        if (m9626e0(style, 32768L)) {
            if (style.f15875u.intValue() == -1 && hVar.f16143a.f15875u.intValue() > 100) {
                SVG.Style style3 = hVar.f16143a;
                style3.f15875u = Integer.valueOf(style3.f15875u.intValue() - 100);
            } else if (style.f15875u.intValue() != 1 || hVar.f16143a.f15875u.intValue() >= 900) {
                hVar.f16143a.f15875u = style.f15875u;
            } else {
                SVG.Style style4 = hVar.f16143a;
                style4.f15875u = Integer.valueOf(style4.f15875u.intValue() + 100);
            }
        }
        if (m9626e0(style, 65536L)) {
            hVar.f16143a.f15877v = style.f15877v;
        }
        if (m9626e0(style, 106496L)) {
            if (hVar.f16143a.f15872s != null && this.f16106c != null) {
                SVGExternalFileResolver m9345j = SVG.m9345j();
                for (String str : hVar.f16143a.f15872s) {
                    SVG.Style style5 = hVar.f16143a;
                    Typeface m9666z = m9666z(str, style5.f15875u, style5.f15877v);
                    typeface = (m9666z != null || m9345j == null) ? m9666z : m9345j.resolveFont(str, hVar.f16143a.f15875u.intValue(), String.valueOf(hVar.f16143a.f15877v));
                    if (typeface != null) {
                        break;
                    }
                }
            }
            if (typeface == null) {
                SVG.Style style6 = hVar.f16143a;
                typeface = m9666z("serif", style6.f15875u, style6.f15877v);
            }
            hVar.f16146d.setTypeface(typeface);
            hVar.f16147e.setTypeface(typeface);
        }
        if (m9626e0(style, 131072L)) {
            hVar.f16143a.f15879w = style.f15879w;
            Paint paint = hVar.f16146d;
            SVG.Style.TextDecoration textDecoration = style.f15879w;
            SVG.Style.TextDecoration textDecoration2 = SVG.Style.TextDecoration.LineThrough;
            paint.setStrikeThruText(textDecoration == textDecoration2);
            Paint paint2 = hVar.f16146d;
            SVG.Style.TextDecoration textDecoration3 = style.f15879w;
            SVG.Style.TextDecoration textDecoration4 = SVG.Style.TextDecoration.Underline;
            paint2.setUnderlineText(textDecoration3 == textDecoration4);
            hVar.f16147e.setStrikeThruText(style.f15879w == textDecoration2);
            hVar.f16147e.setUnderlineText(style.f15879w == textDecoration4);
        }
        if (m9626e0(style, SVG.f15815W)) {
            hVar.f16143a.f15881x = style.f15881x;
        }
        if (m9626e0(style, 262144L)) {
            hVar.f16143a.f15883y = style.f15883y;
        }
        if (m9626e0(style, 524288L)) {
            hVar.f16143a.f15885z = style.f15885z;
        }
        if (m9626e0(style, 2097152L)) {
            hVar.f16143a.f15853O = style.f15853O;
        }
        if (m9626e0(style, 4194304L)) {
            hVar.f16143a.f15854Q = style.f15854Q;
        }
        if (m9626e0(style, 8388608L)) {
            hVar.f16143a.f15855Z = style.f15855Z;
        }
        if (m9626e0(style, 16777216L)) {
            hVar.f16143a.f15863k0 = style.f15863k0;
        }
        if (m9626e0(style, SVG.f15804L)) {
            hVar.f16143a.f15870q0 = style.f15870q0;
        }
        if (m9626e0(style, 1048576L)) {
            hVar.f16143a.f15852J = style.f15852J;
        }
        if (m9626e0(style, SVG.f15807O)) {
            hVar.f16143a.f15878v0 = style.f15878v0;
        }
        if (m9626e0(style, SVG.f15808P)) {
            hVar.f16143a.f15880w0 = style.f15880w0;
        }
        if (m9626e0(style, 1073741824L)) {
            hVar.f16143a.f15882x0 = style.f15882x0;
        }
        if (m9626e0(style, SVG.f15805M)) {
            hVar.f16143a.f15874t0 = style.f15874t0;
        }
        if (m9626e0(style, SVG.f15806N)) {
            hVar.f16143a.f15876u0 = style.f15876u0;
        }
        if (m9626e0(style, 8589934592L)) {
            hVar.f16143a.f15848A0 = style.f15848A0;
        }
        if (m9626e0(style, SVG.f15813U)) {
            hVar.f16143a.f15849B0 = style.f15849B0;
        }
        if (m9626e0(style, SVG.f15816X)) {
            hVar.f16143a.f15851D0 = style.f15851D0;
        }
    }

    /* renamed from: e0 */
    public final boolean m9626e0(SVG.Style style, long j2) {
        return (style.f15856e & j2) != 0;
    }

    /* renamed from: e1 */
    public final void m9627e1(h hVar, SVG.AbstractC2095j0 abstractC2095j0) {
        hVar.f16143a.m9362b(abstractC2095j0.f15965b == null);
        SVG.Style style = abstractC2095j0.f15955e;
        if (style != null) {
            m9625d1(hVar, style);
        }
        if (this.f16106c.m9356l()) {
            for (CSSParser.C2067l c2067l : this.f16106c.m9349d()) {
                if (CSSParser.m9302l(this.f16111h, c2067l.f15774a, abstractC2095j0)) {
                    m9625d1(hVar, c2067l.f15775b);
                }
            }
        }
        SVG.Style style2 = abstractC2095j0.f15956f;
        if (style2 != null) {
            m9625d1(hVar, style2);
        }
    }

    /* renamed from: f0 */
    public final void m9628f0(boolean z, SVG.C2076b c2076b, SVG.C2097k0 c2097k0) {
        float f2;
        float m9386d;
        float f3;
        float f4;
        String str = c2097k0.f15952l;
        if (str != null) {
            m9597P(c2097k0, str);
        }
        Boolean bool = c2097k0.f15949i;
        int i2 = 0;
        boolean z2 = bool != null && bool.booleanValue();
        h hVar = this.f16107d;
        Paint paint = z ? hVar.f16146d : hVar.f16147e;
        if (z2) {
            SVG.C2076b m9619a0 = m9619a0();
            SVG.C2104o c2104o = c2097k0.f15959m;
            float m9387e = c2104o != null ? c2104o.m9387e(this) : 0.0f;
            SVG.C2104o c2104o2 = c2097k0.f15960n;
            float m9388f = c2104o2 != null ? c2104o2.m9388f(this) : 0.0f;
            SVG.C2104o c2104o3 = c2097k0.f15961o;
            float m9387e2 = c2104o3 != null ? c2104o3.m9387e(this) : m9619a0.f15906c;
            SVG.C2104o c2104o4 = c2097k0.f15962p;
            f4 = m9387e2;
            f2 = m9387e;
            f3 = m9388f;
            m9386d = c2104o4 != null ? c2104o4.m9388f(this) : 0.0f;
        } else {
            SVG.C2104o c2104o5 = c2097k0.f15959m;
            float m9386d2 = c2104o5 != null ? c2104o5.m9386d(this, 1.0f) : 0.0f;
            SVG.C2104o c2104o6 = c2097k0.f15960n;
            float m9386d3 = c2104o6 != null ? c2104o6.m9386d(this, 1.0f) : 0.0f;
            SVG.C2104o c2104o7 = c2097k0.f15961o;
            float m9386d4 = c2104o7 != null ? c2104o7.m9386d(this, 1.0f) : 1.0f;
            SVG.C2104o c2104o8 = c2097k0.f15962p;
            f2 = m9386d2;
            m9386d = c2104o8 != null ? c2104o8.m9386d(this, 1.0f) : 0.0f;
            f3 = m9386d3;
            f4 = m9386d4;
        }
        m9620a1();
        this.f16107d = m9607U(c2097k0);
        Matrix matrix = new Matrix();
        if (!z2) {
            matrix.preTranslate(c2076b.f15904a, c2076b.f15905b);
            matrix.preScale(c2076b.f15906c, c2076b.f15907d);
        }
        Matrix matrix2 = c2097k0.f15950j;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        int size = c2097k0.f15948h.size();
        if (size == 0) {
            m9618Z0();
            if (z) {
                this.f16107d.f16144b = false;
                return;
            } else {
                this.f16107d.f16145c = false;
                return;
            }
        }
        int[] iArr = new int[size];
        float[] fArr = new float[size];
        Iterator<SVG.C2099l0> it2 = c2097k0.f15948h.iterator();
        float f5 = -1.0f;
        while (it2.hasNext()) {
            SVG.C2080c0 c2080c0 = (SVG.C2080c0) it2.next();
            Float f6 = c2080c0.f15917h;
            float floatValue = f6 != null ? f6.floatValue() : 0.0f;
            if (i2 == 0 || floatValue >= f5) {
                fArr[i2] = floatValue;
                f5 = floatValue;
            } else {
                fArr[i2] = f5;
            }
            m9620a1();
            m9627e1(this.f16107d, c2080c0);
            SVG.Style style = this.f16107d.f16143a;
            SVG.C2086f c2086f = (SVG.C2086f) style.f15874t0;
            if (c2086f == null) {
                c2086f = SVG.C2086f.f15928f;
            }
            iArr[i2] = m9558F(c2086f.f15930e, style.f15876u0.floatValue());
            i2++;
            m9618Z0();
        }
        if ((f2 == f4 && f3 == m9386d) || size == 1) {
            m9618Z0();
            paint.setColor(iArr[size - 1]);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        SVG.GradientSpread gradientSpread = c2097k0.f15951k;
        if (gradientSpread != null) {
            if (gradientSpread == SVG.GradientSpread.reflect) {
                tileMode = Shader.TileMode.MIRROR;
            } else if (gradientSpread == SVG.GradientSpread.repeat) {
                tileMode = Shader.TileMode.REPEAT;
            }
        }
        m9618Z0();
        LinearGradient linearGradient = new LinearGradient(f2, f3, f4, m9386d, iArr, fArr, tileMode);
        linearGradient.setLocalMatrix(matrix);
        paint.setShader(linearGradient);
        paint.setAlpha(m9557C(this.f16107d.f16143a.f15859h.floatValue()));
    }

    /* renamed from: f1 */
    public final void m9629f1() {
        int i2;
        SVG.Style style = this.f16107d.f16143a;
        SVG.AbstractC2101m0 abstractC2101m0 = style.f15848A0;
        if (abstractC2101m0 instanceof SVG.C2086f) {
            i2 = ((SVG.C2086f) abstractC2101m0).f15930e;
        } else if (!(abstractC2101m0 instanceof SVG.C2088g)) {
            return;
        } else {
            i2 = style.f15871r.f15930e;
        }
        Float f2 = style.f15849B0;
        if (f2 != null) {
            i2 = m9558F(i2, f2.floatValue());
        }
        this.f16104a.drawColor(i2);
    }

    /* renamed from: g0 */
    public final Path m9630g0(SVG.C2082d c2082d) {
        SVG.C2104o c2104o = c2082d.f15919o;
        float m9387e = c2104o != null ? c2104o.m9387e(this) : 0.0f;
        SVG.C2104o c2104o2 = c2082d.f15920p;
        float m9388f = c2104o2 != null ? c2104o2.m9388f(this) : 0.0f;
        float m9385c = c2082d.f15921q.m9385c(this);
        float f2 = m9387e - m9385c;
        float f3 = m9388f - m9385c;
        float f4 = m9387e + m9385c;
        float f5 = m9388f + m9385c;
        if (c2082d.f15947h == null) {
            float f6 = 2.0f * m9385c;
            c2082d.f15947h = new SVG.C2076b(f2, f3, f6, f6);
        }
        float f7 = m9385c * 0.5522848f;
        Path path = new Path();
        path.moveTo(m9387e, f3);
        float f8 = m9387e + f7;
        float f9 = m9388f - f7;
        path.cubicTo(f8, f3, f4, f9, f4, m9388f);
        float f10 = m9388f + f7;
        path.cubicTo(f4, f10, f8, f5, m9387e, f5);
        float f11 = m9387e - f7;
        path.cubicTo(f11, f5, f2, f10, f2, m9388f);
        path.cubicTo(f2, f9, f11, f3, m9387e, f3);
        path.close();
        return path;
    }

    /* renamed from: g1 */
    public final boolean m9631g1() {
        Boolean bool = this.f16107d.f16143a.f15870q0;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    /* renamed from: h */
    public final void m9632h(SVG.AbstractC2096k abstractC2096k, Path path, Matrix matrix) {
        Path m9637j0;
        m9627e1(this.f16107d, abstractC2096k);
        if (m9584I() && m9631g1()) {
            Matrix matrix2 = abstractC2096k.f15958n;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            if (abstractC2096k instanceof SVG.C2074a0) {
                m9637j0 = m9639k0((SVG.C2074a0) abstractC2096k);
            } else if (abstractC2096k instanceof SVG.C2082d) {
                m9637j0 = m9630g0((SVG.C2082d) abstractC2096k);
            } else if (abstractC2096k instanceof SVG.C2092i) {
                m9637j0 = m9633h0((SVG.C2092i) abstractC2096k);
            } else if (!(abstractC2096k instanceof SVG.C2124y)) {
                return;
            } else {
                m9637j0 = m9637j0((SVG.C2124y) abstractC2096k);
            }
            m9656u(abstractC2096k);
            path.setFillType(m9613X());
            path.addPath(m9637j0, matrix);
        }
    }

    /* renamed from: h0 */
    public final Path m9633h0(SVG.C2092i c2092i) {
        SVG.C2104o c2104o = c2092i.f15943o;
        float m9387e = c2104o != null ? c2104o.m9387e(this) : 0.0f;
        SVG.C2104o c2104o2 = c2092i.f15944p;
        float m9388f = c2104o2 != null ? c2104o2.m9388f(this) : 0.0f;
        float m9387e2 = c2092i.f15945q.m9387e(this);
        float m9388f2 = c2092i.f15946r.m9388f(this);
        float f2 = m9387e - m9387e2;
        float f3 = m9388f - m9388f2;
        float f4 = m9387e + m9387e2;
        float f5 = m9388f + m9388f2;
        if (c2092i.f15947h == null) {
            c2092i.f15947h = new SVG.C2076b(f2, f3, m9387e2 * 2.0f, 2.0f * m9388f2);
        }
        float f6 = m9387e2 * 0.5522848f;
        float f7 = m9388f2 * 0.5522848f;
        Path path = new Path();
        path.moveTo(m9387e, f3);
        float f8 = m9387e + f6;
        float f9 = m9388f - f7;
        path.cubicTo(f8, f3, f4, f9, f4, m9388f);
        float f10 = f7 + m9388f;
        path.cubicTo(f4, f10, f8, f5, m9387e, f5);
        float f11 = m9387e - f6;
        path.cubicTo(f11, f5, f2, f10, f2, m9388f);
        path.cubicTo(f2, f9, f11, f3, m9387e, f3);
        path.close();
        return path;
    }

    /* renamed from: i */
    public final void m9634i(SVG.C2116u c2116u, Path path, Matrix matrix) {
        m9627e1(this.f16107d, c2116u);
        if (m9584I() && m9631g1()) {
            Matrix matrix2 = c2116u.f15958n;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            Path m9671c = new d(c2116u.f16002o).m9671c();
            if (c2116u.f15947h == null) {
                c2116u.f15947h = m9650r(m9671c);
            }
            m9656u(c2116u);
            path.setFillType(m9613X());
            path.addPath(m9671c, matrix);
        }
    }

    /* renamed from: i0 */
    public final Path m9635i0(SVG.C2106p c2106p) {
        SVG.C2104o c2104o = c2106p.f15980o;
        float m9387e = c2104o == null ? 0.0f : c2104o.m9387e(this);
        SVG.C2104o c2104o2 = c2106p.f15981p;
        float m9388f = c2104o2 == null ? 0.0f : c2104o2.m9388f(this);
        SVG.C2104o c2104o3 = c2106p.f15982q;
        float m9387e2 = c2104o3 == null ? 0.0f : c2104o3.m9387e(this);
        SVG.C2104o c2104o4 = c2106p.f15983r;
        float m9388f2 = c2104o4 != null ? c2104o4.m9388f(this) : 0.0f;
        if (c2106p.f15947h == null) {
            c2106p.f15947h = new SVG.C2076b(Math.min(m9387e, m9387e2), Math.min(m9388f, m9388f2), Math.abs(m9387e2 - m9387e), Math.abs(m9388f2 - m9388f));
        }
        Path path = new Path();
        path.moveTo(m9387e, m9388f);
        path.lineTo(m9387e2, m9388f2);
        return path;
    }

    /* renamed from: j */
    public final void m9636j(SVG.C2099l0 c2099l0, boolean z, Path path, Matrix matrix) {
        if (m9584I()) {
            m9578E();
            if (c2099l0 instanceof SVG.C2078b1) {
                if (z) {
                    m9640l((SVG.C2078b1) c2099l0, path, matrix);
                } else {
                    m9560N("<use> elements inside a <clipPath> cannot reference another <use>", new Object[0]);
                }
            } else if (c2099l0 instanceof SVG.C2116u) {
                m9634i((SVG.C2116u) c2099l0, path, matrix);
            } else if (c2099l0 instanceof SVG.C2117u0) {
                m9638k((SVG.C2117u0) c2099l0, path, matrix);
            } else if (c2099l0 instanceof SVG.AbstractC2096k) {
                m9632h((SVG.AbstractC2096k) c2099l0, path, matrix);
            } else {
                m9560N("Invalid %s element found in clipPath definition", c2099l0.toString());
            }
            m9576D();
        }
    }

    /* renamed from: j0 */
    public final Path m9637j0(SVG.C2124y c2124y) {
        Path path = new Path();
        float[] fArr = c2124y.f16026o;
        path.moveTo(fArr[0], fArr[1]);
        int i2 = 2;
        while (true) {
            float[] fArr2 = c2124y.f16026o;
            if (i2 >= fArr2.length) {
                break;
            }
            path.lineTo(fArr2[i2], fArr2[i2 + 1]);
            i2 += 2;
        }
        if (c2124y instanceof SVG.C2126z) {
            path.close();
        }
        if (c2124y.f15947h == null) {
            c2124y.f15947h = m9650r(path);
        }
        return path;
    }

    /* renamed from: k */
    public final void m9638k(SVG.C2117u0 c2117u0, Path path, Matrix matrix) {
        m9627e1(this.f16107d, c2117u0);
        if (m9584I()) {
            Matrix matrix2 = c2117u0.f16004s;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            List<SVG.C2104o> list = c2117u0.f16027o;
            float f2 = 0.0f;
            float m9387e = (list == null || list.size() == 0) ? 0.0f : c2117u0.f16027o.get(0).m9387e(this);
            List<SVG.C2104o> list2 = c2117u0.f16028p;
            float m9388f = (list2 == null || list2.size() == 0) ? 0.0f : c2117u0.f16028p.get(0).m9388f(this);
            List<SVG.C2104o> list3 = c2117u0.f16029q;
            float m9387e2 = (list3 == null || list3.size() == 0) ? 0.0f : c2117u0.f16029q.get(0).m9387e(this);
            List<SVG.C2104o> list4 = c2117u0.f16030r;
            if (list4 != null && list4.size() != 0) {
                f2 = c2117u0.f16030r.get(0).m9388f(this);
            }
            if (this.f16107d.f16143a.f15883y != SVG.Style.TextAnchor.Start) {
                float m9652s = m9652s(c2117u0);
                if (this.f16107d.f16143a.f15883y == SVG.Style.TextAnchor.Middle) {
                    m9652s /= 2.0f;
                }
                m9387e -= m9652s;
            }
            if (c2117u0.f15947h == null) {
                i iVar = new i(m9387e, m9388f);
                m9592M(c2117u0, iVar);
                RectF rectF = iVar.f16154d;
                c2117u0.f15947h = new SVG.C2076b(rectF.left, rectF.top, rectF.width(), iVar.f16154d.height());
            }
            m9656u(c2117u0);
            Path path2 = new Path();
            m9592M(c2117u0, new g(m9387e + m9387e2, m9388f + f2, path2));
            path.setFillType(m9613X());
            path.addPath(path2, matrix);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0048  */
    /* renamed from: k0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Path m9639k0(com.caverock.androidsvg.SVG.C2074a0 r23) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.C2139a.m9639k0(com.caverock.androidsvg.SVG$a0):android.graphics.Path");
    }

    /* renamed from: l */
    public final void m9640l(SVG.C2078b1 c2078b1, Path path, Matrix matrix) {
        m9627e1(this.f16107d, c2078b1);
        if (m9584I() && m9631g1()) {
            Matrix matrix2 = c2078b1.f15963o;
            if (matrix2 != null) {
                matrix.preConcat(matrix2);
            }
            SVG.C2099l0 m9357m = c2078b1.f15964a.m9357m(c2078b1.f15908p);
            if (m9357m == null) {
                m9560N("Use reference '%s' not found", c2078b1.f15908p);
            } else {
                m9656u(c2078b1);
                m9636j(m9357m, false, path, matrix);
            }
        }
    }

    /* renamed from: l0 */
    public final Path m9641l0(SVG.C2117u0 c2117u0) {
        List<SVG.C2104o> list = c2117u0.f16027o;
        float f2 = 0.0f;
        float m9387e = (list == null || list.size() == 0) ? 0.0f : c2117u0.f16027o.get(0).m9387e(this);
        List<SVG.C2104o> list2 = c2117u0.f16028p;
        float m9388f = (list2 == null || list2.size() == 0) ? 0.0f : c2117u0.f16028p.get(0).m9388f(this);
        List<SVG.C2104o> list3 = c2117u0.f16029q;
        float m9387e2 = (list3 == null || list3.size() == 0) ? 0.0f : c2117u0.f16029q.get(0).m9387e(this);
        List<SVG.C2104o> list4 = c2117u0.f16030r;
        if (list4 != null && list4.size() != 0) {
            f2 = c2117u0.f16030r.get(0).m9388f(this);
        }
        if (this.f16107d.f16143a.f15883y != SVG.Style.TextAnchor.Start) {
            float m9652s = m9652s(c2117u0);
            if (this.f16107d.f16143a.f15883y == SVG.Style.TextAnchor.Middle) {
                m9652s /= 2.0f;
            }
            m9387e -= m9652s;
        }
        if (c2117u0.f15947h == null) {
            i iVar = new i(m9387e, m9388f);
            m9592M(c2117u0, iVar);
            RectF rectF = iVar.f16154d;
            c2117u0.f15947h = new SVG.C2076b(rectF.left, rectF.top, rectF.width(), iVar.f16154d.height());
        }
        Path path = new Path();
        m9592M(c2117u0, new g(m9387e + m9387e2, m9388f + f2, path));
        return path;
    }

    /* renamed from: m0 */
    public final void m9642m0(boolean z, SVG.C2076b c2076b, SVG.C2105o0 c2105o0) {
        float f2;
        float m9386d;
        float f3;
        String str = c2105o0.f15952l;
        if (str != null) {
            m9597P(c2105o0, str);
        }
        Boolean bool = c2105o0.f15949i;
        int i2 = 0;
        boolean z2 = bool != null && bool.booleanValue();
        h hVar = this.f16107d;
        Paint paint = z ? hVar.f16146d : hVar.f16147e;
        if (z2) {
            SVG.C2104o c2104o = new SVG.C2104o(50.0f, SVG.Unit.percent);
            SVG.C2104o c2104o2 = c2105o0.f15975m;
            float m9387e = c2104o2 != null ? c2104o2.m9387e(this) : c2104o.m9387e(this);
            SVG.C2104o c2104o3 = c2105o0.f15976n;
            float m9388f = c2104o3 != null ? c2104o3.m9388f(this) : c2104o.m9388f(this);
            SVG.C2104o c2104o4 = c2105o0.f15977o;
            m9386d = c2104o4 != null ? c2104o4.m9385c(this) : c2104o.m9385c(this);
            f2 = m9387e;
            f3 = m9388f;
        } else {
            SVG.C2104o c2104o5 = c2105o0.f15975m;
            float m9386d2 = c2104o5 != null ? c2104o5.m9386d(this, 1.0f) : 0.5f;
            SVG.C2104o c2104o6 = c2105o0.f15976n;
            float m9386d3 = c2104o6 != null ? c2104o6.m9386d(this, 1.0f) : 0.5f;
            SVG.C2104o c2104o7 = c2105o0.f15977o;
            f2 = m9386d2;
            m9386d = c2104o7 != null ? c2104o7.m9386d(this, 1.0f) : 0.5f;
            f3 = m9386d3;
        }
        m9620a1();
        this.f16107d = m9607U(c2105o0);
        Matrix matrix = new Matrix();
        if (!z2) {
            matrix.preTranslate(c2076b.f15904a, c2076b.f15905b);
            matrix.preScale(c2076b.f15906c, c2076b.f15907d);
        }
        Matrix matrix2 = c2105o0.f15950j;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        int size = c2105o0.f15948h.size();
        if (size == 0) {
            m9618Z0();
            if (z) {
                this.f16107d.f16144b = false;
                return;
            } else {
                this.f16107d.f16145c = false;
                return;
            }
        }
        int[] iArr = new int[size];
        float[] fArr = new float[size];
        Iterator<SVG.C2099l0> it2 = c2105o0.f15948h.iterator();
        float f4 = -1.0f;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            SVG.C2080c0 c2080c0 = (SVG.C2080c0) it2.next();
            Float f5 = c2080c0.f15917h;
            float floatValue = f5 != null ? f5.floatValue() : 0.0f;
            if (i2 == 0 || floatValue >= f4) {
                fArr[i2] = floatValue;
                f4 = floatValue;
            } else {
                fArr[i2] = f4;
            }
            m9620a1();
            m9627e1(this.f16107d, c2080c0);
            SVG.Style style = this.f16107d.f16143a;
            SVG.C2086f c2086f = (SVG.C2086f) style.f15874t0;
            if (c2086f == null) {
                c2086f = SVG.C2086f.f15928f;
            }
            iArr[i2] = m9558F(c2086f.f15930e, style.f15876u0.floatValue());
            i2++;
            m9618Z0();
        }
        if (m9386d == 0.0f || size == 1) {
            m9618Z0();
            paint.setColor(iArr[size - 1]);
            return;
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        SVG.GradientSpread gradientSpread = c2105o0.f15951k;
        if (gradientSpread != null) {
            if (gradientSpread == SVG.GradientSpread.reflect) {
                tileMode = Shader.TileMode.MIRROR;
            } else if (gradientSpread == SVG.GradientSpread.repeat) {
                tileMode = Shader.TileMode.REPEAT;
            }
        }
        m9618Z0();
        RadialGradient radialGradient = new RadialGradient(f2, f3, m9386d, iArr, fArr, tileMode);
        radialGradient.setLocalMatrix(matrix);
        paint.setShader(radialGradient);
        paint.setAlpha(m9557C(this.f16107d.f16143a.f15859h.floatValue()));
    }

    /* renamed from: n0 */
    public final SVG.C2076b m9643n0(SVG.C2104o c2104o, SVG.C2104o c2104o2, SVG.C2104o c2104o3, SVG.C2104o c2104o4) {
        float m9387e = c2104o != null ? c2104o.m9387e(this) : 0.0f;
        float m9388f = c2104o2 != null ? c2104o2.m9388f(this) : 0.0f;
        SVG.C2076b m9619a0 = m9619a0();
        return new SVG.C2076b(m9387e, m9388f, c2104o3 != null ? c2104o3.m9387e(this) : m9619a0.f15906c, c2104o4 != null ? c2104o4.m9388f(this) : m9619a0.f15907d);
    }

    @TargetApi(19)
    /* renamed from: o */
    public final Path m9644o(SVG.AbstractC2093i0 abstractC2093i0, SVG.C2076b c2076b) {
        Path m9645o0;
        SVG.C2099l0 m9357m = abstractC2093i0.f15964a.m9357m(this.f16107d.f16143a.f15878v0);
        if (m9357m == null) {
            m9560N("ClipPath reference '%s' not found", this.f16107d.f16143a.f15878v0);
            return null;
        }
        SVG.C2084e c2084e = (SVG.C2084e) m9357m;
        this.f16108e.push(this.f16107d);
        this.f16107d = m9607U(c2084e);
        Boolean bool = c2084e.f15927p;
        boolean z = bool == null || bool.booleanValue();
        Matrix matrix = new Matrix();
        if (!z) {
            matrix.preTranslate(c2076b.f15904a, c2076b.f15905b);
            matrix.preScale(c2076b.f15906c, c2076b.f15907d);
        }
        Matrix matrix2 = c2084e.f15963o;
        if (matrix2 != null) {
            matrix.preConcat(matrix2);
        }
        Path path = new Path();
        for (SVG.C2099l0 c2099l0 : c2084e.f15931i) {
            if ((c2099l0 instanceof SVG.AbstractC2093i0) && (m9645o0 = m9645o0((SVG.AbstractC2093i0) c2099l0, true)) != null) {
                path.op(m9645o0, Path.Op.UNION);
            }
        }
        if (this.f16107d.f16143a.f15878v0 != null) {
            if (c2084e.f15947h == null) {
                c2084e.f15947h = m9650r(path);
            }
            Path m9644o = m9644o(c2084e, c2084e.f15947h);
            if (m9644o != null) {
                path.op(m9644o, Path.Op.INTERSECT);
            }
        }
        path.transform(matrix);
        this.f16107d = this.f16108e.pop();
        return path;
    }

    @TargetApi(19)
    /* renamed from: o0 */
    public final Path m9645o0(SVG.AbstractC2093i0 abstractC2093i0, boolean z) {
        Path m9641l0;
        Path m9644o;
        this.f16108e.push(this.f16107d);
        h hVar = new h(this.f16107d);
        this.f16107d = hVar;
        m9627e1(hVar, abstractC2093i0);
        if (!m9584I() || !m9631g1()) {
            this.f16107d = this.f16108e.pop();
            return null;
        }
        if (abstractC2093i0 instanceof SVG.C2078b1) {
            if (!z) {
                m9560N("<use> elements inside a <clipPath> cannot reference another <use>", new Object[0]);
            }
            SVG.C2078b1 c2078b1 = (SVG.C2078b1) abstractC2093i0;
            SVG.C2099l0 m9357m = abstractC2093i0.f15964a.m9357m(c2078b1.f15908p);
            if (m9357m == null) {
                m9560N("Use reference '%s' not found", c2078b1.f15908p);
                this.f16107d = this.f16108e.pop();
                return null;
            }
            if (!(m9357m instanceof SVG.AbstractC2093i0)) {
                this.f16107d = this.f16108e.pop();
                return null;
            }
            m9641l0 = m9645o0((SVG.AbstractC2093i0) m9357m, false);
            if (m9641l0 == null) {
                return null;
            }
            if (c2078b1.f15947h == null) {
                c2078b1.f15947h = m9650r(m9641l0);
            }
            Matrix matrix = c2078b1.f15963o;
            if (matrix != null) {
                m9641l0.transform(matrix);
            }
        } else if (abstractC2093i0 instanceof SVG.AbstractC2096k) {
            SVG.AbstractC2096k abstractC2096k = (SVG.AbstractC2096k) abstractC2093i0;
            if (abstractC2093i0 instanceof SVG.C2116u) {
                m9641l0 = new d(((SVG.C2116u) abstractC2093i0).f16002o).m9671c();
                if (abstractC2093i0.f15947h == null) {
                    abstractC2093i0.f15947h = m9650r(m9641l0);
                }
            } else {
                m9641l0 = abstractC2093i0 instanceof SVG.C2074a0 ? m9639k0((SVG.C2074a0) abstractC2093i0) : abstractC2093i0 instanceof SVG.C2082d ? m9630g0((SVG.C2082d) abstractC2093i0) : abstractC2093i0 instanceof SVG.C2092i ? m9633h0((SVG.C2092i) abstractC2093i0) : abstractC2093i0 instanceof SVG.C2124y ? m9637j0((SVG.C2124y) abstractC2093i0) : null;
            }
            if (m9641l0 == null) {
                return null;
            }
            if (abstractC2096k.f15947h == null) {
                abstractC2096k.f15947h = m9650r(m9641l0);
            }
            Matrix matrix2 = abstractC2096k.f15958n;
            if (matrix2 != null) {
                m9641l0.transform(matrix2);
            }
            m9641l0.setFillType(m9613X());
        } else {
            if (!(abstractC2093i0 instanceof SVG.C2117u0)) {
                m9560N("Invalid %s element found in clipPath definition", abstractC2093i0.mo9363n());
                return null;
            }
            SVG.C2117u0 c2117u0 = (SVG.C2117u0) abstractC2093i0;
            m9641l0 = m9641l0(c2117u0);
            if (m9641l0 == null) {
                return null;
            }
            Matrix matrix3 = c2117u0.f16004s;
            if (matrix3 != null) {
                m9641l0.transform(matrix3);
            }
            m9641l0.setFillType(m9613X());
        }
        if (this.f16107d.f16143a.f15878v0 != null && (m9644o = m9644o(abstractC2093i0, abstractC2093i0.f15947h)) != null) {
            m9641l0.op(m9644o, Path.Op.INTERSECT);
        }
        this.f16107d = this.f16108e.pop();
        return m9641l0;
    }

    /* renamed from: p */
    public final List<c> m9646p(SVG.C2106p c2106p) {
        SVG.C2104o c2104o = c2106p.f15980o;
        float m9387e = c2104o != null ? c2104o.m9387e(this) : 0.0f;
        SVG.C2104o c2104o2 = c2106p.f15981p;
        float m9388f = c2104o2 != null ? c2104o2.m9388f(this) : 0.0f;
        SVG.C2104o c2104o3 = c2106p.f15982q;
        float m9387e2 = c2104o3 != null ? c2104o3.m9387e(this) : 0.0f;
        SVG.C2104o c2104o4 = c2106p.f15983r;
        float m9388f2 = c2104o4 != null ? c2104o4.m9388f(this) : 0.0f;
        ArrayList arrayList = new ArrayList(2);
        float f2 = m9387e2 - m9387e;
        float f3 = m9388f2 - m9388f;
        arrayList.add(new c(m9387e, m9388f, f2, f3));
        arrayList.add(new c(m9387e2, m9388f2, f2, f3));
        return arrayList;
    }

    /* renamed from: p0 */
    public final void m9647p0() {
        this.f16109f.pop();
        this.f16110g.pop();
    }

    /* renamed from: q */
    public final List<c> m9648q(SVG.C2124y c2124y) {
        int length = c2124y.f16026o.length;
        int i2 = 2;
        if (length < 2) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        float[] fArr = c2124y.f16026o;
        c cVar = new c(fArr[0], fArr[1], 0.0f, 0.0f);
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (i2 < length) {
            float[] fArr2 = c2124y.f16026o;
            float f4 = fArr2[i2];
            float f5 = fArr2[i2 + 1];
            cVar.m9669a(f4, f5);
            arrayList.add(cVar);
            i2 += 2;
            cVar = new c(f4, f5, f4 - cVar.f16124a, f5 - cVar.f16125b);
            f3 = f5;
            f2 = f4;
        }
        if (c2124y instanceof SVG.C2126z) {
            float[] fArr3 = c2124y.f16026o;
            float f6 = fArr3[0];
            if (f2 != f6) {
                float f7 = fArr3[1];
                if (f3 != f7) {
                    cVar.m9669a(f6, f7);
                    arrayList.add(cVar);
                    c cVar2 = new c(f6, f7, f6 - cVar.f16124a, f7 - cVar.f16125b);
                    cVar2.m9670b((c) arrayList.get(0));
                    arrayList.add(cVar2);
                    arrayList.set(0, cVar2);
                }
            }
        } else {
            arrayList.add(cVar);
        }
        return arrayList;
    }

    /* renamed from: q0 */
    public final void m9649q0(SVG.InterfaceC2091h0 interfaceC2091h0) {
        this.f16109f.push(interfaceC2091h0);
        this.f16110g.push(this.f16104a.getMatrix());
    }

    /* renamed from: r */
    public final SVG.C2076b m9650r(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        return new SVG.C2076b(rectF.left, rectF.top, rectF.width(), rectF.height());
    }

    /* renamed from: r0 */
    public final void m9651r0(SVG.AbstractC2093i0 abstractC2093i0) {
        m9653s0(abstractC2093i0, abstractC2093i0.f15947h);
    }

    /* renamed from: s */
    public final float m9652s(SVG.AbstractC2121w0 abstractC2121w0) {
        k kVar = new k(this, null);
        m9592M(abstractC2121w0, kVar);
        return kVar.f16157b;
    }

    /* renamed from: s0 */
    public final void m9653s0(SVG.AbstractC2093i0 abstractC2093i0, SVG.C2076b c2076b) {
        if (this.f16107d.f16143a.f15882x0 != null) {
            Paint paint = new Paint();
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            this.f16104a.saveLayer(null, paint, 31);
            Paint paint2 = new Paint();
            paint2.setColorFilter(new ColorMatrixColorFilter(new ColorMatrix(new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.2127f, 0.7151f, 0.0722f, 0.0f, 0.0f})));
            this.f16104a.saveLayer(null, paint2, 31);
            SVG.C2110r c2110r = (SVG.C2110r) this.f16106c.m9357m(this.f16107d.f16143a.f15882x0);
            m9602R0(c2110r, abstractC2093i0, c2076b);
            this.f16104a.restore();
            Paint paint3 = new Paint();
            paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            this.f16104a.saveLayer(null, paint3, 31);
            m9602R0(c2110r, abstractC2093i0, c2076b);
            this.f16104a.restore();
            this.f16104a.restore();
        }
        m9618Z0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0082, code lost:
    
        if (r11 != 8) goto L37;
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Matrix m9654t(com.caverock.androidsvg.SVG.C2076b r9, com.caverock.androidsvg.SVG.C2076b r10, com.caverock.androidsvg.PreserveAspectRatio r11) {
        /*
            r8 = this;
            android.graphics.Matrix r8 = new android.graphics.Matrix
            r8.<init>()
            if (r11 == 0) goto L9b
            com.caverock.androidsvg.PreserveAspectRatio$Alignment r0 = r11.getAlignment()
            if (r0 != 0) goto Lf
            goto L9b
        Lf:
            float r0 = r9.f15906c
            float r1 = r10.f15906c
            float r0 = r0 / r1
            float r1 = r9.f15907d
            float r2 = r10.f15907d
            float r1 = r1 / r2
            float r2 = r10.f15904a
            float r2 = -r2
            float r3 = r10.f15905b
            float r3 = -r3
            com.caverock.androidsvg.PreserveAspectRatio r4 = com.caverock.androidsvg.PreserveAspectRatio.STRETCH
            boolean r4 = r11.equals(r4)
            if (r4 == 0) goto L35
            float r10 = r9.f15904a
            float r9 = r9.f15905b
            r8.preTranslate(r10, r9)
            r8.preScale(r0, r1)
            r8.preTranslate(r2, r3)
            return r8
        L35:
            com.caverock.androidsvg.PreserveAspectRatio$Scale r4 = r11.getScale()
            com.caverock.androidsvg.PreserveAspectRatio$Scale r5 = com.caverock.androidsvg.PreserveAspectRatio.Scale.slice
            if (r4 != r5) goto L42
            float r0 = java.lang.Math.max(r0, r1)
            goto L46
        L42:
            float r0 = java.lang.Math.min(r0, r1)
        L46:
            float r1 = r9.f15906c
            float r1 = r1 / r0
            float r4 = r9.f15907d
            float r4 = r4 / r0
            int[] r5 = com.caverock.androidsvg.C2139a.a.f16112a
            com.caverock.androidsvg.PreserveAspectRatio$Alignment r6 = r11.getAlignment()
            int r6 = r6.ordinal()
            r6 = r5[r6]
            r7 = 1073741824(0x40000000, float:2.0)
            switch(r6) {
                case 1: goto L62;
                case 2: goto L62;
                case 3: goto L62;
                case 4: goto L5e;
                case 5: goto L5e;
                case 6: goto L5e;
                default: goto L5d;
            }
        L5d:
            goto L67
        L5e:
            float r6 = r10.f15906c
            float r6 = r6 - r1
            goto L66
        L62:
            float r6 = r10.f15906c
            float r6 = r6 - r1
            float r6 = r6 / r7
        L66:
            float r2 = r2 - r6
        L67:
            com.caverock.androidsvg.PreserveAspectRatio$Alignment r11 = r11.getAlignment()
            int r11 = r11.ordinal()
            r11 = r5[r11]
            r1 = 2
            if (r11 == r1) goto L89
            r1 = 3
            if (r11 == r1) goto L85
            r1 = 5
            if (r11 == r1) goto L89
            r1 = 6
            if (r11 == r1) goto L85
            r1 = 7
            if (r11 == r1) goto L89
            r1 = 8
            if (r11 == r1) goto L85
            goto L8e
        L85:
            float r10 = r10.f15907d
            float r10 = r10 - r4
            goto L8d
        L89:
            float r10 = r10.f15907d
            float r10 = r10 - r4
            float r10 = r10 / r7
        L8d:
            float r3 = r3 - r10
        L8e:
            float r10 = r9.f15904a
            float r9 = r9.f15905b
            r8.preTranslate(r10, r9)
            r8.preScale(r0, r0)
            r8.preTranslate(r2, r3)
        L9b:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.C2139a.m9654t(com.caverock.androidsvg.SVG$b, com.caverock.androidsvg.SVG$b, com.caverock.androidsvg.PreserveAspectRatio):android.graphics.Matrix");
    }

    /* renamed from: t0 */
    public final void m9655t0(SVG.C2099l0 c2099l0, j jVar) {
        float f2;
        float f3;
        float f4;
        SVG.Style.TextAnchor m9611W;
        if (jVar.mo9673a((SVG.AbstractC2121w0) c2099l0)) {
            if (c2099l0 instanceof SVG.C2123x0) {
                m9620a1();
                m9606T0((SVG.C2123x0) c2099l0);
                m9618Z0();
                return;
            }
            if (!(c2099l0 instanceof SVG.C2115t0)) {
                if (c2099l0 instanceof SVG.C2113s0) {
                    m9620a1();
                    SVG.C2113s0 c2113s0 = (SVG.C2113s0) c2099l0;
                    m9627e1(this.f16107d, c2113s0);
                    if (m9584I()) {
                        m9662x((SVG.AbstractC2093i0) c2113s0.mo9364a());
                        SVG.C2099l0 m9357m = c2099l0.f15964a.m9357m(c2113s0.f15997o);
                        if (m9357m == null || !(m9357m instanceof SVG.AbstractC2121w0)) {
                            m9560N("Tref reference '%s' not found", c2113s0.f15997o);
                        } else {
                            StringBuilder sb = new StringBuilder();
                            m9595O((SVG.AbstractC2121w0) m9357m, sb);
                            if (sb.length() > 0) {
                                jVar.mo9672b(sb.toString());
                            }
                        }
                    }
                    m9618Z0();
                    return;
                }
                return;
            }
            m9559G("TSpan render", new Object[0]);
            m9620a1();
            SVG.C2115t0 c2115t0 = (SVG.C2115t0) c2099l0;
            m9627e1(this.f16107d, c2115t0);
            if (m9584I()) {
                List<SVG.C2104o> list = c2115t0.f16027o;
                boolean z = list != null && list.size() > 0;
                boolean z2 = jVar instanceof f;
                float f5 = 0.0f;
                if (z2) {
                    float m9387e = !z ? ((f) jVar).f16136b : c2115t0.f16027o.get(0).m9387e(this);
                    List<SVG.C2104o> list2 = c2115t0.f16028p;
                    f3 = (list2 == null || list2.size() == 0) ? ((f) jVar).f16137c : c2115t0.f16028p.get(0).m9388f(this);
                    List<SVG.C2104o> list3 = c2115t0.f16029q;
                    f4 = (list3 == null || list3.size() == 0) ? 0.0f : c2115t0.f16029q.get(0).m9387e(this);
                    List<SVG.C2104o> list4 = c2115t0.f16030r;
                    if (list4 != null && list4.size() != 0) {
                        f5 = c2115t0.f16030r.get(0).m9388f(this);
                    }
                    f2 = f5;
                    f5 = m9387e;
                } else {
                    f2 = 0.0f;
                    f3 = 0.0f;
                    f4 = 0.0f;
                }
                if (z && (m9611W = m9611W()) != SVG.Style.TextAnchor.Start) {
                    float m9652s = m9652s(c2115t0);
                    if (m9611W == SVG.Style.TextAnchor.Middle) {
                        m9652s /= 2.0f;
                    }
                    f5 -= m9652s;
                }
                m9662x((SVG.AbstractC2093i0) c2115t0.mo9364a());
                if (z2) {
                    f fVar = (f) jVar;
                    fVar.f16136b = f5 + f4;
                    fVar.f16137c = f3 + f2;
                }
                boolean m9657u0 = m9657u0();
                m9592M(c2115t0, jVar);
                if (m9657u0) {
                    m9651r0(c2115t0);
                }
            }
            m9618Z0();
        }
    }

    /* renamed from: u */
    public final void m9656u(SVG.AbstractC2093i0 abstractC2093i0) {
        m9658v(abstractC2093i0, abstractC2093i0.f15947h);
    }

    /* renamed from: u0 */
    public final boolean m9657u0() {
        SVG.C2099l0 m9357m;
        if (!m9608U0()) {
            return false;
        }
        this.f16104a.saveLayerAlpha(null, m9557C(this.f16107d.f16143a.f15869q.floatValue()), 31);
        this.f16108e.push(this.f16107d);
        h hVar = new h(this.f16107d);
        this.f16107d = hVar;
        String str = hVar.f16143a.f15882x0;
        if (str != null && ((m9357m = this.f16106c.m9357m(str)) == null || !(m9357m instanceof SVG.C2110r))) {
            m9560N("Mask reference '%s' not found", this.f16107d.f16143a.f15882x0);
            this.f16107d.f16143a.f15882x0 = null;
        }
        return true;
    }

    /* renamed from: v */
    public final void m9658v(SVG.AbstractC2093i0 abstractC2093i0, SVG.C2076b c2076b) {
        Path m9644o;
        if (this.f16107d.f16143a.f15878v0 == null || (m9644o = m9644o(abstractC2093i0, c2076b)) == null) {
            return;
        }
        this.f16104a.clipPath(m9644o);
    }

    /* renamed from: v0 */
    public final c m9659v0(c cVar, c cVar2, c cVar3) {
        float m9590L = m9590L(cVar2.f16126c, cVar2.f16127d, cVar2.f16124a - cVar.f16124a, cVar2.f16125b - cVar.f16125b);
        if (m9590L == 0.0f) {
            m9590L = m9590L(cVar2.f16126c, cVar2.f16127d, cVar3.f16124a - cVar2.f16124a, cVar3.f16125b - cVar2.f16125b);
        }
        if (m9590L > 0.0f) {
            return cVar2;
        }
        if (m9590L == 0.0f && (cVar2.f16126c > 0.0f || cVar2.f16127d >= 0.0f)) {
            return cVar2;
        }
        cVar2.f16126c = -cVar2.f16126c;
        cVar2.f16127d = -cVar2.f16127d;
        return cVar2;
    }

    /* renamed from: w */
    public final void m9660w(SVG.AbstractC2093i0 abstractC2093i0, SVG.C2076b c2076b) {
        SVG.C2099l0 m9357m = abstractC2093i0.f15964a.m9357m(this.f16107d.f16143a.f15878v0);
        if (m9357m == null) {
            m9560N("ClipPath reference '%s' not found", this.f16107d.f16143a.f15878v0);
            return;
        }
        SVG.C2084e c2084e = (SVG.C2084e) m9357m;
        if (c2084e.f15931i.isEmpty()) {
            this.f16104a.clipRect(0, 0, 0, 0);
            return;
        }
        Boolean bool = c2084e.f15927p;
        boolean z = bool == null || bool.booleanValue();
        if ((abstractC2093i0 instanceof SVG.C2098l) && !z) {
            m9569h1("<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)", abstractC2093i0.mo9363n());
            return;
        }
        m9578E();
        if (!z) {
            Matrix matrix = new Matrix();
            matrix.preTranslate(c2076b.f15904a, c2076b.f15905b);
            matrix.preScale(c2076b.f15906c, c2076b.f15907d);
            this.f16104a.concat(matrix);
        }
        Matrix matrix2 = c2084e.f15963o;
        if (matrix2 != null) {
            this.f16104a.concat(matrix2);
        }
        this.f16107d = m9607U(c2084e);
        m9656u(c2084e);
        Path path = new Path();
        Iterator<SVG.C2099l0> it2 = c2084e.f15931i.iterator();
        while (it2.hasNext()) {
            m9636j(it2.next(), true, path, new Matrix());
        }
        this.f16104a.clipPath(path);
        m9576D();
    }

    /* renamed from: w0 */
    public final void m9661w0(SVG.C2082d c2082d) {
        m9559G("Circle render", new Object[0]);
        SVG.C2104o c2104o = c2082d.f15921q;
        if (c2104o == null || c2104o.m9390h()) {
            return;
        }
        m9627e1(this.f16107d, c2082d);
        if (m9584I() && m9631g1()) {
            Matrix matrix = c2082d.f15958n;
            if (matrix != null) {
                this.f16104a.concat(matrix);
            }
            Path m9630g0 = m9630g0(c2082d);
            m9624c1(c2082d);
            m9662x(c2082d);
            m9656u(c2082d);
            boolean m9657u0 = m9657u0();
            if (this.f16107d.f16144b) {
                m9586J(c2082d, m9630g0);
            }
            if (this.f16107d.f16145c) {
                m9588K(m9630g0);
            }
            if (m9657u0) {
                m9651r0(c2082d);
            }
        }
    }

    /* renamed from: x */
    public final void m9662x(SVG.AbstractC2093i0 abstractC2093i0) {
        SVG.AbstractC2101m0 abstractC2101m0 = this.f16107d.f16143a.f15857f;
        if (abstractC2101m0 instanceof SVG.C2114t) {
            m9582H(true, abstractC2093i0.f15947h, (SVG.C2114t) abstractC2101m0);
        }
        SVG.AbstractC2101m0 abstractC2101m02 = this.f16107d.f16143a.f15860i;
        if (abstractC2101m02 instanceof SVG.C2114t) {
            m9582H(false, abstractC2093i0.f15947h, (SVG.C2114t) abstractC2101m02);
        }
    }

    /* renamed from: x0 */
    public final void m9663x0(SVG.C2092i c2092i) {
        m9559G("Ellipse render", new Object[0]);
        SVG.C2104o c2104o = c2092i.f15945q;
        if (c2104o == null || c2092i.f15946r == null || c2104o.m9390h() || c2092i.f15946r.m9390h()) {
            return;
        }
        m9627e1(this.f16107d, c2092i);
        if (m9584I() && m9631g1()) {
            Matrix matrix = c2092i.f15958n;
            if (matrix != null) {
                this.f16104a.concat(matrix);
            }
            Path m9633h0 = m9633h0(c2092i);
            m9624c1(c2092i);
            m9662x(c2092i);
            m9656u(c2092i);
            boolean m9657u0 = m9657u0();
            if (this.f16107d.f16144b) {
                m9586J(c2092i, m9633h0);
            }
            if (this.f16107d.f16145c) {
                m9588K(m9633h0);
            }
            if (m9657u0) {
                m9651r0(c2092i);
            }
        }
    }

    /* renamed from: y */
    public final Bitmap m9664y(String str) {
        int indexOf;
        if (!str.startsWith("data:") || str.length() < 14 || (indexOf = str.indexOf(44)) < 12 || !DataUrlLoader.f14861c.equals(str.substring(indexOf - 7, indexOf))) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str.substring(indexOf + 1), 0);
            return BitmapFactory.decodeByteArray(decode, 0, decode.length);
        } catch (Exception e2) {
            Log.e(f16097i, "Could not decode bad Data URL", e2);
            return null;
        }
    }

    /* renamed from: y0 */
    public final void m9665y0(SVG.C2098l c2098l) {
        m9559G("Group render", new Object[0]);
        m9627e1(this.f16107d, c2098l);
        if (m9584I()) {
            Matrix matrix = c2098l.f15963o;
            if (matrix != null) {
                this.f16104a.concat(matrix);
            }
            m9656u(c2098l);
            boolean m9657u0 = m9657u0();
            m9594N0(c2098l, true);
            if (m9657u0) {
                m9651r0(c2098l);
            }
            m9624c1(c2098l);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0052, code lost:
    
        if (r5.equals("monospace") == false) goto L16;
     */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Typeface m9666z(java.lang.String r5, java.lang.Integer r6, com.caverock.androidsvg.SVG.Style.FontStyle r7) {
        /*
            r4 = this;
            com.caverock.androidsvg.SVG$Style$FontStyle r4 = com.caverock.androidsvg.SVG.Style.FontStyle.Italic
            r0 = 1
            r1 = 0
            if (r7 != r4) goto L8
            r4 = r0
            goto L9
        L8:
            r4 = r1
        L9:
            int r6 = r6.intValue()
            r7 = 500(0x1f4, float:7.0E-43)
            r2 = 3
            r3 = 2
            if (r6 <= r7) goto L19
            if (r4 == 0) goto L17
            r4 = r2
            goto L1e
        L17:
            r4 = r0
            goto L1e
        L19:
            if (r4 == 0) goto L1d
            r4 = r3
            goto L1e
        L1d:
            r4 = r1
        L1e:
            r5.hashCode()
            int r6 = r5.hashCode()
            r7 = -1
            switch(r6) {
                case -1536685117: goto L55;
                case -1431958525: goto L4c;
                case -1081737434: goto L41;
                case 109326717: goto L36;
                case 1126973893: goto L2b;
                default: goto L29;
            }
        L29:
            r0 = r7
            goto L5f
        L2b:
            java.lang.String r6 = "cursive"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L34
            goto L29
        L34:
            r0 = 4
            goto L5f
        L36:
            java.lang.String r6 = "serif"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L3f
            goto L29
        L3f:
            r0 = r2
            goto L5f
        L41:
            java.lang.String r6 = "fantasy"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L4a
            goto L29
        L4a:
            r0 = r3
            goto L5f
        L4c:
            java.lang.String r6 = "monospace"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L5f
            goto L29
        L55:
            java.lang.String r6 = "sans-serif"
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L5e
            goto L29
        L5e:
            r0 = r1
        L5f:
            switch(r0) {
                case 0: goto L80;
                case 1: goto L79;
                case 2: goto L72;
                case 3: goto L6b;
                case 4: goto L64;
                default: goto L62;
            }
        L62:
            r4 = 0
            goto L86
        L64:
            android.graphics.Typeface r5 = android.graphics.Typeface.SANS_SERIF
            android.graphics.Typeface r4 = android.graphics.Typeface.create(r5, r4)
            goto L86
        L6b:
            android.graphics.Typeface r5 = android.graphics.Typeface.SERIF
            android.graphics.Typeface r4 = android.graphics.Typeface.create(r5, r4)
            goto L86
        L72:
            android.graphics.Typeface r5 = android.graphics.Typeface.SANS_SERIF
            android.graphics.Typeface r4 = android.graphics.Typeface.create(r5, r4)
            goto L86
        L79:
            android.graphics.Typeface r5 = android.graphics.Typeface.MONOSPACE
            android.graphics.Typeface r4 = android.graphics.Typeface.create(r5, r4)
            goto L86
        L80:
            android.graphics.Typeface r5 = android.graphics.Typeface.SANS_SERIF
            android.graphics.Typeface r4 = android.graphics.Typeface.create(r5, r4)
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.C2139a.m9666z(java.lang.String, java.lang.Integer, com.caverock.androidsvg.SVG$Style$FontStyle):android.graphics.Typeface");
    }

    /* renamed from: z0 */
    public final void m9667z0(SVG.C2102n c2102n) {
        SVG.C2104o c2104o;
        String str;
        m9559G("Image render", new Object[0]);
        SVG.C2104o c2104o2 = c2102n.f15969s;
        if (c2104o2 == null || c2104o2.m9390h() || (c2104o = c2102n.f15970t) == null || c2104o.m9390h() || (str = c2102n.f15966p) == null) {
            return;
        }
        PreserveAspectRatio preserveAspectRatio = c2102n.f15972o;
        if (preserveAspectRatio == null) {
            preserveAspectRatio = PreserveAspectRatio.LETTERBOX;
        }
        Bitmap m9664y = m9664y(str);
        if (m9664y == null) {
            SVGExternalFileResolver m9345j = SVG.m9345j();
            if (m9345j == null) {
                return;
            } else {
                m9664y = m9345j.resolveImage(c2102n.f15966p);
            }
        }
        if (m9664y == null) {
            m9560N("Could not locate image '%s'", c2102n.f15966p);
            return;
        }
        SVG.C2076b c2076b = new SVG.C2076b(0.0f, 0.0f, m9664y.getWidth(), m9664y.getHeight());
        m9627e1(this.f16107d, c2102n);
        if (m9584I() && m9631g1()) {
            Matrix matrix = c2102n.f15971u;
            if (matrix != null) {
                this.f16104a.concat(matrix);
            }
            SVG.C2104o c2104o3 = c2102n.f15967q;
            float m9387e = c2104o3 != null ? c2104o3.m9387e(this) : 0.0f;
            SVG.C2104o c2104o4 = c2102n.f15968r;
            this.f16107d.f16148f = new SVG.C2076b(m9387e, c2104o4 != null ? c2104o4.m9388f(this) : 0.0f, c2102n.f15969s.m9387e(this), c2102n.f15970t.m9387e(this));
            if (!this.f16107d.f16143a.f15885z.booleanValue()) {
                SVG.C2076b c2076b2 = this.f16107d.f16148f;
                m9612W0(c2076b2.f15904a, c2076b2.f15905b, c2076b2.f15906c, c2076b2.f15907d);
            }
            c2102n.f15947h = this.f16107d.f16148f;
            m9624c1(c2102n);
            m9656u(c2102n);
            boolean m9657u0 = m9657u0();
            m9629f1();
            this.f16104a.save();
            this.f16104a.concat(m9654t(this.f16107d.f16148f, c2076b, preserveAspectRatio));
            this.f16104a.drawBitmap(m9664y, 0.0f, 0.0f, new Paint(this.f16107d.f16143a.f15851D0 != SVG.Style.RenderQuality.optimizeSpeed ? 2 : 0));
            this.f16104a.restore();
            if (m9657u0) {
                m9651r0(c2102n);
            }
        }
    }

    /* renamed from: com.caverock.androidsvg.a$k */
    /* loaded from: classes3.dex */
    public class k extends j {

        /* renamed from: b */
        public float f16157b;

        public k() {
            super(C2139a.this, null);
            this.f16157b = 0.0f;
        }

        @Override // com.caverock.androidsvg.C2139a.j
        /* renamed from: b */
        public void mo9672b(String str) {
            this.f16157b += C2139a.this.f16107d.f16146d.measureText(str);
        }

        public /* synthetic */ k(C2139a c2139a, a aVar) {
            this();
        }
    }

    /* renamed from: com.caverock.androidsvg.a$h */
    /* loaded from: classes3.dex */
    public class h {

        /* renamed from: a */
        public SVG.Style f16143a;

        /* renamed from: b */
        public boolean f16144b;

        /* renamed from: c */
        public boolean f16145c;

        /* renamed from: d */
        public Paint f16146d;

        /* renamed from: e */
        public Paint f16147e;

        /* renamed from: f */
        public SVG.C2076b f16148f;

        /* renamed from: g */
        public SVG.C2076b f16149g;

        /* renamed from: h */
        public boolean f16150h;

        public h() {
            Paint paint = new Paint();
            this.f16146d = paint;
            paint.setFlags(193);
            this.f16146d.setHinting(0);
            this.f16146d.setStyle(Paint.Style.FILL);
            this.f16146d.setTypeface(Typeface.DEFAULT);
            Paint paint2 = new Paint();
            this.f16147e = paint2;
            paint2.setFlags(193);
            this.f16147e.setHinting(0);
            this.f16147e.setStyle(Paint.Style.STROKE);
            this.f16147e.setTypeface(Typeface.DEFAULT);
            this.f16143a = SVG.Style.m9361a();
        }

        public h(h hVar) {
            this.f16144b = hVar.f16144b;
            this.f16145c = hVar.f16145c;
            this.f16146d = new Paint(hVar.f16146d);
            this.f16147e = new Paint(hVar.f16147e);
            SVG.C2076b c2076b = hVar.f16148f;
            if (c2076b != null) {
                this.f16148f = new SVG.C2076b(c2076b);
            }
            SVG.C2076b c2076b2 = hVar.f16149g;
            if (c2076b2 != null) {
                this.f16149g = new SVG.C2076b(c2076b2);
            }
            this.f16150h = hVar.f16150h;
            try {
                this.f16143a = (SVG.Style) hVar.f16143a.clone();
            } catch (CloneNotSupportedException e) {
                Log.e(C2139a.f16097i, "Unexpected clone error", e);
                this.f16143a = SVG.Style.m9361a();
            }
        }
    }
}
