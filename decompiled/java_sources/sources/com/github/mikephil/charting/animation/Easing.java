package com.github.mikephil.charting.animation;

/* loaded from: classes4.dex */
public class Easing {

    /* loaded from: classes4.dex */
    public enum EasingOption {
        Linear,
        EaseInQuad,
        EaseOutQuad,
        EaseInOutQuad,
        EaseInCubic,
        EaseOutCubic,
        EaseInOutCubic,
        EaseInQuart,
        EaseOutQuart,
        EaseInOutQuart,
        EaseInSine,
        EaseOutSine,
        EaseInOutSine,
        EaseInExpo,
        EaseOutExpo,
        EaseInOutExpo,
        EaseInCirc,
        EaseOutCirc,
        EaseInOutCirc,
        EaseInElastic,
        EaseOutElastic,
        EaseInOutElastic,
        EaseInBack,
        EaseOutBack,
        EaseInOutBack,
        EaseInBounce,
        EaseOutBounce,
        EaseInOutBounce
    }

    /* renamed from: com.github.mikephil.charting.animation.Easing$a */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C4584a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21438a;

        static {
            int[] iArr = new int[EasingOption.values().length];
            f21438a = iArr;
            try {
                iArr[EasingOption.Linear.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f21438a[EasingOption.EaseInQuad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f21438a[EasingOption.EaseOutQuad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f21438a[EasingOption.EaseInOutQuad.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f21438a[EasingOption.EaseInCubic.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f21438a[EasingOption.EaseOutCubic.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f21438a[EasingOption.EaseInOutCubic.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f21438a[EasingOption.EaseInQuart.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f21438a[EasingOption.EaseOutQuart.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f21438a[EasingOption.EaseInOutQuart.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f21438a[EasingOption.EaseInSine.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f21438a[EasingOption.EaseOutSine.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f21438a[EasingOption.EaseInOutSine.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f21438a[EasingOption.EaseInExpo.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f21438a[EasingOption.EaseOutExpo.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f21438a[EasingOption.EaseInOutExpo.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f21438a[EasingOption.EaseInCirc.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f21438a[EasingOption.EaseOutCirc.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f21438a[EasingOption.EaseInOutCirc.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f21438a[EasingOption.EaseInElastic.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f21438a[EasingOption.EaseOutElastic.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f21438a[EasingOption.EaseInOutElastic.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f21438a[EasingOption.EaseInBack.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f21438a[EasingOption.EaseOutBack.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f21438a[EasingOption.EaseInOutBack.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f21438a[EasingOption.EaseInBounce.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f21438a[EasingOption.EaseOutBounce.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f21438a[EasingOption.EaseInOutBounce.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
        }
    }

    /* renamed from: com.github.mikephil.charting.animation.Easing$b */
    /* loaded from: classes4.dex */
    public static class C4585b {

        /* renamed from: a */
        public static final EasingFunction f21441a = new k();

        /* renamed from: b */
        public static final EasingFunction f21442b = new u();

        /* renamed from: c */
        public static final EasingFunction f21443c = new v();

        /* renamed from: d */
        public static final EasingFunction f21444d = new w();

        /* renamed from: e */
        public static final EasingFunction f21445e = new x();

        /* renamed from: f */
        public static final EasingFunction f21446f = new y();

        /* renamed from: g */
        public static final EasingFunction f21447g = new z();

        /* renamed from: h */
        public static final EasingFunction f21448h = new a0();

        /* renamed from: i */
        public static final EasingFunction f21449i = new b0();

        /* renamed from: j */
        public static final EasingFunction f21450j = new a();

        /* renamed from: k */
        public static final EasingFunction f21451k = new b();

        /* renamed from: l */
        public static final EasingFunction f21452l = new c();

        /* renamed from: m */
        public static final EasingFunction f21453m = new d();

        /* renamed from: n */
        public static final EasingFunction f21454n = new e();

        /* renamed from: o */
        public static final EasingFunction f21455o = new f();

        /* renamed from: p */
        public static final EasingFunction f21456p = new g();

        /* renamed from: q */
        public static final EasingFunction f21457q = new h();

        /* renamed from: r */
        public static final EasingFunction f21458r = new i();

        /* renamed from: s */
        public static final EasingFunction f21459s = new j();

        /* renamed from: t */
        public static final EasingFunction f21460t = new l();

        /* renamed from: u */
        public static final EasingFunction f21461u = new m();

        /* renamed from: v */
        public static final EasingFunction f21462v = new n();

        /* renamed from: w */
        public static final EasingFunction f21463w = new o();

        /* renamed from: x */
        public static final EasingFunction f21464x = new p();

        /* renamed from: y */
        public static final EasingFunction f21465y = new q();

        /* renamed from: z */
        public static final EasingFunction f21466z = new r();

        /* renamed from: A */
        public static final EasingFunction f21439A = new s();

        /* renamed from: B */
        public static final EasingFunction f21440B = new t();

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$a */
        /* loaded from: classes4.dex */
        public static class a implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return 0.5f * f2 * f2 * f2 * f2;
                }
                float f3 = f2 - 2.0f;
                return ((((f3 * f3) * f3) * f3) - 2.0f) * (-0.5f);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$a0 */
        /* loaded from: classes4.dex */
        public static class a0 implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * f * f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$b */
        /* loaded from: classes4.dex */
        public static class b implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (-((float) Math.cos(f * 1.5707963267948966d))) + 1.0f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$b0 */
        /* loaded from: classes4.dex */
        public static class b0 implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return -((((f2 * f2) * f2) * f2) - 1.0f);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$c */
        /* loaded from: classes4.dex */
        public static class c implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (float) Math.sin(f * 1.5707963267948966d);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$d */
        /* loaded from: classes4.dex */
        public static class d implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (((float) Math.cos(f * 3.141592653589793d)) - 1.0f) * (-0.5f);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$e */
        /* loaded from: classes4.dex */
        public static class e implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                return (float) Math.pow(2.0d, (f - 1.0f) * 10.0f);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$f */
        /* loaded from: classes4.dex */
        public static class f implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 1.0f) {
                    return 1.0f;
                }
                return -((float) Math.pow(2.0d, (f + 1.0f) * (-10.0f)));
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$g */
        /* loaded from: classes4.dex */
        public static class g implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                if (f == 1.0f) {
                    return 1.0f;
                }
                return (f / 0.5f < 1.0f ? (float) Math.pow(2.0d, (r5 - 1.0f) * 10.0f) : (-((float) Math.pow(2.0d, (r5 - 1.0f) * (-10.0f)))) + 2.0f) * 0.5f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$h */
        /* loaded from: classes4.dex */
        public static class h implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return -(((float) Math.sqrt(1.0f - (f * f))) - 1.0f);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$i */
        /* loaded from: classes4.dex */
        public static class i implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (float) Math.sqrt(1.0f - (f2 * f2));
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$j */
        /* loaded from: classes4.dex */
        public static class j implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return (((float) Math.sqrt(1.0f - (f2 * f2))) - 1.0f) * (-0.5f);
                }
                float f3 = f2 - 2.0f;
                return (((float) Math.sqrt(1.0f - (f3 * f3))) + 1.0f) * 0.5f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$k */
        /* loaded from: classes4.dex */
        public static class k implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$l */
        /* loaded from: classes4.dex */
        public static class l implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                if (f == 1.0f) {
                    return 1.0f;
                }
                float f2 = f - 1.0f;
                return -(((float) Math.pow(2.0d, 10.0f * f2)) * ((float) Math.sin(((f2 - (0.047746483f * ((float) Math.asin(1.0d)))) * 6.283185307179586d) / 0.3f)));
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$m */
        /* loaded from: classes4.dex */
        public static class m implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                if (f == 1.0f) {
                    return 1.0f;
                }
                return (((float) Math.pow(2.0d, (-10.0f) * f)) * ((float) Math.sin(((f - (0.047746483f * ((float) Math.asin(1.0d)))) * 6.283185307179586d) / 0.3f))) + 1.0f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$n */
        /* loaded from: classes4.dex */
        public static class n implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f == 0.0f) {
                    return 0.0f;
                }
                float f2 = f / 0.5f;
                if (f2 == 2.0f) {
                    return 1.0f;
                }
                float asin = 0.07161973f * ((float) Math.asin(1.0d));
                if (f2 < 1.0f) {
                    float f3 = f2 - 1.0f;
                    return ((float) Math.pow(2.0d, 10.0f * f3)) * ((float) Math.sin((((f3 * 1.0f) - asin) * 6.283185307179586d) / 0.45000002f)) * (-0.5f);
                }
                float f4 = f2 - 1.0f;
                return (((float) Math.pow(2.0d, (-10.0f) * f4)) * ((float) Math.sin((((f4 * 1.0f) - asin) * 6.283185307179586d) / 0.45000002f)) * 0.5f) + 1.0f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$o */
        /* loaded from: classes4.dex */
        public static class o implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * ((f * 2.70158f) - 1.70158f);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$p */
        /* loaded from: classes4.dex */
        public static class p implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * ((f2 * 2.70158f) + 1.70158f)) + 1.0f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$q */
        /* loaded from: classes4.dex */
        public static class q implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return f2 * f2 * ((3.5949094f * f2) - 2.5949094f) * 0.5f;
                }
                float f3 = f2 - 2.0f;
                return ((f3 * f3 * ((3.5949094f * f3) + 2.5949094f)) + 2.0f) * 0.5f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$r */
        /* loaded from: classes4.dex */
        public static class r implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return 1.0f - C4585b.f21439A.getInterpolation(1.0f - f);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$s */
        /* loaded from: classes4.dex */
        public static class s implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                if (f < 0.36363637f) {
                    return 7.5625f * f * f;
                }
                if (f < 0.72727275f) {
                    float f2 = f - 0.54545456f;
                    return (7.5625f * f2 * f2) + 0.75f;
                }
                if (f < 0.90909094f) {
                    float f3 = f - 0.8181818f;
                    return (7.5625f * f3 * f3) + 0.9375f;
                }
                float f4 = f - 0.95454544f;
                return (7.5625f * f4 * f4) + 0.984375f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$t */
        /* loaded from: classes4.dex */
        public static class t implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f < 0.5f ? C4585b.f21466z.getInterpolation(f * 2.0f) * 0.5f : (C4585b.f21439A.getInterpolation((f * 2.0f) - 1.0f) * 0.5f) + 0.5f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$u */
        /* loaded from: classes4.dex */
        public static class u implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$v */
        /* loaded from: classes4.dex */
        public static class v implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return (-f) * (f - 2.0f);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$w */
        /* loaded from: classes4.dex */
        public static class w implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return 0.5f * f2 * f2;
                }
                float f3 = f2 - 1.0f;
                return ((f3 * (f3 - 2.0f)) - 1.0f) * (-0.5f);
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$x */
        /* loaded from: classes4.dex */
        public static class x implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return f * f * f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$y */
        /* loaded from: classes4.dex */
        public static class y implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f - 1.0f;
                return (f2 * f2 * f2) + 1.0f;
            }
        }

        /* renamed from: com.github.mikephil.charting.animation.Easing$b$z */
        /* loaded from: classes4.dex */
        public static class z implements EasingFunction {
            @Override // com.github.mikephil.charting.animation.EasingFunction, android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                float f2 = f / 0.5f;
                if (f2 < 1.0f) {
                    return 0.5f * f2 * f2 * f2;
                }
                float f3 = f2 - 2.0f;
                return ((f3 * f3 * f3) + 2.0f) * 0.5f;
            }
        }
    }

    public static EasingFunction getEasingFunctionFromOption(EasingOption easingOption) {
        switch (C4584a.f21438a[easingOption.ordinal()]) {
            case 2:
                return C4585b.f21442b;
            case 3:
                return C4585b.f21443c;
            case 4:
                return C4585b.f21444d;
            case 5:
                return C4585b.f21445e;
            case 6:
                return C4585b.f21446f;
            case 7:
                return C4585b.f21447g;
            case 8:
                return C4585b.f21448h;
            case 9:
                return C4585b.f21449i;
            case 10:
                return C4585b.f21450j;
            case 11:
                return C4585b.f21451k;
            case 12:
                return C4585b.f21452l;
            case 13:
                return C4585b.f21453m;
            case 14:
                return C4585b.f21454n;
            case 15:
                return C4585b.f21455o;
            case 16:
                return C4585b.f21456p;
            case 17:
                return C4585b.f21457q;
            case 18:
                return C4585b.f21458r;
            case 19:
                return C4585b.f21459s;
            case 20:
                return C4585b.f21460t;
            case 21:
                return C4585b.f21461u;
            case 22:
                return C4585b.f21462v;
            case 23:
                return C4585b.f21463w;
            case 24:
                return C4585b.f21464x;
            case 25:
                return C4585b.f21465y;
            case 26:
                return C4585b.f21466z;
            case 27:
                return C4585b.f21439A;
            case 28:
                return C4585b.f21440B;
            default:
                return C4585b.f21441a;
        }
    }
}
