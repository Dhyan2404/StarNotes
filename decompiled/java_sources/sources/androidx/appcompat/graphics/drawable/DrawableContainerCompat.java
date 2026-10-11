package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.drawable.DrawableCompat;

/* loaded from: classes3.dex */
public class DrawableContainerCompat extends Drawable implements Drawable.Callback {

    /* renamed from: q */
    public static final boolean f897q = false;

    /* renamed from: r */
    public static final String f898r = "DrawableContainerCompat";

    /* renamed from: s */
    public static final boolean f899s = true;

    /* renamed from: e */
    public AbstractC0179d f900e;

    /* renamed from: f */
    public Rect f901f;

    /* renamed from: g */
    public Drawable f902g;

    /* renamed from: h */
    public Drawable f903h;

    /* renamed from: j */
    public boolean f905j;

    /* renamed from: l */
    public boolean f907l;

    /* renamed from: m */
    public Runnable f908m;

    /* renamed from: n */
    public long f909n;

    /* renamed from: o */
    public long f910o;

    /* renamed from: p */
    public C0178c f911p;

    /* renamed from: i */
    public int f904i = 255;

    /* renamed from: k */
    public int f906k = -1;

    /* renamed from: androidx.appcompat.graphics.drawable.DrawableContainerCompat$a */
    /* loaded from: classes3.dex */
    public class RunnableC0176a implements Runnable {
        public RunnableC0176a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DrawableContainerCompat.this.m498a(true);
            DrawableContainerCompat.this.invalidateSelf();
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.appcompat.graphics.drawable.DrawableContainerCompat$b */
    /* loaded from: classes3.dex */
    public static class C0177b {
        /* renamed from: a */
        public static boolean m505a(Drawable.ConstantState constantState) {
            return constantState.canApplyTheme();
        }

        /* renamed from: b */
        public static void m506b(Drawable drawable, Outline outline) {
            drawable.getOutline(outline);
        }

        /* renamed from: c */
        public static Resources m507c(Resources.Theme theme) {
            return theme.getResources();
        }
    }

    /* renamed from: androidx.appcompat.graphics.drawable.DrawableContainerCompat$c */
    /* loaded from: classes3.dex */
    public static class C0178c implements Drawable.Callback {

        /* renamed from: e */
        public Drawable.Callback f913e;

        /* renamed from: a */
        public Drawable.Callback m508a() {
            Drawable.Callback callback = this.f913e;
            this.f913e = null;
            return callback;
        }

        /* renamed from: b */
        public C0178c m509b(Drawable.Callback callback) {
            this.f913e = callback;
            return this;
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
            Drawable.Callback callback = this.f913e;
            if (callback != null) {
                callback.scheduleDrawable(drawable, runnable, j);
            }
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
            Drawable.Callback callback = this.f913e;
            if (callback != null) {
                callback.unscheduleDrawable(drawable, runnable);
            }
        }
    }

