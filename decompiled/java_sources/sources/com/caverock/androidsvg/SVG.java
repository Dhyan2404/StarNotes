package com.caverock.androidsvg;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Picture;
import android.graphics.RectF;
import android.util.Log;
import com.caverock.androidsvg.CSSParser;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.data.FileTypeConstant;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class SVG {

    /* renamed from: A */
    public static final long f15793A = 16384;

    /* renamed from: B */
    public static final long f15794B = 32768;

    /* renamed from: C */
    public static final long f15795C = 65536;

    /* renamed from: D */
    public static final long f15796D = 131072;

    /* renamed from: E */
    public static final long f15797E = 262144;

    /* renamed from: F */
    public static final long f15798F = 524288;

    /* renamed from: G */
    public static final long f15799G = 1048576;

    /* renamed from: H */
    public static final long f15800H = 2097152;

    /* renamed from: I */
    public static final long f15801I = 4194304;

    /* renamed from: J */
    public static final long f15802J = 8388608;

    /* renamed from: K */
    public static final long f15803K = 16777216;

    /* renamed from: L */
    public static final long f15804L = 33554432;

    /* renamed from: M */
    public static final long f15805M = 67108864;

    /* renamed from: N */
    public static final long f15806N = 134217728;

    /* renamed from: O */
    public static final long f15807O = 268435456;

    /* renamed from: P */
    public static final long f15808P = 536870912;

    /* renamed from: Q */
    public static final long f15809Q = 1073741824;

    /* renamed from: R */
    public static final long f15810R = 2147483648L;

    /* renamed from: S */
    public static final long f15811S = 4294967296L;

    /* renamed from: T */
    public static final long f15812T = 8589934592L;

    /* renamed from: U */
    public static final long f15813U = 17179869184L;

    /* renamed from: V */
    public static final long f15814V = 34359738368L;

    /* renamed from: W */
    public static final long f15815W = 68719476736L;

    /* renamed from: X */
    public static final long f15816X = 137438953472L;

    /* renamed from: Y */
    public static final long f15817Y = -1;

    /* renamed from: g */
    public static final String f15818g = "1.4";

    /* renamed from: h */
    public static final int f15819h = 512;

    /* renamed from: i */
    public static final int f15820i = 512;

    /* renamed from: j */
    public static final double f15821j = 1.414213562373095d;

    /* renamed from: k */
    public static SVGExternalFileResolver f15822k = null;

    /* renamed from: l */
    public static boolean f15823l = true;

    /* renamed from: m */
    public static final long f15824m = 1;

    /* renamed from: n */
    public static final long f15825n = 2;

    /* renamed from: o */
    public static final long f15826o = 4;

    /* renamed from: p */
    public static final long f15827p = 8;

    /* renamed from: q */
    public static final long f15828q = 16;

    /* renamed from: r */
    public static final long f15829r = 32;

    /* renamed from: s */
    public static final long f15830s = 64;

    /* renamed from: t */
    public static final long f15831t = 128;

    /* renamed from: u */
    public static final long f15832u = 256;

    /* renamed from: v */
    public static final long f15833v = 512;

    /* renamed from: w */
    public static final long f15834w = 1024;

    /* renamed from: x */
    public static final long f15835x = 2048;

    /* renamed from: y */
    public static final long f15836y = 4096;

    /* renamed from: z */
    public static final long f15837z = 8192;

    /* renamed from: a */
    public C2083d0 f15838a = null;

    /* renamed from: b */
    public String f15839b = "";

    /* renamed from: c */
    public String f15840c = "";

    /* renamed from: d */
    public float f15841d = 96.0f;

    /* renamed from: e */
    public CSSParser.C2069n f15842e = new CSSParser.C2069n();

    /* renamed from: f */
    public Map<String, AbstractC2095j0> f15843f = new HashMap();

    /* loaded from: classes3.dex */
    public enum GradientSpread {
        pad,
        reflect,
        repeat
    }

    /* loaded from: classes3.dex */
    public static class Style implements Cloneable {

        /* renamed from: E0 */
        public static final int f15844E0 = 400;

        /* renamed from: F0 */
        public static final int f15845F0 = 700;

        /* renamed from: G0 */
        public static final int f15846G0 = -1;

        /* renamed from: H0 */
        public static final int f15847H0 = 1;

        /* renamed from: A0 */
        public AbstractC2101m0 f15848A0;

        /* renamed from: B0 */
        public Float f15849B0;

        /* renamed from: C0 */
        public VectorEffect f15850C0;

        /* renamed from: D0 */
        public RenderQuality f15851D0;

        /* renamed from: J */
        public C2079c f15852J;

        /* renamed from: O */
        public String f15853O;

        /* renamed from: Q */
        public String f15854Q;

        /* renamed from: Z */
        public String f15855Z;

        /* renamed from: e */
        public long f15856e = 0;

        /* renamed from: f */
        public AbstractC2101m0 f15857f;

        /* renamed from: g */
        public FillRule f15858g;

        /* renamed from: h */
        public Float f15859h;

        /* renamed from: i */
        public AbstractC2101m0 f15860i;

        /* renamed from: j */
        public Float f15861j;

        /* renamed from: k */
        public C2104o f15862k;

        /* renamed from: k0 */
        public Boolean f15863k0;

        /* renamed from: l */
        public LineCap f15864l;

        /* renamed from: m */
        public LineJoin f15865m;

        /* renamed from: n */
        public Float f15866n;

        /* renamed from: o */
        public C2104o[] f15867o;

        /* renamed from: p */
        public C2104o f15868p;

        /* renamed from: q */
        public Float f15869q;

        /* renamed from: q0 */
        public Boolean f15870q0;

        /* renamed from: r */
        public C2086f f15871r;

        /* renamed from: s */
        public List<String> f15872s;

        /* renamed from: t */
        public C2104o f15873t;

        /* renamed from: t0 */
        public AbstractC2101m0 f15874t0;

        /* renamed from: u */
        public Integer f15875u;

        /* renamed from: u0 */
        public Float f15876u0;

        /* renamed from: v */
        public FontStyle f15877v;

        /* renamed from: v0 */
        public String f15878v0;

        /* renamed from: w */
        public TextDecoration f15879w;

        /* renamed from: w0 */
        public FillRule f15880w0;

        /* renamed from: x */
        public TextDirection f15881x;

        /* renamed from: x0 */
        public String f15882x0;

        /* renamed from: y */
        public TextAnchor f15883y;

        /* renamed from: y0 */
        public AbstractC2101m0 f15884y0;

        /* renamed from: z */
        public Boolean f15885z;

        /* renamed from: z0 */
        public Float f15886z0;

        /* loaded from: classes3.dex */
        public enum FillRule {
            NonZero,
            EvenOdd
        }

        /* loaded from: classes3.dex */
        public enum FontStyle {
            Normal,
            Italic,
            Oblique
        }

        /* loaded from: classes3.dex */
        public enum LineCap {
            Butt,
            Round,
            Square
        }

        /* loaded from: classes3.dex */
        public enum LineJoin {
            Miter,
            Round,
            Bevel
        }

        /* loaded from: classes3.dex */
        public enum RenderQuality {
            auto,
            optimizeQuality,
            optimizeSpeed
        }

        /* loaded from: classes3.dex */
        public enum TextAnchor {
            Start,
            Middle,
            End
        }

        /* loaded from: classes3.dex */
        public enum TextDecoration {
            None,
            Underline,
            Overline,
            LineThrough,
            Blink
        }

        /* loaded from: classes3.dex */
        public enum TextDirection {
            LTR,
            RTL
        }

        /* loaded from: classes3.dex */
        public enum VectorEffect {
            None,
            NonScalingStroke
        }

        /* renamed from: a */
        public static Style m9361a() {
            Style style = new Style();
            style.f15856e = -1L;
            C2086f c2086f = C2086f.f15928f;
            style.f15857f = c2086f;
            FillRule fillRule = FillRule.NonZero;
            style.f15858g = fillRule;
            Float valueOf = Float.valueOf(1.0f);
            style.f15859h = valueOf;
            style.f15860i = null;
            style.f15861j = valueOf;
            style.f15862k = new C2104o(1.0f);
            style.f15864l = LineCap.Butt;
            style.f15865m = LineJoin.Miter;
            style.f15866n = Float.valueOf(4.0f);
            style.f15867o = null;
            style.f15868p = new C2104o(0.0f);
            style.f15869q = valueOf;
            style.f15871r = c2086f;
            style.f15872s = null;
            style.f15873t = new C2104o(12.0f, Unit.pt);
            style.f15875u = 400;
            style.f15877v = FontStyle.Normal;
            style.f15879w = TextDecoration.None;
            style.f15881x = TextDirection.LTR;
            style.f15883y = TextAnchor.Start;
            Boolean bool = Boolean.TRUE;
            style.f15885z = bool;
            style.f15852J = null;
            style.f15853O = null;
            style.f15854Q = null;
            style.f15855Z = null;
            style.f15863k0 = bool;
            style.f15870q0 = bool;
            style.f15874t0 = c2086f;
            style.f15876u0 = valueOf;
            style.f15878v0 = null;
            style.f15880w0 = fillRule;
            style.f15882x0 = null;
            style.f15884y0 = null;
            style.f15886z0 = valueOf;
            style.f15848A0 = null;
            style.f15849B0 = valueOf;
            style.f15850C0 = VectorEffect.None;
            style.f15851D0 = RenderQuality.auto;
            return style;
        }

        /* renamed from: b */
        public void m9362b(boolean z) {
            Boolean bool = Boolean.TRUE;
            this.f15863k0 = bool;
            if (!z) {
                bool = Boolean.FALSE;
            }
            this.f15885z = bool;
            this.f15852J = null;
            this.f15878v0 = null;
            this.f15869q = Float.valueOf(1.0f);
            this.f15874t0 = C2086f.f15928f;
            this.f15876u0 = Float.valueOf(1.0f);
            this.f15882x0 = null;
            this.f15884y0 = null;
            this.f15886z0 = Float.valueOf(1.0f);
            this.f15848A0 = null;
            this.f15849B0 = Float.valueOf(1.0f);
            this.f15850C0 = VectorEffect.None;
        }

        public Object clone() throws CloneNotSupportedException {
            Style style = (Style) super.clone();
            C2104o[] c2104oArr = this.f15867o;
            if (c2104oArr != null) {
                style.f15867o = (C2104o[]) c2104oArr.clone();
            }
            return style;
        }
    }

    /* loaded from: classes3.dex */
    public enum Unit {
        px,
        em,
        ex,
        in,
        cm,
        mm,
        pt,
        pc,
        percent
    }

    /* renamed from: com.caverock.androidsvg.SVG$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C2073a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f15895a;

        static {
            int[] iArr = new int[Unit.values().length];
            f15895a = iArr;
            try {
                iArr[Unit.px.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15895a[Unit.em.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15895a[Unit.ex.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15895a[Unit.in.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15895a[Unit.cm.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15895a[Unit.mm.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15895a[Unit.pt.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15895a[Unit.pc.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15895a[Unit.percent.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$a0 */
    /* loaded from: classes3.dex */
    public static class C2074a0 extends AbstractC2096k {

        /* renamed from: o */
        public C2104o f15896o;

        /* renamed from: p */
        public C2104o f15897p;

        /* renamed from: q */
        public C2104o f15898q;

        /* renamed from: r */
        public C2104o f15899r;

        /* renamed from: s */
        public C2104o f15900s;

        /* renamed from: t */
        public C2104o f15901t;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "rect";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$a1 */
    /* loaded from: classes3.dex */
    public static class C2075a1 extends C2099l0 implements InterfaceC2119v0 {

        /* renamed from: c */
        public String f15902c;

        /* renamed from: d */
        public InterfaceC2127z0 f15903d;

        public C2075a1(String str) {
            this.f15902c = str;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2119v0
        /* renamed from: a */
        public InterfaceC2127z0 mo9364a() {
            return this.f15903d;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2119v0
        /* renamed from: e */
        public void mo9365e(InterfaceC2127z0 interfaceC2127z0) {
            this.f15903d = interfaceC2127z0;
        }

        public String toString() {
            return "TextChild: '" + this.f15902c + CloudStorageConstants.SINGLE_QUOTES;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$b0 */
    /* loaded from: classes3.dex */
    public static class C2077b0 extends AbstractC2095j0 implements InterfaceC2091h0 {
        @Override // com.caverock.androidsvg.SVG.InterfaceC2091h0
        public List<C2099l0> getChildren() {
            return Collections.emptyList();
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2091h0
        /* renamed from: k */
        public void mo9371k(C2099l0 c2099l0) {
        }

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "solidColor";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$b1 */
    /* loaded from: classes3.dex */
    public static class C2078b1 extends C2098l {

        /* renamed from: p */
        public String f15908p;

        /* renamed from: q */
        public C2104o f15909q;

        /* renamed from: r */
        public C2104o f15910r;

        /* renamed from: s */
        public C2104o f15911s;

        /* renamed from: t */
        public C2104o f15912t;

        @Override // com.caverock.androidsvg.SVG.C2098l, com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "use";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$c */
    /* loaded from: classes3.dex */
    public static class C2079c {

        /* renamed from: a */
        public C2104o f15913a;

        /* renamed from: b */
        public C2104o f15914b;

        /* renamed from: c */
        public C2104o f15915c;

        /* renamed from: d */
        public C2104o f15916d;

        public C2079c(C2104o c2104o, C2104o c2104o2, C2104o c2104o3, C2104o c2104o4) {
            this.f15913a = c2104o;
            this.f15914b = c2104o2;
            this.f15915c = c2104o3;
            this.f15916d = c2104o4;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$c0 */
    /* loaded from: classes3.dex */
    public static class C2080c0 extends AbstractC2095j0 implements InterfaceC2091h0 {

        /* renamed from: h */
        public Float f15917h;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2091h0
        public List<C2099l0> getChildren() {
            return Collections.emptyList();
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2091h0
        /* renamed from: k */
        public void mo9371k(C2099l0 c2099l0) {
        }

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "stop";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$c1 */
    /* loaded from: classes3.dex */
    public static class C2081c1 extends AbstractC2107p0 implements InterfaceC2112s {

        /* renamed from: q */
        public static final String f15918q = "view";

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "view";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$d */
    /* loaded from: classes3.dex */
    public static class C2082d extends AbstractC2096k {

        /* renamed from: o */
        public C2104o f15919o;

        /* renamed from: p */
        public C2104o f15920p;

        /* renamed from: q */
        public C2104o f15921q;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "circle";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$d0 */
    /* loaded from: classes3.dex */
    public static class C2083d0 extends AbstractC2107p0 {

        /* renamed from: q */
        public C2104o f15922q;

        /* renamed from: r */
        public C2104o f15923r;

        /* renamed from: s */
        public C2104o f15924s;

        /* renamed from: t */
        public C2104o f15925t;

        /* renamed from: u */
        public String f15926u;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return FileTypeConstant.SVG;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$e */
    /* loaded from: classes3.dex */
    public static class C2084e extends C2098l implements InterfaceC2112s {

        /* renamed from: p */
        public Boolean f15927p;

        @Override // com.caverock.androidsvg.SVG.C2098l, com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "clipPath";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$e0 */
    /* loaded from: classes3.dex */
    public interface InterfaceC2085e0 {
        /* renamed from: b */
        void mo9372b(Set<String> set);

        /* renamed from: c */
        void mo9373c(Set<String> set);

        /* renamed from: d */
        void mo9374d(String str);

        /* renamed from: f */
        String mo9375f();

        /* renamed from: g */
        void mo9376g(Set<String> set);

        Set<String> getRequiredFeatures();

        /* renamed from: h */
        Set<String> mo9377h();

        /* renamed from: i */
        Set<String> mo9378i();

        /* renamed from: j */
        void mo9379j(Set<String> set);

        /* renamed from: m */
        Set<String> mo9380m();
    }

    /* renamed from: com.caverock.androidsvg.SVG$f */
    /* loaded from: classes3.dex */
    public static class C2086f extends AbstractC2101m0 {

        /* renamed from: f */
        public static final C2086f f15928f = new C2086f(-16777216);

        /* renamed from: g */
        public static final C2086f f15929g = new C2086f(0);

        /* renamed from: e */
        public int f15930e;

        public C2086f(int i) {
            this.f15930e = i;
        }

        public String toString() {
            return String.format("#%08x", Integer.valueOf(this.f15930e));
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$f0 */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2087f0 extends AbstractC2093i0 implements InterfaceC2091h0, InterfaceC2085e0 {

        /* renamed from: i */
        public List<C2099l0> f15931i = new ArrayList();

        /* renamed from: j */
        public Set<String> f15932j = null;

        /* renamed from: k */
        public String f15933k = null;

        /* renamed from: l */
        public Set<String> f15934l = null;

        /* renamed from: m */
        public Set<String> f15935m = null;

        /* renamed from: n */
        public Set<String> f15936n = null;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: b */
        public void mo9372b(Set<String> set) {
            this.f15934l = set;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: c */
        public void mo9373c(Set<String> set) {
            this.f15935m = set;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: d */
        public void mo9374d(String str) {
            this.f15933k = str;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: f */
        public String mo9375f() {
            return this.f15933k;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: g */
        public void mo9376g(Set<String> set) {
            this.f15936n = set;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2091h0
        public List<C2099l0> getChildren() {
            return this.f15931i;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        public Set<String> getRequiredFeatures() {
            return this.f15932j;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: h */
        public Set<String> mo9377h() {
            return this.f15935m;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: i */
        public Set<String> mo9378i() {
            return null;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: j */
        public void mo9379j(Set<String> set) {
            this.f15932j = set;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2091h0
        /* renamed from: k */
        public void mo9371k(C2099l0 c2099l0) throws SVGParseException {
            this.f15931i.add(c2099l0);
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: m */
        public Set<String> mo9380m() {
            return this.f15936n;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$g */
    /* loaded from: classes3.dex */
    public static class C2088g extends AbstractC2101m0 {

        /* renamed from: e */
        public static C2088g f15937e = new C2088g();

        /* renamed from: a */
        public static C2088g m9381a() {
            return f15937e;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$g0 */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2089g0 extends AbstractC2093i0 implements InterfaceC2085e0 {

        /* renamed from: i */
        public Set<String> f15938i = null;

        /* renamed from: j */
        public String f15939j = null;

        /* renamed from: k */
        public Set<String> f15940k = null;

        /* renamed from: l */
        public Set<String> f15941l = null;

        /* renamed from: m */
        public Set<String> f15942m = null;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: b */
        public void mo9372b(Set<String> set) {
            this.f15940k = set;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: c */
        public void mo9373c(Set<String> set) {
            this.f15941l = set;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: d */
        public void mo9374d(String str) {
            this.f15939j = str;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: f */
        public String mo9375f() {
            return this.f15939j;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: g */
        public void mo9376g(Set<String> set) {
            this.f15942m = set;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        public Set<String> getRequiredFeatures() {
            return this.f15938i;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: h */
        public Set<String> mo9377h() {
            return this.f15941l;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: i */
        public Set<String> mo9378i() {
            return this.f15940k;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: j */
        public void mo9379j(Set<String> set) {
            this.f15938i = set;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2085e0
        /* renamed from: m */
        public Set<String> mo9380m() {
            return this.f15942m;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$h */
    /* loaded from: classes3.dex */
    public static class C2090h extends C2098l implements InterfaceC2112s {
        @Override // com.caverock.androidsvg.SVG.C2098l, com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "defs";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$h0 */
    /* loaded from: classes3.dex */
    public interface InterfaceC2091h0 {
        List<C2099l0> getChildren();

        /* renamed from: k */
        void mo9371k(C2099l0 c2099l0) throws SVGParseException;
    }

    /* renamed from: com.caverock.androidsvg.SVG$i */
    /* loaded from: classes3.dex */
    public static class C2092i extends AbstractC2096k {

        /* renamed from: o */
        public C2104o f15943o;

        /* renamed from: p */
        public C2104o f15944p;

        /* renamed from: q */
        public C2104o f15945q;

        /* renamed from: r */
        public C2104o f15946r;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "ellipse";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$i0 */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2093i0 extends AbstractC2095j0 {

        /* renamed from: h */
        public C2076b f15947h = null;
    }

    /* renamed from: com.caverock.androidsvg.SVG$j */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2094j extends AbstractC2095j0 implements InterfaceC2091h0 {

        /* renamed from: h */
        public List<C2099l0> f15948h = new ArrayList();

        /* renamed from: i */
        public Boolean f15949i;

        /* renamed from: j */
        public Matrix f15950j;

        /* renamed from: k */
        public GradientSpread f15951k;

        /* renamed from: l */
        public String f15952l;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2091h0
        public List<C2099l0> getChildren() {
            return this.f15948h;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2091h0
        /* renamed from: k */
        public void mo9371k(C2099l0 c2099l0) throws SVGParseException {
            if (c2099l0 instanceof C2080c0) {
                this.f15948h.add(c2099l0);
                return;
            }
            throw new SVGParseException("Gradient elements cannot contain " + c2099l0 + " elements.");
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$j0 */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2095j0 extends C2099l0 {

        /* renamed from: c */
        public String f15953c = null;

        /* renamed from: d */
        public Boolean f15954d = null;

        /* renamed from: e */
        public Style f15955e = null;

        /* renamed from: f */
        public Style f15956f = null;

        /* renamed from: g */
        public List<String> f15957g = null;

        public String toString() {
            return mo9363n();
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$k */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2096k extends AbstractC2089g0 implements InterfaceC2100m {

        /* renamed from: n */
        public Matrix f15958n;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2100m
        /* renamed from: l */
        public void mo9382l(Matrix matrix) {
            this.f15958n = matrix;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$k0 */
    /* loaded from: classes3.dex */
    public static class C2097k0 extends AbstractC2094j {

        /* renamed from: m */
        public C2104o f15959m;

        /* renamed from: n */
        public C2104o f15960n;

        /* renamed from: o */
        public C2104o f15961o;

        /* renamed from: p */
        public C2104o f15962p;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "linearGradient";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$l */
    /* loaded from: classes3.dex */
    public static class C2098l extends AbstractC2087f0 implements InterfaceC2100m {

        /* renamed from: o */
        public Matrix f15963o;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2100m
        /* renamed from: l */
        public void mo9382l(Matrix matrix) {
            this.f15963o = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "group";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$l0 */
    /* loaded from: classes3.dex */
    public static class C2099l0 {

        /* renamed from: a */
        public SVG f15964a;

        /* renamed from: b */
        public InterfaceC2091h0 f15965b;

        /* renamed from: n */
        public String mo9363n() {
            return "";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$m */
    /* loaded from: classes3.dex */
    public interface InterfaceC2100m {
        /* renamed from: l */
        void mo9382l(Matrix matrix);
    }

    /* renamed from: com.caverock.androidsvg.SVG$m0 */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2101m0 implements Cloneable {
    }

    /* renamed from: com.caverock.androidsvg.SVG$n */
    /* loaded from: classes3.dex */
    public static class C2102n extends AbstractC2103n0 implements InterfaceC2100m {

        /* renamed from: p */
        public String f15966p;

        /* renamed from: q */
        public C2104o f15967q;

        /* renamed from: r */
        public C2104o f15968r;

        /* renamed from: s */
        public C2104o f15969s;

        /* renamed from: t */
        public C2104o f15970t;

        /* renamed from: u */
        public Matrix f15971u;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2100m
        /* renamed from: l */
        public void mo9382l(Matrix matrix) {
            this.f15971u = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "image";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$n0 */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2103n0 extends AbstractC2087f0 {

        /* renamed from: o */
        public PreserveAspectRatio f15972o = null;
    }

    /* renamed from: com.caverock.androidsvg.SVG$o0 */
    /* loaded from: classes3.dex */
    public static class C2105o0 extends AbstractC2094j {

        /* renamed from: m */
        public C2104o f15975m;

        /* renamed from: n */
        public C2104o f15976n;

        /* renamed from: o */
        public C2104o f15977o;

        /* renamed from: p */
        public C2104o f15978p;

        /* renamed from: q */
        public C2104o f15979q;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "radialGradient";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$p */
    /* loaded from: classes3.dex */
    public static class C2106p extends AbstractC2096k {

        /* renamed from: o */
        public C2104o f15980o;

        /* renamed from: p */
        public C2104o f15981p;

        /* renamed from: q */
        public C2104o f15982q;

        /* renamed from: r */
        public C2104o f15983r;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "line";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$p0 */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2107p0 extends AbstractC2103n0 {

        /* renamed from: p */
        public C2076b f15984p;
    }

    /* renamed from: com.caverock.androidsvg.SVG$q */
    /* loaded from: classes3.dex */
    public static class C2108q extends AbstractC2107p0 implements InterfaceC2112s {

        /* renamed from: q */
        public boolean f15985q;

        /* renamed from: r */
        public C2104o f15986r;

        /* renamed from: s */
        public C2104o f15987s;

        /* renamed from: t */
        public C2104o f15988t;

        /* renamed from: u */
        public C2104o f15989u;

        /* renamed from: v */
        public Float f15990v;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "marker";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$q0 */
    /* loaded from: classes3.dex */
    public static class C2109q0 extends C2098l {
        @Override // com.caverock.androidsvg.SVG.C2098l, com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "switch";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$r */
    /* loaded from: classes3.dex */
    public static class C2110r extends AbstractC2087f0 implements InterfaceC2112s {

        /* renamed from: o */
        public Boolean f15991o;

        /* renamed from: p */
        public Boolean f15992p;

        /* renamed from: q */
        public C2104o f15993q;

        /* renamed from: r */
        public C2104o f15994r;

        /* renamed from: s */
        public C2104o f15995s;

        /* renamed from: t */
        public C2104o f15996t;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "mask";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$r0 */
    /* loaded from: classes3.dex */
    public static class C2111r0 extends AbstractC2107p0 implements InterfaceC2112s {
        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "symbol";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$s */
    /* loaded from: classes3.dex */
    public interface InterfaceC2112s {
    }

    /* renamed from: com.caverock.androidsvg.SVG$s0 */
    /* loaded from: classes3.dex */
    public static class C2113s0 extends AbstractC2121w0 implements InterfaceC2119v0 {

        /* renamed from: o */
        public String f15997o;

        /* renamed from: p */
        public InterfaceC2127z0 f15998p;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2119v0
        /* renamed from: a */
        public InterfaceC2127z0 mo9364a() {
            return this.f15998p;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2119v0
        /* renamed from: e */
        public void mo9365e(InterfaceC2127z0 interfaceC2127z0) {
            this.f15998p = interfaceC2127z0;
        }

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "tref";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$t */
    /* loaded from: classes3.dex */
    public static class C2114t extends AbstractC2101m0 {

        /* renamed from: e */
        public String f15999e;

        /* renamed from: f */
        public AbstractC2101m0 f16000f;

        public C2114t(String str, AbstractC2101m0 abstractC2101m0) {
            this.f15999e = str;
            this.f16000f = abstractC2101m0;
        }

        public String toString() {
            return this.f15999e + " " + this.f16000f;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$t0 */
    /* loaded from: classes3.dex */
    public static class C2115t0 extends AbstractC2125y0 implements InterfaceC2119v0 {

        /* renamed from: s */
        public InterfaceC2127z0 f16001s;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2119v0
        /* renamed from: a */
        public InterfaceC2127z0 mo9364a() {
            return this.f16001s;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2119v0
        /* renamed from: e */
        public void mo9365e(InterfaceC2127z0 interfaceC2127z0) {
            this.f16001s = interfaceC2127z0;
        }

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "tspan";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$u */
    /* loaded from: classes3.dex */
    public static class C2116u extends AbstractC2096k {

        /* renamed from: o */
        public C2118v f16002o;

        /* renamed from: p */
        public Float f16003p;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "path";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$u0 */
    /* loaded from: classes3.dex */
    public static class C2117u0 extends AbstractC2125y0 implements InterfaceC2127z0, InterfaceC2100m {

        /* renamed from: s */
        public Matrix f16004s;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2100m
        /* renamed from: l */
        public void mo9382l(Matrix matrix) {
            this.f16004s = matrix;
        }

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "text";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$v */
    /* loaded from: classes3.dex */
    public static class C2118v implements InterfaceC2120w {

        /* renamed from: e */
        public static final byte f16005e = 0;

        /* renamed from: f */
        public static final byte f16006f = 1;

        /* renamed from: g */
        public static final byte f16007g = 2;

        /* renamed from: h */
        public static final byte f16008h = 3;

        /* renamed from: i */
        public static final byte f16009i = 4;

        /* renamed from: j */
        public static final byte f16010j = 8;

        /* renamed from: b */
        public int f16012b = 0;

        /* renamed from: d */
        public int f16014d = 0;

        /* renamed from: a */
        public byte[] f16011a = new byte[8];

        /* renamed from: c */
        public float[] f16013c = new float[16];

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        /* renamed from: a */
        public void mo9391a(float f, float f2, float f3, float f4, float f5, float f6) {
            m9393c((byte) 2);
            m9394d(6);
            float[] fArr = this.f16013c;
            int i = this.f16014d;
            int i2 = i + 1;
            fArr[i] = f;
            int i3 = i2 + 1;
            fArr[i2] = f2;
            int i4 = i3 + 1;
            fArr[i3] = f3;
            int i5 = i4 + 1;
            fArr[i4] = f4;
            int i6 = i5 + 1;
            fArr[i5] = f5;
            this.f16014d = i6 + 1;
            fArr[i6] = f6;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        /* renamed from: b */
        public void mo9392b(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            m9393c((byte) ((z ? 2 : 0) | 4 | (z2 ? 1 : 0)));
            m9394d(5);
            float[] fArr = this.f16013c;
            int i = this.f16014d;
            int i2 = i + 1;
            fArr[i] = f;
            int i3 = i2 + 1;
            fArr[i2] = f2;
            int i4 = i3 + 1;
            fArr[i3] = f3;
            int i5 = i4 + 1;
            fArr[i4] = f4;
            this.f16014d = i5 + 1;
            fArr[i5] = f5;
        }

        /* renamed from: c */
        public final void m9393c(byte b) {
            int i = this.f16012b;
            byte[] bArr = this.f16011a;
            if (i == bArr.length) {
                byte[] bArr2 = new byte[bArr.length * 2];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                this.f16011a = bArr2;
            }
            byte[] bArr3 = this.f16011a;
            int i2 = this.f16012b;
            this.f16012b = i2 + 1;
            bArr3[i2] = b;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void close() {
            m9393c((byte) 8);
        }

        /* renamed from: d */
        public final void m9394d(int i) {
            float[] fArr = this.f16013c;
            if (fArr.length < this.f16014d + i) {
                float[] fArr2 = new float[fArr.length * 2];
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                this.f16013c = fArr2;
            }
        }

        /* renamed from: e */
        public void m9395e(InterfaceC2120w interfaceC2120w) {
            int i;
            int i2 = 0;
            for (int i3 = 0; i3 < this.f16012b; i3++) {
                byte b = this.f16011a[i3];
                if (b == 0) {
                    float[] fArr = this.f16013c;
                    int i4 = i2 + 1;
                    i = i4 + 1;
                    interfaceC2120w.moveTo(fArr[i2], fArr[i4]);
                } else if (b != 1) {
                    if (b == 2) {
                        float[] fArr2 = this.f16013c;
                        int i5 = i2 + 1;
                        float f = fArr2[i2];
                        int i6 = i5 + 1;
                        float f2 = fArr2[i5];
                        int i7 = i6 + 1;
                        float f3 = fArr2[i6];
                        int i8 = i7 + 1;
                        float f4 = fArr2[i7];
                        int i9 = i8 + 1;
                        float f5 = fArr2[i8];
                        i2 = i9 + 1;
                        interfaceC2120w.mo9391a(f, f2, f3, f4, f5, fArr2[i9]);
                    } else if (b == 3) {
                        float[] fArr3 = this.f16013c;
                        int i10 = i2 + 1;
                        int i11 = i10 + 1;
                        int i12 = i11 + 1;
                        interfaceC2120w.quadTo(fArr3[i2], fArr3[i10], fArr3[i11], fArr3[i12]);
                        i2 = i12 + 1;
                    } else if (b != 8) {
                        boolean z = (b & 2) != 0;
                        boolean z2 = (b & 1) != 0;
                        float[] fArr4 = this.f16013c;
                        int i13 = i2 + 1;
                        float f6 = fArr4[i2];
                        int i14 = i13 + 1;
                        float f7 = fArr4[i13];
                        int i15 = i14 + 1;
                        float f8 = fArr4[i14];
                        int i16 = i15 + 1;
                        interfaceC2120w.mo9392b(f6, f7, f8, z, z2, fArr4[i15], fArr4[i16]);
                        i2 = i16 + 1;
                    } else {
                        interfaceC2120w.close();
                    }
                } else {
                    float[] fArr5 = this.f16013c;
                    int i17 = i2 + 1;
                    i = i17 + 1;
                    interfaceC2120w.lineTo(fArr5[i2], fArr5[i17]);
                }
                i2 = i;
            }
        }

        /* renamed from: f */
        public boolean m9396f() {
            return this.f16012b == 0;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void lineTo(float f, float f2) {
            m9393c((byte) 1);
            m9394d(2);
            float[] fArr = this.f16013c;
            int i = this.f16014d;
            int i2 = i + 1;
            fArr[i] = f;
            this.f16014d = i2 + 1;
            fArr[i2] = f2;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void moveTo(float f, float f2) {
            m9393c((byte) 0);
            m9394d(2);
            float[] fArr = this.f16013c;
            int i = this.f16014d;
            int i2 = i + 1;
            fArr[i] = f;
            this.f16014d = i2 + 1;
            fArr[i2] = f2;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2120w
        public void quadTo(float f, float f2, float f3, float f4) {
            m9393c((byte) 3);
            m9394d(4);
            float[] fArr = this.f16013c;
            int i = this.f16014d;
            int i2 = i + 1;
            fArr[i] = f;
            int i3 = i2 + 1;
            fArr[i2] = f2;
            int i4 = i3 + 1;
            fArr[i3] = f3;
            this.f16014d = i4 + 1;
            fArr[i4] = f4;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$v0 */
    /* loaded from: classes3.dex */
    public interface InterfaceC2119v0 {
        /* renamed from: a */
        InterfaceC2127z0 mo9364a();

        /* renamed from: e */
        void mo9365e(InterfaceC2127z0 interfaceC2127z0);
    }

    /* renamed from: com.caverock.androidsvg.SVG$w */
    /* loaded from: classes3.dex */
    public interface InterfaceC2120w {
        /* renamed from: a */
        void mo9391a(float f, float f2, float f3, float f4, float f5, float f6);

        /* renamed from: b */
        void mo9392b(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5);

        void close();

        void lineTo(float f, float f2);

        void moveTo(float f, float f2);

        void quadTo(float f, float f2, float f3, float f4);
    }

    /* renamed from: com.caverock.androidsvg.SVG$w0 */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2121w0 extends AbstractC2087f0 {
        @Override // com.caverock.androidsvg.SVG.AbstractC2087f0, com.caverock.androidsvg.SVG.InterfaceC2091h0
        /* renamed from: k */
        public void mo9371k(C2099l0 c2099l0) throws SVGParseException {
            if (c2099l0 instanceof InterfaceC2119v0) {
                this.f15931i.add(c2099l0);
                return;
            }
            throw new SVGParseException("Text content elements cannot contain " + c2099l0 + " elements.");
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$x */
    /* loaded from: classes3.dex */
    public static class C2122x extends AbstractC2107p0 implements InterfaceC2112s {

        /* renamed from: q */
        public Boolean f16015q;

        /* renamed from: r */
        public Boolean f16016r;

        /* renamed from: s */
        public Matrix f16017s;

        /* renamed from: t */
        public C2104o f16018t;

        /* renamed from: u */
        public C2104o f16019u;

        /* renamed from: v */
        public C2104o f16020v;

        /* renamed from: w */
        public C2104o f16021w;

        /* renamed from: x */
        public String f16022x;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "pattern";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$x0 */
    /* loaded from: classes3.dex */
    public static class C2123x0 extends AbstractC2121w0 implements InterfaceC2119v0 {

        /* renamed from: o */
        public String f16023o;

        /* renamed from: p */
        public C2104o f16024p;

        /* renamed from: q */
        public InterfaceC2127z0 f16025q;

        @Override // com.caverock.androidsvg.SVG.InterfaceC2119v0
        /* renamed from: a */
        public InterfaceC2127z0 mo9364a() {
            return this.f16025q;
        }

        @Override // com.caverock.androidsvg.SVG.InterfaceC2119v0
        /* renamed from: e */
        public void mo9365e(InterfaceC2127z0 interfaceC2127z0) {
            this.f16025q = interfaceC2127z0;
        }

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "textPath";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$y */
    /* loaded from: classes3.dex */
    public static class C2124y extends AbstractC2096k {

        /* renamed from: o */
        public float[] f16026o;

        @Override // com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return UniversalShapeTypeConst.POLYLINE;
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$y0 */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC2125y0 extends AbstractC2121w0 {

        /* renamed from: o */
        public List<C2104o> f16027o;

        /* renamed from: p */
        public List<C2104o> f16028p;

        /* renamed from: q */
        public List<C2104o> f16029q;

        /* renamed from: r */
        public List<C2104o> f16030r;
    }

    /* renamed from: com.caverock.androidsvg.SVG$z */
    /* loaded from: classes3.dex */
    public static class C2126z extends C2124y {
        @Override // com.caverock.androidsvg.SVG.C2124y, com.caverock.androidsvg.SVG.C2099l0
        /* renamed from: n */
        public String mo9363n() {
            return "polygon";
        }
    }

    /* renamed from: com.caverock.androidsvg.SVG$z0 */
    /* loaded from: classes3.dex */
    public interface InterfaceC2127z0 {
    }

    public static void deregisterExternalFileResolver() {
        f15822k = null;
    }

    public static SVG getFromAsset(AssetManager assetManager, String str) throws SVGParseException, IOException {
        SVGParser sVGParser = new SVGParser();
        InputStream open = assetManager.open(str);
        try {
            return sVGParser.m9454A(open, f15823l);
        } finally {
            try {
                open.close();
            } catch (IOException unused) {
            }
        }
    }

    public static SVG getFromInputStream(InputStream inputStream) throws SVGParseException {
        return new SVGParser().m9454A(inputStream, f15823l);
    }

    public static SVG getFromResource(Context context, int i) throws SVGParseException {
        return getFromResource(context.getResources(), i);
    }

    public static SVG getFromString(String str) throws SVGParseException {
        return new SVGParser().m9454A(new ByteArrayInputStream(str.getBytes()), f15823l);
    }

    public static String getVersion() {
        return f15818g;
    }

    public static boolean isInternalEntitiesEnabled() {
        return f15823l;
    }

    /* renamed from: j */
    public static SVGExternalFileResolver m9345j() {
        return f15822k;
    }

    public static void registerExternalFileResolver(SVGExternalFileResolver sVGExternalFileResolver) {
        f15822k = sVGExternalFileResolver;
    }

    public static void setInternalEntitiesEnabled(boolean z) {
        f15823l = z;
    }

    /* renamed from: a */
    public void m9346a(CSSParser.C2069n c2069n) {
        this.f15842e.m9330b(c2069n);
    }

    /* renamed from: b */
    public void m9347b() {
        this.f15842e.m9333e(CSSParser.Source.RenderOptions);
    }

    /* renamed from: c */
    public final String m9348c(String str) {
        if (str.startsWith("\"") && str.endsWith("\"")) {
            str = str.substring(1, str.length() - 1).replace("\\\"", "\"");
        } else if (str.startsWith(CloudStorageConstants.SINGLE_QUOTES) && str.endsWith(CloudStorageConstants.SINGLE_QUOTES)) {
            str = str.substring(1, str.length() - 1).replace("\\'", CloudStorageConstants.SINGLE_QUOTES);
        }
        return str.replace("\\\n", "").replace("\\A", "\n");
    }

    /* renamed from: d */
    public List<CSSParser.C2067l> m9349d() {
        return this.f15842e.m9331c();
    }

    /* renamed from: e */
    public final C2076b m9350e(float f) {
        Unit unit;
        Unit unit2;
        Unit unit3;
        Unit unit4;
        float f2;
        Unit unit5;
        C2083d0 c2083d0 = this.f15838a;
        C2104o c2104o = c2083d0.f15924s;
        C2104o c2104o2 = c2083d0.f15925t;
        if (c2104o == null || c2104o.m9390h() || (unit = c2104o.f15974f) == (unit2 = Unit.percent) || unit == (unit3 = Unit.em) || unit == (unit4 = Unit.ex)) {
            return new C2076b(-1.0f, -1.0f, -1.0f, -1.0f);
        }
        float m9384b = c2104o.m9384b(f);
        if (c2104o2 == null) {
            C2076b c2076b = this.f15838a.f15984p;
            f2 = c2076b != null ? (c2076b.f15907d * m9384b) / c2076b.f15906c : m9384b;
        } else {
            if (c2104o2.m9390h() || (unit5 = c2104o2.f15974f) == unit2 || unit5 == unit3 || unit5 == unit4) {
                return new C2076b(-1.0f, -1.0f, -1.0f, -1.0f);
            }
            f2 = c2104o2.m9384b(f);
        }
        return new C2076b(0.0f, 0.0f, m9384b, f2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final AbstractC2095j0 m9351f(InterfaceC2091h0 interfaceC2091h0, String str) {
        AbstractC2095j0 m9351f;
        AbstractC2095j0 abstractC2095j0 = (AbstractC2095j0) interfaceC2091h0;
        if (str.equals(abstractC2095j0.f15953c)) {
            return abstractC2095j0;
        }
        for (Object obj : interfaceC2091h0.getChildren()) {
            if (obj instanceof AbstractC2095j0) {
                AbstractC2095j0 abstractC2095j02 = (AbstractC2095j0) obj;
                if (str.equals(abstractC2095j02.f15953c)) {
                    return abstractC2095j02;
                }
                if ((obj instanceof InterfaceC2091h0) && (m9351f = m9351f((InterfaceC2091h0) obj, str)) != null) {
                    return m9351f;
                }
            }
        }
        return null;
    }

    /* renamed from: g */
    public AbstractC2095j0 m9352g(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.equals(this.f15838a.f15953c)) {
            return this.f15838a;
        }
        if (this.f15843f.containsKey(str)) {
            return this.f15843f.get(str);
        }
        AbstractC2095j0 m9351f = m9351f(this.f15838a, str);
        this.f15843f.put(str, m9351f);
        return m9351f;
    }

    public float getDocumentAspectRatio() {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        C2104o c2104o = c2083d0.f15924s;
        C2104o c2104o2 = c2083d0.f15925t;
        if (c2104o != null && c2104o2 != null) {
            Unit unit = c2104o.f15974f;
            Unit unit2 = Unit.percent;
            if (unit != unit2 && c2104o2.f15974f != unit2) {
                if (c2104o.m9390h() || c2104o2.m9390h()) {
                    return -1.0f;
                }
                return c2104o.m9384b(this.f15841d) / c2104o2.m9384b(this.f15841d);
            }
        }
        C2076b c2076b = c2083d0.f15984p;
        if (c2076b != null) {
            float f = c2076b.f15906c;
            if (f != 0.0f) {
                float f2 = c2076b.f15907d;
                if (f2 != 0.0f) {
                    return f / f2;
                }
            }
        }
        return -1.0f;
    }

    public String getDocumentDescription() {
        if (this.f15838a != null) {
            return this.f15840c;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public float getDocumentHeight() {
        if (this.f15838a != null) {
            return m9350e(this.f15841d).f15907d;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public PreserveAspectRatio getDocumentPreserveAspectRatio() {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        PreserveAspectRatio preserveAspectRatio = c2083d0.f15972o;
        if (preserveAspectRatio == null) {
            return null;
        }
        return preserveAspectRatio;
    }

    public String getDocumentSVGVersion() {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 != null) {
            return c2083d0.f15926u;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public String getDocumentTitle() {
        if (this.f15838a != null) {
            return this.f15839b;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public RectF getDocumentViewBox() {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        C2076b c2076b = c2083d0.f15984p;
        if (c2076b == null) {
            return null;
        }
        return c2076b.m9369d();
    }

    public float getDocumentWidth() {
        if (this.f15838a != null) {
            return m9350e(this.f15841d).f15906c;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public float getRenderDPI() {
        return this.f15841d;
    }

    public Set<String> getViewList() {
        if (this.f15838a == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        List<C2099l0> m9353h = m9353h("view");
        HashSet hashSet = new HashSet(m9353h.size());
        Iterator<C2099l0> it2 = m9353h.iterator();
        while (it2.hasNext()) {
            String str = ((C2081c1) it2.next()).f15953c;
            if (str != null) {
                hashSet.add(str);
            } else {
                Log.w("AndroidSVG", "getViewList(): found a <view> without an id attribute");
            }
        }
        return hashSet;
    }

    /* renamed from: h */
    public final List<C2099l0> m9353h(String str) {
        ArrayList arrayList = new ArrayList();
        m9354i(arrayList, this.f15838a, str);
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: i */
    public final void m9354i(List<C2099l0> list, C2099l0 c2099l0, String str) {
        if (c2099l0.mo9363n().equals(str)) {
            list.add(c2099l0);
        }
        if (c2099l0 instanceof InterfaceC2091h0) {
            Iterator<C2099l0> it2 = ((InterfaceC2091h0) c2099l0).getChildren().iterator();
            while (it2.hasNext()) {
                m9354i(list, it2.next(), str);
            }
        }
    }

    /* renamed from: k */
    public C2083d0 m9355k() {
        return this.f15838a;
    }

    /* renamed from: l */
    public boolean m9356l() {
        return !this.f15842e.m9332d();
    }

    /* renamed from: m */
    public C2099l0 m9357m(String str) {
        if (str == null) {
            return null;
        }
        String m9348c = m9348c(str);
        if (m9348c.length() <= 1 || !m9348c.startsWith("#")) {
            return null;
        }
        return m9352g(m9348c.substring(1));
    }

    /* renamed from: n */
    public void m9358n(String str) {
        this.f15840c = str;
    }

    /* renamed from: o */
    public void m9359o(C2083d0 c2083d0) {
        this.f15838a = c2083d0;
    }

    /* renamed from: p */
    public void m9360p(String str) {
        this.f15839b = str;
    }

    public void renderToCanvas(Canvas canvas) {
        renderToCanvas(canvas, (RenderOptions) null);
    }

    public Picture renderToPicture() {
        return renderToPicture(null);
    }

    public void renderViewToCanvas(String str, Canvas canvas) {
        renderToCanvas(canvas, RenderOptions.create().view(str));
    }

    public Picture renderViewToPicture(String str, int i, int i2) {
        RenderOptions renderOptions = new RenderOptions();
        renderOptions.view(str).viewPort(0.0f, 0.0f, i, i2);
        Picture picture = new Picture();
        new C2139a(picture.beginRecording(i, i2), this.f15841d).m9596O0(this, renderOptions);
        picture.endRecording();
        return picture;
    }

    public void setDocumentHeight(float f) {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 != null) {
            c2083d0.f15925t = new C2104o(f);
            return;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public void setDocumentPreserveAspectRatio(PreserveAspectRatio preserveAspectRatio) {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        c2083d0.f15972o = preserveAspectRatio;
    }

    public void setDocumentViewBox(float f, float f2, float f3, float f4) {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 == null) {
            throw new IllegalArgumentException("SVG document is empty");
        }
        c2083d0.f15984p = new C2076b(f, f2, f3, f4);
    }

    public void setDocumentWidth(float f) {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 != null) {
            c2083d0.f15924s = new C2104o(f);
            return;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public void setRenderDPI(float f) {
        this.f15841d = f;
    }

    public static SVG getFromResource(Resources resources, int i) throws SVGParseException {
        SVGParser sVGParser = new SVGParser();
        InputStream openRawResource = resources.openRawResource(i);
        try {
            return sVGParser.m9454A(openRawResource, f15823l);
        } finally {
            try {
                openRawResource.close();
            } catch (IOException unused) {
            }
        }
    }

    public void renderToCanvas(Canvas canvas, RectF rectF) {
        RenderOptions renderOptions = new RenderOptions();
        if (rectF != null) {
            renderOptions.viewPort(rectF.left, rectF.top, rectF.width(), rectF.height());
        } else {
            renderOptions.viewPort(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        }
        new C2139a(canvas, this.f15841d).m9596O0(this, renderOptions);
    }

    public Picture renderToPicture(int i, int i2) {
        return renderToPicture(i, i2, null);
    }

    public void renderViewToCanvas(String str, Canvas canvas, RectF rectF) {
        RenderOptions view = RenderOptions.create().view(str);
        if (rectF != null) {
            view.viewPort(rectF.left, rectF.top, rectF.width(), rectF.height());
        }
        renderToCanvas(canvas, view);
    }

    /* renamed from: com.caverock.androidsvg.SVG$o */
    /* loaded from: classes3.dex */
    public static class C2104o implements Cloneable {

        /* renamed from: e */
        public float f15973e;

        /* renamed from: f */
        public Unit f15974f;

        public C2104o(float f, Unit unit) {
            this.f15973e = f;
            this.f15974f = unit;
        }

        /* renamed from: a */
        public float m9383a() {
            return this.f15973e;
        }

        /* renamed from: b */
        public float m9384b(float f) {
            int i = C2073a.f15895a[this.f15974f.ordinal()];
            if (i == 1) {
                return this.f15973e;
            }
            switch (i) {
                case 4:
                    return this.f15973e * f;
                case 5:
                    return (this.f15973e * f) / 2.54f;
                case 6:
                    return (this.f15973e * f) / 25.4f;
                case 7:
                    return (this.f15973e * f) / 72.0f;
                case 8:
                    return (this.f15973e * f) / 6.0f;
                default:
                    return this.f15973e;
            }
        }

        /* renamed from: c */
        public float m9385c(C2139a c2139a) {
            float sqrt;
            if (this.f15974f != Unit.percent) {
                return m9387e(c2139a);
            }
            C2076b m9619a0 = c2139a.m9619a0();
            if (m9619a0 == null) {
                return this.f15973e;
            }
            float f = m9619a0.f15906c;
            if (f == m9619a0.f15907d) {
                sqrt = this.f15973e * f;
            } else {
                sqrt = this.f15973e * ((float) (Math.sqrt((f * f) + (r6 * r6)) / 1.414213562373095d));
            }
            return sqrt / 100.0f;
        }

        /* renamed from: d */
        public float m9386d(C2139a c2139a, float f) {
            return this.f15974f == Unit.percent ? (this.f15973e * f) / 100.0f : m9387e(c2139a);
        }

        /* renamed from: e */
        public float m9387e(C2139a c2139a) {
            switch (C2073a.f15895a[this.f15974f.ordinal()]) {
                case 1:
                    return this.f15973e;
                case 2:
                    return this.f15973e * c2139a.m9615Y();
                case 3:
                    return this.f15973e * c2139a.m9617Z();
                case 4:
                    return this.f15973e * c2139a.m9621b0();
                case 5:
                    return (this.f15973e * c2139a.m9621b0()) / 2.54f;
                case 6:
                    return (this.f15973e * c2139a.m9621b0()) / 25.4f;
                case 7:
                    return (this.f15973e * c2139a.m9621b0()) / 72.0f;
                case 8:
                    return (this.f15973e * c2139a.m9621b0()) / 6.0f;
                case 9:
                    C2076b m9619a0 = c2139a.m9619a0();
                    return m9619a0 == null ? this.f15973e : (this.f15973e * m9619a0.f15906c) / 100.0f;
                default:
                    return this.f15973e;
            }
        }

        /* renamed from: f */
        public float m9388f(C2139a c2139a) {
            if (this.f15974f != Unit.percent) {
                return m9387e(c2139a);
            }
            C2076b m9619a0 = c2139a.m9619a0();
            return m9619a0 == null ? this.f15973e : (this.f15973e * m9619a0.f15907d) / 100.0f;
        }

        /* renamed from: g */
        public boolean m9389g() {
            return this.f15973e < 0.0f;
        }

        /* renamed from: h */
        public boolean m9390h() {
            return this.f15973e == 0.0f;
        }

        public String toString() {
            return String.valueOf(this.f15973e) + this.f15974f;
        }

        public C2104o(float f) {
            this.f15973e = f;
            this.f15974f = Unit.px;
        }
    }

    public Picture renderToPicture(RenderOptions renderOptions) {
        C2104o c2104o;
        C2076b c2076b = (renderOptions == null || !renderOptions.hasViewBox()) ? this.f15838a.f15984p : renderOptions.f15790d;
        if (renderOptions != null && renderOptions.hasViewPort()) {
            return renderToPicture((int) Math.ceil(renderOptions.f15792f.m9367b()), (int) Math.ceil(renderOptions.f15792f.m9368c()), renderOptions);
        }
        C2083d0 c2083d0 = this.f15838a;
        C2104o c2104o2 = c2083d0.f15924s;
        if (c2104o2 != null) {
            Unit unit = c2104o2.f15974f;
            Unit unit2 = Unit.percent;
            if (unit != unit2 && (c2104o = c2083d0.f15925t) != null && c2104o.f15974f != unit2) {
                return renderToPicture((int) Math.ceil(c2104o2.m9384b(this.f15841d)), (int) Math.ceil(this.f15838a.f15925t.m9384b(this.f15841d)), renderOptions);
            }
        }
        if (c2104o2 != null && c2076b != null) {
            return renderToPicture((int) Math.ceil(c2104o2.m9384b(this.f15841d)), (int) Math.ceil((c2076b.f15907d * r1) / c2076b.f15906c), renderOptions);
        }
        C2104o c2104o3 = c2083d0.f15925t;
        if (c2104o3 != null && c2076b != null) {
            return renderToPicture((int) Math.ceil((c2076b.f15906c * r1) / c2076b.f15907d), (int) Math.ceil(c2104o3.m9384b(this.f15841d)), renderOptions);
        }
        return renderToPicture(512, 512, renderOptions);
    }

    public void setDocumentHeight(String str) throws SVGParseException {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 != null) {
            c2083d0.f15925t = SVGParser.m9442p0(str);
            return;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    public void setDocumentWidth(String str) throws SVGParseException {
        C2083d0 c2083d0 = this.f15838a;
        if (c2083d0 != null) {
            c2083d0.f15924s = SVGParser.m9442p0(str);
            return;
        }
        throw new IllegalArgumentException("SVG document is empty");
    }

    /* renamed from: com.caverock.androidsvg.SVG$b */
    /* loaded from: classes3.dex */
    public static class C2076b {

        /* renamed from: a */
        public float f15904a;

        /* renamed from: b */
        public float f15905b;

        /* renamed from: c */
        public float f15906c;

        /* renamed from: d */
        public float f15907d;

        public C2076b(float f, float f2, float f3, float f4) {
            this.f15904a = f;
            this.f15905b = f2;
            this.f15906c = f3;
            this.f15907d = f4;
        }

        /* renamed from: a */
        public static C2076b m9366a(float f, float f2, float f3, float f4) {
            return new C2076b(f, f2, f3 - f, f4 - f2);
        }

        /* renamed from: b */
        public float m9367b() {
            return this.f15904a + this.f15906c;
        }

        /* renamed from: c */
        public float m9368c() {
            return this.f15905b + this.f15907d;
        }

        /* renamed from: d */
        public RectF m9369d() {
            return new RectF(this.f15904a, this.f15905b, m9367b(), m9368c());
        }

        /* renamed from: e */
        public void m9370e(C2076b c2076b) {
            float f = c2076b.f15904a;
            if (f < this.f15904a) {
                this.f15904a = f;
            }
            float f2 = c2076b.f15905b;
            if (f2 < this.f15905b) {
                this.f15905b = f2;
            }
            if (c2076b.m9367b() > m9367b()) {
                this.f15906c = c2076b.m9367b() - this.f15904a;
            }
            if (c2076b.m9368c() > m9368c()) {
                this.f15907d = c2076b.m9368c() - this.f15905b;
            }
        }

        public String toString() {
            return IteratorUtils.f104923a + this.f15904a + " " + this.f15905b + " " + this.f15906c + " " + this.f15907d + IteratorUtils.f104924b;
        }

        public C2076b(C2076b c2076b) {
            this.f15904a = c2076b.f15904a;
            this.f15905b = c2076b.f15905b;
            this.f15906c = c2076b.f15906c;
            this.f15907d = c2076b.f15907d;
        }
    }

    public void renderToCanvas(Canvas canvas, RenderOptions renderOptions) {
        if (renderOptions == null) {
            renderOptions = new RenderOptions();
        }
        if (!renderOptions.hasViewPort()) {
            renderOptions.viewPort(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
        }
        new C2139a(canvas, this.f15841d).m9596O0(this, renderOptions);
    }

    public Picture renderToPicture(int i, int i2, RenderOptions renderOptions) {
        Picture picture = new Picture();
        Canvas beginRecording = picture.beginRecording(i, i2);
        if (renderOptions == null || renderOptions.f15792f == null) {
            renderOptions = renderOptions == null ? new RenderOptions() : new RenderOptions(renderOptions);
            renderOptions.viewPort(0.0f, 0.0f, i, i2);
        }
        new C2139a(beginRecording, this.f15841d).m9596O0(this, renderOptions);
        picture.endRecording();
        return picture;
    }
}
