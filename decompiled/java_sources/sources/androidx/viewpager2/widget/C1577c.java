package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.sunia.HTREnginev2.C14645xa;
import java.util.Locale;

/* renamed from: androidx.viewpager2.widget.c */
/* loaded from: classes3.dex */
public final class C1577c extends RecyclerView.OnScrollListener {

    /* renamed from: n */
    public static final int f11184n = 0;

    /* renamed from: o */
    public static final int f11185o = 1;

    /* renamed from: p */
    public static final int f11186p = 2;

    /* renamed from: q */
    public static final int f11187q = 3;

    /* renamed from: r */
    public static final int f11188r = 4;

    /* renamed from: s */
    public static final int f11189s = -1;

    /* renamed from: a */
    public ViewPager2.OnPageChangeCallback f11190a;

    /* renamed from: b */
    @NonNull
    public final ViewPager2 f11191b;

    /* renamed from: c */
    @NonNull
    public final RecyclerView f11192c;

    /* renamed from: d */
    @NonNull
    public final LinearLayoutManager f11193d;

    /* renamed from: e */
    public int f11194e;

    /* renamed from: f */
    public int f11195f;

    /* renamed from: g */
    public a f11196g;

    /* renamed from: h */
    public int f11197h;

    /* renamed from: i */
    public int f11198i;

    /* renamed from: j */
    public boolean f11199j;

    /* renamed from: k */
    public boolean f11200k;

    /* renamed from: l */
    public boolean f11201l;

    /* renamed from: m */
    public boolean f11202m;

    /* renamed from: androidx.viewpager2.widget.c$a */
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a */
        public int f11203a;

        /* renamed from: b */
        public float f11204b;

        /* renamed from: c */
        public int f11205c;