    /* renamed from: androidx.appcompat.graphics.drawable.DrawableContainerCompat$d */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC0179d extends Drawable.ConstantState {

        /* renamed from: A */
        public int f914A;

        /* renamed from: B */
        public int f915B;

        /* renamed from: C */
        public boolean f916C;

        /* renamed from: D */
        public ColorFilter f917D;

        /* renamed from: E */
        public boolean f918E;

        /* renamed from: F */
        public ColorStateList f919F;

        /* renamed from: G */
        public PorterDuff.Mode f920G;

        /* renamed from: H */
        public boolean f921H;

        /* renamed from: I */
        public boolean f922I;

        /* renamed from: a */
        public final DrawableContainerCompat f923a;

        /* renamed from: b */
        public Resources f924b;

        /* renamed from: c */
        public int f925c;

        /* renamed from: d */
        public int f926d;

        /* renamed from: e */
        public int f927e;

        /* renamed from: f */
        public SparseArray<Drawable.ConstantState> f928f;

        /* renamed from: g */
        public Drawable[] f929g;

        /* renamed from: h */
        public int f930h;

        /* renamed from: i */
        public boolean f931i;

        /* renamed from: j */
        public boolean f932j;

        /* renamed from: k */
        public Rect f933k;

        /* renamed from: l */
        public boolean f934l;

        /* renamed from: m */
        public boolean f935m;

        /* renamed from: n */
        public int f936n;

        /* renamed from: o */
        public int f937o;

        /* renamed from: p */
        public int f938p;

        /* renamed from: q */
        public int f939q;

        /* renamed from: r */
        public boolean f940r;

        /* renamed from: s */
        public int f941s;

        /* renamed from: t */
        public boolean f942t;

        /* renamed from: u */
        public boolean f943u;

        /* renamed from: v */
        public boolean f944v;

        /* renamed from: w */
        public boolean f945w;

        /* renamed from: x */
        public boolean f946x;

        /* renamed from: y */
        public boolean f947y;

        /* renamed from: z */
        public int f948z;

        public AbstractC0179d(AbstractC0179d abstractC0179d, DrawableContainerCompat drawableContainerCompat, Resources resources) {
            this.f931i = false;
            this.f934l = false;
            this.f946x = true;
            this.f914A = 0;
            this.f915B = 0;
            this.f923a = drawableContainerCompat;
            this.f924b = resources != null ? resources : abstractC0179d != null ? abstractC0179d.f924b : null;
            int m497g = DrawableContainerCompat.m497g(resources, abstractC0179d != null ? abstractC0179d.f925c : 0);
            this.f925c = m497g;
            if (abstractC0179d == null) {
                this.f929g = new Drawable[10];
                this.f930h = 0;
                return;
            }
            this.f926d = abstractC0179d.f926d;
            this.f927e = abstractC0179d.f927e;
            this.f944v = true;
            this.f945w = true;
            this.f931i = abstractC0179d.f931i;
            this.f934l = abstractC0179d.f934l;
            this.f946x = abstractC0179d.f946x;
            this.f947y = abstractC0179d.f947y;
            this.f948z = abstractC0179d.f948z;
            this.f914A = abstractC0179d.f914A;
            this.f915B = abstractC0179d.f915B;
            this.f916C = abstractC0179d.f916C;
            this.f917D = abstractC0179d.f917D;
            this.f918E = abstractC0179d.f918E;
            this.f919F = abstractC0179d.f919F;
            this.f920G = abstractC0179d.f920G;
            this.f921H = abstractC0179d.f921H;
            this.f922I = abstractC0179d.f922I;
            if (abstractC0179d.f925c == m497g) {
                if (abstractC0179d.f932j) {
                    this.f933k = abstractC0179d.f933k != null ? new Rect(abstractC0179d.f933k) : null;
                    this.f932j = true;
                }
                if (abstractC0179d.f935m) {
                    this.f936n = abstractC0179d.f936n;
                    this.f937o = abstractC0179d.f937o;
                    this.f938p = abstractC0179d.f938p;
                    this.f939q = abstractC0179d.f939q;
                    this.f935m = true;
                }
            }
            if (abstractC0179d.f940r) {
                this.f941s = abstractC0179d.f941s;
                this.f940r = true;
            }
            if (abstractC0179d.f942t) {
                this.f943u = abstractC0179d.f943u;
                this.f942t = true;
            }
            Drawable[] drawableArr = abstractC0179d.f929g;
            this.f929g = new Drawable[drawableArr.length];
            this.f930h = abstractC0179d.f930h;
            SparseArray<Drawable.ConstantState> sparseArray = abstractC0179d.f928f;
            if (sparseArray != null) {
                this.f928f = sparseArray.clone();
            } else {
                this.f928f = new SparseArray<>(this.f930h);
            }
            int i = this.f930h;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.f928f.put(i2, constantState);
                    } else {
                        this.f929g[i2] = drawableArr[i2];
                    }
                }
            }
        }

        /* renamed from: A */
        public final boolean m510A(int i, int i2) {
            int i3 = this.f930h;
            Drawable[] drawableArr = this.f929g;
            boolean z = false;
            for (int i4 = 0; i4 < i3; i4++) {
                Drawable drawable = drawableArr[i4];
                if (drawable != null) {
                    boolean layoutDirection = DrawableCompat.setLayoutDirection(drawable, i);
                    if (i4 == i2) {
                        z = layoutDirection;
                    }
                }
            }
            this.f948z = i;
            return z;
        }

        /* renamed from: B */
        public final void m511B(boolean z) {
            this.f931i = z;
        }

        /* renamed from: C */
        public final void m512C(Resources resources) {
            if (resources != null) {
                this.f924b = resources;
                int m497g = DrawableContainerCompat.m497g(resources, this.f925c);
                int i = this.f925c;
                this.f925c = m497g;
                if (i != m497g) {
                    this.f935m = false;
                    this.f932j = false;
                }
            }
        }

        /* renamed from: a */
        public final int m513a(Drawable drawable) {
            int i = this.f930h;
            if (i >= this.f929g.length) {
                mo530r(i, i + 10);
            }
            drawable.mutate();
            drawable.setVisible(false, true);
            drawable.setCallback(this.f923a);
            this.f929g[i] = drawable;
            this.f930h++;
            this.f927e = drawable.getChangingConfigurations() | this.f927e;
            m531s();
            this.f933k = null;
            this.f932j = false;
            this.f935m = false;
            this.f944v = false;
            return i;
        }

        @RequiresApi(21)
        /* renamed from: b */
        public final void m514b(Resources.Theme theme) {
            if (theme != null) {
                m518f();
                int i = this.f930h;
                Drawable[] drawableArr = this.f929g;
                for (int i2 = 0; i2 < i; i2++) {
                    Drawable drawable = drawableArr[i2];
                    if (drawable != null && DrawableCompat.canApplyTheme(drawable)) {
                        DrawableCompat.applyTheme(drawableArr[i2], theme);
                        this.f927e |= drawableArr[i2].getChangingConfigurations();
                    }
                }
                m512C(C0177b.m507c(theme));
            }
        }

        /* renamed from: c */
        public boolean m515c() {
            if (this.f944v) {
                return this.f945w;
            }
            m518f();
            this.f944v = true;
            int i = this.f930h;
            Drawable[] drawableArr = this.f929g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getConstantState() == null) {
                    this.f945w = false;
                    return false;
                }
            }
            this.f945w = true;
            return true;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @RequiresApi(21)
        public boolean canApplyTheme() {
            int i = this.f930h;
            Drawable[] drawableArr = this.f929g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable == null) {
                    Drawable.ConstantState constantState = this.f928f.get(i2);
                    if (constantState != null && C0177b.m505a(constantState)) {
                        return true;
                    }
                } else if (DrawableCompat.canApplyTheme(drawable)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        public final void m516d() {
            this.f947y = false;
        }

        /* renamed from: e */
        public void m517e() {
            this.f935m = true;
            m518f();
            int i = this.f930h;
            Drawable[] drawableArr = this.f929g;
            this.f937o = -1;
            this.f936n = -1;
            this.f939q = 0;
            this.f938p = 0;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                int intrinsicWidth = drawable.getIntrinsicWidth();
                if (intrinsicWidth > this.f936n) {
                    this.f936n = intrinsicWidth;
                }
                int intrinsicHeight = drawable.getIntrinsicHeight();
                if (intrinsicHeight > this.f937o) {
                    this.f937o = intrinsicHeight;
                }
                int minimumWidth = drawable.getMinimumWidth();
                if (minimumWidth > this.f938p) {
                    this.f938p = minimumWidth;
                }
                int minimumHeight = drawable.getMinimumHeight();
                if (minimumHeight > this.f939q) {
                    this.f939q = minimumHeight;
                }
            }
        }

        /* renamed from: f */
        public final void m518f() {
            SparseArray<Drawable.ConstantState> sparseArray = this.f928f;
            if (sparseArray != null) {
                int size = sparseArray.size();
                for (int i = 0; i < size; i++) {
                    this.f929g[this.f928f.keyAt(i)] = m534w(this.f928f.valueAt(i).newDrawable(this.f924b));
                }
                this.f928f = null;
            }
        }

        /* renamed from: g */
        public final int m519g() {
            return this.f929g.length;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return this.f927e | this.f926d;
        }

        /* renamed from: h */
        public final Drawable m520h(int i) {
            int indexOfKey;
            Drawable drawable = this.f929g[i];
            if (drawable != null) {
                return drawable;
            }
            SparseArray<Drawable.ConstantState> sparseArray = this.f928f;
            if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
                return null;
            }
            Drawable m534w = m534w(this.f928f.valueAt(indexOfKey).newDrawable(this.f924b));
            this.f929g[i] = m534w;
            this.f928f.removeAt(indexOfKey);
            if (this.f928f.size() == 0) {
                this.f928f = null;
            }
            return m534w;
        }

        /* renamed from: i */
        public final int m521i() {
            return this.f930h;
        }

        /* renamed from: j */
        public final int m522j() {
            if (!this.f935m) {
                m517e();
            }
            return this.f937o;
        }

        /* renamed from: k */
        public final int m523k() {
            if (!this.f935m) {
                m517e();
            }
            return this.f939q;
        }

        /* renamed from: l */
        public final int m524l() {
            if (!this.f935m) {
                m517e();
            }
            return this.f938p;
        }

        /* renamed from: m */
        public final Rect m525m() {
            Rect rect = null;
            if (this.f931i) {
                return null;
            }
            Rect rect2 = this.f933k;
            if (rect2 != null || this.f932j) {
                return rect2;
            }
            m518f();
            Rect rect3 = new Rect();
            int i = this.f930h;
            Drawable[] drawableArr = this.f929g;
            for (int i2 = 0; i2 < i; i2++) {
                if (drawableArr[i2].getPadding(rect3)) {
                    if (rect == null) {
                        rect = new Rect(0, 0, 0, 0);
                    }
                    int i3 = rect3.left;
                    if (i3 > rect.left) {
                        rect.left = i3;
                    }
                    int i4 = rect3.top;
                    if (i4 > rect.top) {
                        rect.top = i4;
                    }
                    int i5 = rect3.right;
                    if (i5 > rect.right) {
                        rect.right = i5;
                    }
                    int i6 = rect3.bottom;
                    if (i6 > rect.bottom) {
                        rect.bottom = i6;
                    }
                }
            }
            this.f932j = true;
            this.f933k = rect;
            return rect;
        }

        /* renamed from: n */
        public final int m526n() {
            if (!this.f935m) {
                m517e();
            }
            return this.f936n;
        }

        /* renamed from: o */
        public final int m527o() {
            return this.f914A;
        }

        /* renamed from: p */
        public final int m528p() {
            return this.f915B;
        }

        /* renamed from: q */
        public final int m529q() {
            if (this.f940r) {
                return this.f941s;
            }
            m518f();
            int i = this.f930h;
            Drawable[] drawableArr = this.f929g;
            int opacity = i > 0 ? drawableArr[0].getOpacity() : -2;
            for (int i2 = 1; i2 < i; i2++) {
                opacity = Drawable.resolveOpacity(opacity, drawableArr[i2].getOpacity());
            }
            this.f941s = opacity;
            this.f940r = true;
            return opacity;
        }

        /* renamed from: r */
        public void mo530r(int i, int i2) {
            Drawable[] drawableArr = new Drawable[i2];
            Drawable[] drawableArr2 = this.f929g;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
            }
            this.f929g = drawableArr;
        }

        /* renamed from: s */
        public void m531s() {
            this.f940r = false;
            this.f942t = false;
        }

        /* renamed from: t */
        public final boolean m532t() {
            return this.f934l;
        }

        /* renamed from: u */
        public final boolean m533u() {
            if (this.f942t) {
                return this.f943u;
            }
            m518f();
            int i = this.f930h;
            Drawable[] drawableArr = this.f929g;
            boolean z = false;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                }
                if (drawableArr[i2].isStateful()) {
                    z = true;
                    break;
                }
                i2++;
            }
            this.f943u = z;
            this.f942t = true;
            return z;
        }

        /* renamed from: v */
        public void mo492v() {
            int i = this.f930h;
            Drawable[] drawableArr = this.f929g;
            for (int i2 = 0; i2 < i; i2++) {
                Drawable drawable = drawableArr[i2];
                if (drawable != null) {
                    drawable.mutate();
                }
            }
            this.f947y = true;
        }

        /* renamed from: w */
        public final Drawable m534w(Drawable drawable) {
            DrawableCompat.setLayoutDirection(drawable, this.f948z);
            Drawable mutate = drawable.mutate();
            mutate.setCallback(this.f923a);
            return mutate;
        }

        /* renamed from: x */
        public final void m535x(boolean z) {
            this.f934l = z;
        }

        /* renamed from: y */
        public final void m536y(int i) {
            this.f914A = i;
        }

        /* renamed from: z */
        public final void m537z(int i) {
            this.f915B = i;
        }
    }

    /* renamed from: g */
    public static int m497g(@Nullable Resources resources, int i) {
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
        }
        if (i == 0) {
            return 160;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0066 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0061  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m498a(boolean r14) {
        /*
            r13 = this;
            r0 = 1
            r13.f905j = r0
            long r1 = android.os.SystemClock.uptimeMillis()
            android.graphics.drawable.Drawable r3 = r13.f902g
            r4 = 255(0xff, double:1.26E-321)
            r6 = 0
            r8 = 0
            if (r3 == 0) goto L36
            long r9 = r13.f909n
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 == 0) goto L38
            int r11 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r11 > 0) goto L22
            int r9 = r13.f904i
            r3.setAlpha(r9)
            r13.f909n = r6
            goto L38
        L22:
            long r9 = r9 - r1
            long r9 = r9 * r4
            int r9 = (int) r9
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$d r10 = r13.f900e
            int r10 = r10.f914A
            int r9 = r9 / r10
            int r9 = 255 - r9
            int r10 = r13.f904i
            int r9 = r9 * r10
            int r9 = r9 / 255
            r3.setAlpha(r9)
            r3 = r0
            goto L39
        L36:
            r13.f909n = r6
        L38:
            r3 = r8
        L39:
            android.graphics.drawable.Drawable r9 = r13.f903h
            if (r9 == 0) goto L61
            long r10 = r13.f910o
            int r12 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r12 == 0) goto L63
            int r12 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r12 > 0) goto L50
            r9.setVisible(r8, r8)
            r0 = 0
            r13.f903h = r0
            r13.f910o = r6
            goto L63
        L50:
            long r10 = r10 - r1
            long r10 = r10 * r4
            int r3 = (int) r10
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$d r4 = r13.f900e
            int r4 = r4.f915B
            int r3 = r3 / r4
            int r4 = r13.f904i
            int r3 = r3 * r4
            int r3 = r3 / 255
            r9.setAlpha(r3)
            goto L64
        L61:
            r13.f910o = r6
        L63:
            r0 = r3
        L64:
            if (r14 == 0) goto L70
            if (r0 == 0) goto L70
            java.lang.Runnable r14 = r13.f908m
            r3 = 16
            long r1 = r1 + r3
            r13.scheduleSelf(r14, r1)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainerCompat.m498a(boolean):void");
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void applyTheme(@NonNull Resources.Theme theme) {
        this.f900e.m514b(theme);
    }

    /* renamed from: b */
    public void mo473b() {
        this.f900e.m516d();
        this.f907l = false;
    }

    /* renamed from: c */
    public AbstractC0179d mo474c() {
        return this.f900e;
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public boolean canApplyTheme() {
        return this.f900e.canApplyTheme();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public int m499d() {
        return this.f906k;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable = this.f902g;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.f903h;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
    }

    /* renamed from: e */
    public final void m500e(Drawable drawable) {
        if (this.f911p == null) {
            this.f911p = new C0178c();
        }
        drawable.setCallback(this.f911p.m509b(drawable.getCallback()));
        try {
            if (this.f900e.f914A <= 0 && this.f905j) {
                drawable.setAlpha(this.f904i);
            }
            AbstractC0179d abstractC0179d = this.f900e;
            if (abstractC0179d.f918E) {
                drawable.setColorFilter(abstractC0179d.f917D);
            } else {
                if (abstractC0179d.f921H) {
                    DrawableCompat.setTintList(drawable, abstractC0179d.f919F);
                }
                AbstractC0179d abstractC0179d2 = this.f900e;
                if (abstractC0179d2.f922I) {
                    DrawableCompat.setTintMode(drawable, abstractC0179d2.f920G);
                }
            }
            drawable.setVisible(isVisible(), true);
            drawable.setDither(this.f900e.f946x);
            drawable.setState(getState());
            drawable.setLevel(getLevel());
            drawable.setBounds(getBounds());
            DrawableCompat.setLayoutDirection(drawable, DrawableCompat.getLayoutDirection(this));
            DrawableCompat.setAutoMirrored(drawable, this.f900e.f916C);
            Rect rect = this.f901f;
            if (rect != null) {
                DrawableCompat.setHotspotBounds(drawable, rect.left, rect.top, rect.right, rect.bottom);
            }
        } finally {
            drawable.setCallback(this.f911p.m508a());
        }
    }

    /* renamed from: f */
    public final boolean m501f() {
        return isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f904i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f900e.getChangingConfigurations() | super.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!this.f900e.m515c()) {
            return null;
        }
        this.f900e.f926d = getChangingConfigurations();
        return this.f900e;
    }

    @Override // android.graphics.drawable.Drawable
    @NonNull
    public Drawable getCurrent() {
        return this.f902g;
    }

    @Override // android.graphics.drawable.Drawable
    public void getHotspotBounds(@NonNull Rect rect) {
        Rect rect2 = this.f901f;
        if (rect2 != null) {
            rect.set(rect2);
        } else {
            super.getHotspotBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.f900e.m532t()) {
            return this.f900e.m522j();
        }
        Drawable drawable = this.f902g;
        if (drawable != null) {
            return drawable.getIntrinsicHeight();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.f900e.m532t()) {
            return this.f900e.m526n();
        }
        Drawable drawable = this.f902g;
        if (drawable != null) {
            return drawable.getIntrinsicWidth();
        }
        return -1;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        if (this.f900e.m532t()) {
            return this.f900e.m523k();
        }
        Drawable drawable = this.f902g;
        if (drawable != null) {
            return drawable.getMinimumHeight();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        if (this.f900e.m532t()) {
            return this.f900e.m524l();
        }
        Drawable drawable = this.f902g;
        if (drawable != null) {
            return drawable.getMinimumWidth();
        }
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        Drawable drawable = this.f902g;
        if (drawable == null || !drawable.isVisible()) {
            return -2;
        }
        return this.f900e.m529q();
    }

    @Override // android.graphics.drawable.Drawable
    @RequiresApi(21)
    public void getOutline(@NonNull Outline outline) {
        Drawable drawable = this.f902g;
        if (drawable != null) {
            C0177b.m506b(drawable, outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NonNull Rect rect) {
        boolean padding;
        Rect m525m = this.f900e.m525m();
        if (m525m != null) {
            rect.set(m525m);
            padding = (m525m.right | ((m525m.left | m525m.top) | m525m.bottom)) != 0;
        } else {
            Drawable drawable = this.f902g;
            padding = drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
        }
        if (m501f()) {
            int i = rect.left;
            rect.left = rect.right;
            rect.right = i;
        }
        return padding;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0073  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m502h(int r10) {
        /*
            r9 = this;
            int r0 = r9.f906k
            r1 = 0
            if (r10 != r0) goto L6
            return r1
        L6:
            long r2 = android.os.SystemClock.uptimeMillis()
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$d r0 = r9.f900e
            int r0 = r0.f915B
            r4 = 0
            r5 = 0
            if (r0 <= 0) goto L2e
            android.graphics.drawable.Drawable r0 = r9.f903h
            if (r0 == 0) goto L1a
            r0.setVisible(r1, r1)
        L1a:
            android.graphics.drawable.Drawable r0 = r9.f902g
            if (r0 == 0) goto L29
            r9.f903h = r0
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$d r0 = r9.f900e
            int r0 = r0.f915B
            long r0 = (long) r0
            long r0 = r0 + r2
            r9.f910o = r0
            goto L35
        L29:
            r9.f903h = r4
            r9.f910o = r5
            goto L35
        L2e:
            android.graphics.drawable.Drawable r0 = r9.f902g
            if (r0 == 0) goto L35
            r0.setVisible(r1, r1)
        L35:
            if (r10 < 0) goto L55
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$d r0 = r9.f900e
            int r1 = r0.f930h
            if (r10 >= r1) goto L55
            android.graphics.drawable.Drawable r0 = r0.m520h(r10)
            r9.f902g = r0
            r9.f906k = r10
            if (r0 == 0) goto L5a
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$d r10 = r9.f900e
            int r10 = r10.f914A
            if (r10 <= 0) goto L51
            long r7 = (long) r10
            long r2 = r2 + r7
            r9.f909n = r2
        L51:
            r9.m500e(r0)
            goto L5a
        L55:
            r9.f902g = r4
            r10 = -1
            r9.f906k = r10
        L5a:
            long r0 = r9.f909n
            int r10 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            r0 = 1
            if (r10 != 0) goto L67
            long r1 = r9.f910o
            int r10 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r10 == 0) goto L79
        L67:
            java.lang.Runnable r10 = r9.f908m
            if (r10 != 0) goto L73
            androidx.appcompat.graphics.drawable.DrawableContainerCompat$a r10 = new androidx.appcompat.graphics.drawable.DrawableContainerCompat$a
            r10.<init>()
            r9.f908m = r10
            goto L76
        L73:
            r9.unscheduleSelf(r10)
        L76:
            r9.m498a(r0)
        L79:
            r9.invalidateSelf()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.graphics.drawable.DrawableContainerCompat.m502h(int):boolean");
    }

    /* renamed from: i */
    public void mo475i(AbstractC0179d abstractC0179d) {
        this.f900e = abstractC0179d;
        int i = this.f906k;
        if (i >= 0) {
            Drawable m520h = abstractC0179d.m520h(i);
            this.f902g = m520h;
            if (m520h != null) {
                m500e(m520h);
            }
        }
        this.f903h = null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        AbstractC0179d abstractC0179d = this.f900e;
        if (abstractC0179d != null) {
            abstractC0179d.m531s();
        }
        if (drawable != this.f902g || getCallback() == null) {
            return;
        }
        getCallback().invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f900e.f916C;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f900e.m533u();
    }

    /* renamed from: j */
    public void m503j(int i) {
        m502h(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        boolean z;
        Drawable drawable = this.f903h;
        boolean z2 = true;
        if (drawable != null) {
            drawable.jumpToCurrentState();
            this.f903h = null;
            z = true;
        } else {
            z = false;
        }
        Drawable drawable2 = this.f902g;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
            if (this.f905j) {
                this.f902g.setAlpha(this.f904i);
            }
        }
        if (this.f910o != 0) {
            this.f910o = 0L;
            z = true;
        }
        if (this.f909n != 0) {
            this.f909n = 0L;
        } else {
            z2 = z;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    /* renamed from: k */
    public final void m504k(Resources resources) {
        this.f900e.m512C(resources);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f907l && super.mutate() == this) {
            AbstractC0179d mo474c = mo474c();
            mo474c.mo492v();
            mo475i(mo474c);
            this.f907l = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        Drawable drawable = this.f903h;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
        Drawable drawable2 = this.f902g;
        if (drawable2 != null) {
            drawable2.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return this.f900e.m510A(i, m499d());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        Drawable drawable = this.f903h;
        if (drawable != null) {
            return drawable.setLevel(i);
        }
        Drawable drawable2 = this.f902g;
        if (drawable2 != null) {
            return drawable2.setLevel(i);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(@NonNull int[] iArr) {
        Drawable drawable = this.f903h;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        Drawable drawable2 = this.f902g;
        if (drawable2 != null) {
            return drawable2.setState(iArr);
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        if (drawable != this.f902g || getCallback() == null) {
            return;
        }
        getCallback().scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f905j && this.f904i == i) {
            return;
        }
        this.f905j = true;
        this.f904i = i;
        Drawable drawable = this.f902g;
        if (drawable != null) {
            if (this.f909n == 0) {
                drawable.setAlpha(i);
            } else {
                m498a(false);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        AbstractC0179d abstractC0179d = this.f900e;
        if (abstractC0179d.f916C != z) {
            abstractC0179d.f916C = z;
            Drawable drawable = this.f902g;
            if (drawable != null) {
                DrawableCompat.setAutoMirrored(drawable, z);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        AbstractC0179d abstractC0179d = this.f900e;
        abstractC0179d.f918E = true;
        if (abstractC0179d.f917D != colorFilter) {
            abstractC0179d.f917D = colorFilter;
            Drawable drawable = this.f902g;
            if (drawable != null) {
                drawable.setColorFilter(colorFilter);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        AbstractC0179d abstractC0179d = this.f900e;
        if (abstractC0179d.f946x != z) {
            abstractC0179d.f946x = z;
            Drawable drawable = this.f902g;
            if (drawable != null) {
                drawable.setDither(z);
            }
        }
    }

    public void setEnterFadeDuration(int i) {
        this.f900e.f914A = i;
    }

    public void setExitFadeDuration(int i) {
        this.f900e.f915B = i;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        Drawable drawable = this.f902g;
        if (drawable != null) {
            DrawableCompat.setHotspot(drawable, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        Rect rect = this.f901f;
        if (rect == null) {
            this.f901f = new Rect(i, i2, i3, i4);
        } else {
            rect.set(i, i2, i3, i4);
        }
        Drawable drawable = this.f902g;
        if (drawable != null) {
            DrawableCompat.setHotspotBounds(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(@ColorInt int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        AbstractC0179d abstractC0179d = this.f900e;
        abstractC0179d.f921H = true;
        if (abstractC0179d.f919F != colorStateList) {
            abstractC0179d.f919F = colorStateList;
            DrawableCompat.setTintList(this.f902g, colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(@NonNull PorterDuff.Mode mode) {
        AbstractC0179d abstractC0179d = this.f900e;
        abstractC0179d.f922I = true;
        if (abstractC0179d.f920G != mode) {
            abstractC0179d.f920G = mode;
            DrawableCompat.setTintMode(this.f902g, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        Drawable drawable = this.f903h;
        if (drawable != null) {
            drawable.setVisible(z, z2);
        }
        Drawable drawable2 = this.f902g;
        if (drawable2 != null) {
            drawable2.setVisible(z, z2);
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        if (drawable != this.f902g || getCallback() == null) {
            return;
        }
        getCallback().unscheduleDrawable(this, runnable);
    }
}