        /* renamed from: a */
        public void m6887a() {
            this.f11203a = -1;
            this.f11204b = 0.0f;
            this.f11205c = 0;
        }
    }

    public C1577c(@NonNull ViewPager2 viewPager2) {
        this.f11191b = viewPager2;
        RecyclerView recyclerView = viewPager2.f11152n;
        this.f11192c = recyclerView;
        this.f11193d = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.f11196g = new a();
        m6883o();
    }

    /* renamed from: a */
    public final void m6869a(int i, float f, int i2) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f11190a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(i, f, i2);
        }
    }

    /* renamed from: b */
    public final void m6870b(int i) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f11190a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(i);
        }
    }

    /* renamed from: c */
    public final void m6871c(int i) {
        if ((this.f11194e == 3 && this.f11195f == 0) || this.f11195f == i) {
            return;
        }
        this.f11195f = i;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f11190a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(i);
        }
    }

    /* renamed from: d */
    public final int m6872d() {
        return this.f11193d.findFirstVisibleItemPosition();
    }

    /* renamed from: e */
    public double m6873e() {
        m6886r();
        a aVar = this.f11196g;
        return aVar.f11203a + aVar.f11204b;
    }

    /* renamed from: f */
    public int m6874f() {
        return this.f11195f;
    }

    /* renamed from: g */
    public boolean m6875g() {
        return this.f11195f == 1;
    }

    /* renamed from: h */
    public boolean m6876h() {
        return this.f11202m;
    }

    /* renamed from: i */
    public boolean m6877i() {
        return this.f11195f == 0;
    }

    /* renamed from: j */
    public final boolean m6878j() {
        int i = this.f11194e;
        return i == 1 || i == 4;
    }

    /* renamed from: k */
    public void m6879k() {
        this.f11194e = 4;
        m6885q(true);
    }

    /* renamed from: l */
    public void m6880l() {
        this.f11201l = true;
    }

    /* renamed from: m */
    public void m6881m() {
        if (!m6875g() || this.f11202m) {
            this.f11202m = false;
            m6886r();
            a aVar = this.f11196g;
            if (aVar.f11205c != 0) {
                m6871c(2);
                return;
            }
            int i = aVar.f11203a;
            if (i != this.f11197h) {
                m6870b(i);
            }
            m6871c(0);
            m6883o();
        }
    }

    /* renamed from: n */
    public void m6882n(int i, boolean z) {
        this.f11194e = z ? 2 : 3;
        this.f11202m = false;
        boolean z2 = this.f11198i != i;
        this.f11198i = i;
        m6871c(2);
        if (z2) {
            m6870b(i);
        }
    }

    /* renamed from: o */
    public final void m6883o() {
        this.f11194e = 0;
        this.f11195f = 0;
        this.f11196g.m6887a();
        this.f11197h = -1;
        this.f11198i = -1;
        this.f11199j = false;
        this.f11200k = false;
        this.f11202m = false;
        this.f11201l = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
        boolean z = true;
        if (!(this.f11194e == 1 && this.f11195f == 1) && i == 1) {
            m6885q(false);
            return;
        }
        if (m6878j() && i == 2) {
            if (this.f11200k) {
                m6871c(2);
                this.f11199j = true;
                return;
            }
            return;
        }
        if (m6878j() && i == 0) {
            m6886r();
            if (this.f11200k) {
                a aVar = this.f11196g;
                if (aVar.f11205c == 0) {
                    int i2 = this.f11197h;
                    int i3 = aVar.f11203a;
                    if (i2 != i3) {
                        m6870b(i3);
                    }
                } else {
                    z = false;
                }
            } else {
                int i4 = this.f11196g.f11203a;
                if (i4 != -1) {
                    m6869a(i4, 0.0f, 0);
                }
            }
            if (z) {
                m6871c(0);
                m6883o();
            }
        }
        if (this.f11194e == 2 && i == 0 && this.f11201l) {
            m6886r();
            a aVar2 = this.f11196g;
            if (aVar2.f11205c == 0) {
                int i5 = this.f11198i;
                int i6 = aVar2.f11203a;
                if (i5 != i6) {
                    if (i6 == -1) {
                        i6 = 0;
                    }
                    m6870b(i6);
                }
                m6871c(0);
                m6883o();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
    
        if ((r5 < 0) == r3.f11191b.m6830c()) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onScrolled(@androidx.annotation.NonNull androidx.recyclerview.widget.RecyclerView r4, int r5, int r6) {
        /*
            r3 = this;
            r4 = 1
            r3.f11200k = r4
            r3.m6886r()
            boolean r0 = r3.f11199j
            r1 = -1
            r2 = 0
            if (r0 == 0) goto L3d
            r3.f11199j = r2
            if (r6 > 0) goto L22
            if (r6 != 0) goto L20
            if (r5 >= 0) goto L16
            r5 = r4
            goto L17
        L16:
            r5 = r2
        L17:
            androidx.viewpager2.widget.ViewPager2 r6 = r3.f11191b
            boolean r6 = r6.m6830c()
            if (r5 != r6) goto L20
            goto L22
        L20:
            r5 = r2
            goto L23
        L22:
            r5 = r4
        L23:
            if (r5 == 0) goto L2f
            androidx.viewpager2.widget.c$a r5 = r3.f11196g
            int r6 = r5.f11205c
            if (r6 == 0) goto L2f
            int r5 = r5.f11203a
            int r5 = r5 + r4
            goto L33
        L2f:
            androidx.viewpager2.widget.c$a r5 = r3.f11196g
            int r5 = r5.f11203a
        L33:
            r3.f11198i = r5
            int r6 = r3.f11197h
            if (r6 == r5) goto L4b
            r3.m6870b(r5)
            goto L4b
        L3d:
            int r5 = r3.f11194e
            if (r5 != 0) goto L4b
            androidx.viewpager2.widget.c$a r5 = r3.f11196g
            int r5 = r5.f11203a
            if (r5 != r1) goto L48
            r5 = r2
        L48:
            r3.m6870b(r5)
        L4b:
            androidx.viewpager2.widget.c$a r5 = r3.f11196g
            int r6 = r5.f11203a
            if (r6 != r1) goto L52
            r6 = r2
        L52:
            float r0 = r5.f11204b
            int r5 = r5.f11205c
            r3.m6869a(r6, r0, r5)
            androidx.viewpager2.widget.c$a r5 = r3.f11196g
            int r6 = r5.f11203a
            int r0 = r3.f11198i
            if (r6 == r0) goto L63
            if (r0 != r1) goto L71
        L63:
            int r5 = r5.f11205c
            if (r5 != 0) goto L71
            int r5 = r3.f11195f
            if (r5 == r4) goto L71
            r3.m6871c(r2)
            r3.m6883o()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager2.widget.C1577c.onScrolled(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    /* renamed from: p */
    public void m6884p(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f11190a = onPageChangeCallback;
    }

    /* renamed from: q */
    public final void m6885q(boolean z) {
        this.f11202m = z;
        this.f11194e = z ? 4 : 1;
        int i = this.f11198i;
        if (i != -1) {
            this.f11197h = i;
            this.f11198i = -1;
        } else if (this.f11197h == -1) {
            this.f11197h = m6872d();
        }
        m6871c(1);
    }

    /* renamed from: r */
    public final void m6886r() {
        int top;
        a aVar = this.f11196g;
        int findFirstVisibleItemPosition = this.f11193d.findFirstVisibleItemPosition();
        aVar.f11203a = findFirstVisibleItemPosition;
        if (findFirstVisibleItemPosition == -1) {
            aVar.m6887a();
            return;
        }
        View findViewByPosition = this.f11193d.findViewByPosition(findFirstVisibleItemPosition);
        if (findViewByPosition == null) {
            aVar.m6887a();
            return;
        }
        int leftDecorationWidth = this.f11193d.getLeftDecorationWidth(findViewByPosition);
        int rightDecorationWidth = this.f11193d.getRightDecorationWidth(findViewByPosition);
        int topDecorationHeight = this.f11193d.getTopDecorationHeight(findViewByPosition);
        int bottomDecorationHeight = this.f11193d.getBottomDecorationHeight(findViewByPosition);
        ViewGroup.LayoutParams layoutParams = findViewByPosition.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            leftDecorationWidth += marginLayoutParams.leftMargin;
            rightDecorationWidth += marginLayoutParams.rightMargin;
            topDecorationHeight += marginLayoutParams.topMargin;
            bottomDecorationHeight += marginLayoutParams.bottomMargin;
        }
        int height = findViewByPosition.getHeight() + topDecorationHeight + bottomDecorationHeight;
        int width = findViewByPosition.getWidth() + leftDecorationWidth + rightDecorationWidth;
        if (this.f11193d.getOrientation() == 0) {
            top = (findViewByPosition.getLeft() - leftDecorationWidth) - this.f11192c.getPaddingLeft();
            if (this.f11191b.m6830c()) {
                top = -top;
            }
            height = width;
        } else {
            top = (findViewByPosition.getTop() - topDecorationHeight) - this.f11192c.getPaddingTop();
        }
        int i = -top;
        aVar.f11205c = i;
        if (i >= 0) {
            aVar.f11204b = height == 0 ? 0.0f : i / height;
        } else {
            if (!new C14645xa(this.f11193d).m58167d()) {
                throw new IllegalStateException(String.format(Locale.US, "Page can only be offset by a positive amount, not by %d", Integer.valueOf(aVar.f11205c)));
            }
            throw new IllegalStateException("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
        }
    }
}
