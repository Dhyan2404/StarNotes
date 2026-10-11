package androidx.viewpager2.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.C1552R;
import androidx.viewpager2.adapter.StatefulAdapter;
import com.sunia.HTREnginev2.y8g;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public final class ViewPager2 extends ViewGroup {
    public static final int OFFSCREEN_PAGE_LIMIT_DEFAULT = -1;
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;

    /* renamed from: y */
    public static boolean f11142y = true;

    /* renamed from: e */
    public final Rect f11143e;

    /* renamed from: f */
    public final Rect f11144f;

    /* renamed from: g */
    public C1575a f11145g;

    /* renamed from: h */
    public int f11146h;

    /* renamed from: i */
    public boolean f11147i;

    /* renamed from: j */
    public RecyclerView.AdapterDataObserver f11148j;

    /* renamed from: k */
    public LinearLayoutManager f11149k;

    /* renamed from: l */
    public int f11150l;

    /* renamed from: m */
    public Parcelable f11151m;

    /* renamed from: n */
    public RecyclerView f11152n;

    /* renamed from: o */
    public PagerSnapHelper f11153o;

    /* renamed from: p */
    public C1577c f11154p;

    /* renamed from: q */
    public C1575a f11155q;

    /* renamed from: r */
    public y8g f11156r;

    /* renamed from: s */
    public C1576b f11157s;

    /* renamed from: t */
    public RecyclerView.ItemAnimator f11158t;

    /* renamed from: u */
    public boolean f11159u;

    /* renamed from: v */
    public boolean f11160v;

    /* renamed from: w */
    public int f11161w;

    /* renamed from: x */
    public AbstractC1567e f11162x;

    @IntRange(from = 1)
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface OffscreenPageLimit {
    }

    /* loaded from: classes3.dex */
    public static abstract class OnPageChangeCallback {
        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, @Px int i2) {
        }

        public void onPageSelected(int i) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface Orientation {
    }

    /* loaded from: classes3.dex */
    public interface PageTransformer {
        void transformPage(@NonNull View view, float f);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface ScrollState {
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$a */
    /* loaded from: classes3.dex */
    public class C1563a extends AbstractC1569g {
        public C1563a() {
            super(null);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1569g, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            ViewPager2 viewPager2 = ViewPager2.this;
            viewPager2.f11147i = true;
            viewPager2.f11154p.m6880l();
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$b */
    /* loaded from: classes3.dex */
    public class C1564b extends OnPageChangeCallback {
        public C1564b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                ViewPager2.this.m6837j();
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i) {
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.f11146h != i) {
                viewPager2.f11146h = i;
                viewPager2.f11162x.mo6857q();
            }
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$c */
    /* loaded from: classes3.dex */
    public class C1565c extends OnPageChangeCallback {
        public C1565c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i) {
            ViewPager2.this.clearFocus();
            if (ViewPager2.this.hasFocus()) {
                ViewPager2.this.f11152n.requestFocus(2);
            }
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$d */
    /* loaded from: classes3.dex */
    public class C1566d implements RecyclerView.OnChildAttachStateChangeListener {
        public C1566d() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewAttachedToWindow(@NonNull View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (((ViewGroup.MarginLayoutParams) layoutParams).width != -1 || ((ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
                throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public void onChildViewDetachedFromWindow(@NonNull View view) {
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$e */
    /* loaded from: classes3.dex */
    public abstract class AbstractC1567e {
        public AbstractC1567e() {
        }

        /* renamed from: a */
        public boolean mo6841a() {
            return false;
        }

        /* renamed from: b */
        public boolean mo6842b(int i) {
            return false;
        }

        /* renamed from: c */
        public boolean mo6843c(int i, Bundle bundle) {
            return false;
        }

        /* renamed from: d */
        public boolean mo6844d() {
            return false;
        }

        /* renamed from: e */
        public void mo6845e(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        /* renamed from: f */
        public void mo6846f(@Nullable RecyclerView.Adapter<?> adapter) {
        }

        /* renamed from: g */
        public String mo6847g() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: h */
        public void mo6848h(@NonNull C1575a c1575a, @NonNull RecyclerView recyclerView) {
        }

        /* renamed from: i */
        public void mo6849i(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        /* renamed from: j */
        public void mo6850j(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        /* renamed from: k */
        public boolean mo6851k(int i) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: l */
        public boolean mo6852l(int i, Bundle bundle) {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: m */
        public void mo6853m() {
        }

        /* renamed from: n */
        public CharSequence mo6854n() {
            throw new IllegalStateException("Not implemented.");
        }

        /* renamed from: o */
        public void mo6855o(@NonNull AccessibilityEvent accessibilityEvent) {
        }

        /* renamed from: p */
        public void mo6856p() {
        }

        /* renamed from: q */
        public void mo6857q() {
        }

        /* renamed from: r */
        public void mo6858r() {
        }

        /* renamed from: s */
        public void mo6859s() {
        }

        public /* synthetic */ AbstractC1567e(ViewPager2 viewPager2, C1563a c1563a) {
            this();
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$f */
    /* loaded from: classes3.dex */
    public class C1568f extends AbstractC1567e {
        public C1568f() {
            super(ViewPager2.this, null);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: b */
        public boolean mo6842b(int i) {
            return (i == 8192 || i == 4096) && !ViewPager2.this.isUserInputEnabled();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: d */
        public boolean mo6844d() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: j */
        public void mo6850j(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (ViewPager2.this.isUserInputEnabled()) {
                return;
            }
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfoCompat.setScrollable(false);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: k */
        public boolean mo6851k(int i) {
            if (mo6842b(i)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: n */
        public CharSequence mo6854n() {
            if (mo6844d()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$g */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1569g extends RecyclerView.AdapterDataObserver {
        public AbstractC1569g() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }

        public /* synthetic */ AbstractC1569g(C1563a c1563a) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
            onChanged();
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$h */
    /* loaded from: classes3.dex */
    public class C1570h extends LinearLayoutManager {
        public C1570h(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            int offscreenPageLimit = ViewPager2.this.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.calculateExtraLayoutSpace(state, iArr);
                return;
            }
            int pageSize = ViewPager2.this.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onInitializeAccessibilityNodeInfo(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
            ViewPager2.this.f11162x.mo6850j(accessibilityNodeInfoCompat);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean performAccessibilityAction(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int i, @Nullable Bundle bundle) {
            return ViewPager2.this.f11162x.mo6842b(i) ? ViewPager2.this.f11162x.mo6851k(i) : super.performAccessibilityAction(recycler, state, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean requestChildRectangleOnScreen(@NonNull RecyclerView recyclerView, @NonNull View view, @NonNull Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$i */
    /* loaded from: classes3.dex */
    public class C1571i extends AbstractC1567e {

        /* renamed from: b */
        public final AccessibilityViewCommand f11170b;

        /* renamed from: c */
        public final AccessibilityViewCommand f11171c;

        /* renamed from: d */
        public RecyclerView.AdapterDataObserver f11172d;

        /* renamed from: androidx.viewpager2.widget.ViewPager2$i$a */
        /* loaded from: classes3.dex */
        public class a implements AccessibilityViewCommand {
            public a() {
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                C1571i.this.m6862v(((ViewPager2) view).getCurrentItem() + 1);
                return true;
            }
        }

        /* renamed from: androidx.viewpager2.widget.ViewPager2$i$b */
        /* loaded from: classes3.dex */
        public class b implements AccessibilityViewCommand {
            public b() {
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
                C1571i.this.m6862v(((ViewPager2) view).getCurrentItem() - 1);
                return true;
            }
        }

        /* renamed from: androidx.viewpager2.widget.ViewPager2$i$c */
        /* loaded from: classes3.dex */
        public class c extends AbstractC1569g {
            public c() {
                super(null);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1569g, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                C1571i.this.m6863w();
            }
        }

        public C1571i() {
            super(ViewPager2.this, null);
            this.f11170b = new a();
            this.f11171c = new b();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: a */
        public boolean mo6841a() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: c */
        public boolean mo6843c(int i, Bundle bundle) {
            return i == 8192 || i == 4096;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: e */
        public void mo6845e(@Nullable RecyclerView.Adapter<?> adapter) {
            m6863w();
            if (adapter != null) {
                adapter.registerAdapterDataObserver(this.f11172d);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: f */
        public void mo6846f(@Nullable RecyclerView.Adapter<?> adapter) {
            if (adapter != null) {
                adapter.unregisterAdapterDataObserver(this.f11172d);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: g */
        public String mo6847g() {
            if (mo6841a()) {
                return "androidx.viewpager.widget.ViewPager";
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: h */
        public void mo6848h(@NonNull C1575a c1575a, @NonNull RecyclerView recyclerView) {
            ViewCompat.setImportantForAccessibility(recyclerView, 2);
            this.f11172d = new c();
            if (ViewCompat.getImportantForAccessibility(ViewPager2.this) == 0) {
                ViewCompat.setImportantForAccessibility(ViewPager2.this, 1);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: i */
        public void mo6849i(AccessibilityNodeInfo accessibilityNodeInfo) {
            m6860t(accessibilityNodeInfo);
            m6861u(accessibilityNodeInfo);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: l */
        public boolean mo6852l(int i, Bundle bundle) {
            if (!mo6843c(i, bundle)) {
                throw new IllegalStateException();
            }
            m6862v(i == 8192 ? ViewPager2.this.getCurrentItem() - 1 : ViewPager2.this.getCurrentItem() + 1);
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: m */
        public void mo6853m() {
            m6863w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: o */
        public void mo6855o(@NonNull AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName(mo6847g());
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: p */
        public void mo6856p() {
            m6863w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: q */
        public void mo6857q() {
            m6863w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: r */
        public void mo6858r() {
            m6863w();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AbstractC1567e
        /* renamed from: s */
        public void mo6859s() {
            m6863w();
        }

        /* renamed from: t */
        public final void m6860t(AccessibilityNodeInfo accessibilityNodeInfo) {
            int i;
            int i2;
            if (ViewPager2.this.getAdapter() == null) {
                i = 0;
                i2 = 0;
            } else if (ViewPager2.this.getOrientation() == 1) {
                i = ViewPager2.this.getAdapter().getItemCount();
                i2 = 0;
            } else {
                i2 = ViewPager2.this.getAdapter().getItemCount();
                i = 0;
            }
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(i, i2, false, 0));
        }

        /* renamed from: u */
        public final void m6861u(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            RecyclerView.Adapter adapter = ViewPager2.this.getAdapter();
            if (adapter == null || (itemCount = adapter.getItemCount()) == 0 || !ViewPager2.this.isUserInputEnabled()) {
                return;
            }
            if (ViewPager2.this.f11146h > 0) {
                accessibilityNodeInfo.addAction(8192);
            }
            if (ViewPager2.this.f11146h < itemCount - 1) {
                accessibilityNodeInfo.addAction(4096);
            }
            accessibilityNodeInfo.setScrollable(true);
        }

        /* renamed from: v */
        public void m6862v(int i) {
            if (ViewPager2.this.isUserInputEnabled()) {
                ViewPager2.this.m6833f(i, true);
            }
        }

        /* renamed from: w */
        public void m6863w() {
            int itemCount;
            ViewPager2 viewPager2 = ViewPager2.this;
            int i = R.id.accessibilityActionPageLeft;
            ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageLeft);
            ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageRight);
            ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageUp);
            ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageDown);
            if (ViewPager2.this.getAdapter() == null || (itemCount = ViewPager2.this.getAdapter().getItemCount()) == 0 || !ViewPager2.this.isUserInputEnabled()) {
                return;
            }
            if (ViewPager2.this.getOrientation() != 0) {
                if (ViewPager2.this.f11146h < itemCount - 1) {
                    ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, null), null, this.f11170b);
                }
                if (ViewPager2.this.f11146h > 0) {
                    ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, null), null, this.f11171c);
                    return;
                }
                return;
            }
            boolean m6830c = ViewPager2.this.m6830c();
            int i2 = m6830c ? 16908360 : 16908361;
            if (m6830c) {
                i = 16908361;
            }
            if (ViewPager2.this.f11146h < itemCount - 1) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i2, null), null, this.f11170b);
            }
            if (ViewPager2.this.f11146h > 0) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i, null), null, this.f11171c);
            }
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$j */
    /* loaded from: classes3.dex */
    public class C1572j extends PagerSnapHelper {
        public C1572j() {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        @Nullable
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            if (ViewPager2.this.isFakeDragging()) {
                return null;
            }
            return super.findSnapView(layoutManager);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$k */
    /* loaded from: classes3.dex */
    public class C1573k extends RecyclerView {
        public C1573k(@NonNull Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        @RequiresApi(23)
        public CharSequence getAccessibilityClassName() {
            return ViewPager2.this.f11162x.mo6844d() ? ViewPager2.this.f11162x.mo6854n() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(ViewPager2.this.f11146h);
            accessibilityEvent.setToIndex(ViewPager2.this.f11146h);
            ViewPager2.this.f11162x.mo6855o(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.isUserInputEnabled() && super.onTouchEvent(motionEvent);
        }
    }

    /* renamed from: androidx.viewpager2.widget.ViewPager2$l */
    /* loaded from: classes3.dex */
    public static class RunnableC1574l implements Runnable {

        /* renamed from: e */
        public final int f11179e;

        /* renamed from: f */
        public final RecyclerView f11180f;

        public RunnableC1574l(int i, RecyclerView recyclerView) {
            this.f11179e = i;
            this.f11180f = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f11180f.smoothScrollToPosition(this.f11179e);
        }
    }

    public ViewPager2(@NonNull Context context) {
        super(context);
        this.f11143e = new Rect();
        this.f11144f = new Rect();
        this.f11145g = new C1575a(3);
        this.f11147i = false;
        this.f11148j = new C1563a();
        this.f11150l = -1;
        this.f11158t = null;
        this.f11159u = false;
        this.f11160v = true;
        this.f11161w = -1;
        m6829b(context, null);
    }

    /* renamed from: a */
    public final RecyclerView.OnChildAttachStateChangeListener m6828a() {
        return new C1566d();
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.f11152n.addItemDecoration(itemDecoration);
    }

    /* renamed from: b */
    public final void m6829b(Context context, AttributeSet attributeSet) {
        this.f11162x = f11142y ? new C1571i() : new C1568f();
        C1573k c1573k = new C1573k(context);
        this.f11152n = c1573k;
        c1573k.setId(ViewCompat.generateViewId());
        this.f11152n.setDescendantFocusability(131072);
        C1570h c1570h = new C1570h(context);
        this.f11149k = c1570h;
        this.f11152n.setLayoutManager(c1570h);
        this.f11152n.setScrollingTouchSlop(1);
        m6834g(context, attributeSet);
        this.f11152n.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f11152n.addOnChildAttachStateChangeListener(m6828a());
        C1577c c1577c = new C1577c(this);
        this.f11154p = c1577c;
        this.f11156r = new y8g(this, c1577c, this.f11152n);
        C1572j c1572j = new C1572j();
        this.f11153o = c1572j;
        c1572j.attachToRecyclerView(this.f11152n);
        this.f11152n.addOnScrollListener(this.f11154p);
        C1575a c1575a = new C1575a(3);
        this.f11155q = c1575a;
        this.f11154p.m6884p(c1575a);
        C1564b c1564b = new C1564b();
        C1565c c1565c = new C1565c();
        this.f11155q.m6864a(c1564b);
        this.f11155q.m6864a(c1565c);
        this.f11162x.mo6848h(this.f11155q, this.f11152n);
        this.f11155q.m6864a(this.f11145g);
        C1576b c1576b = new C1576b(this.f11149k);
        this.f11157s = c1576b;
        this.f11155q.m6864a(c1576b);
        RecyclerView recyclerView = this.f11152n;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    public boolean beginFakeDrag() {
        return this.f11156r.m58391b();
    }

    /* renamed from: c */
    public boolean m6830c() {
        return this.f11149k.getLayoutDirection() == 1;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.f11152n.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.f11152n.canScrollVertically(i);
    }

    /* renamed from: d */
    public final void m6831d(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.f11148j);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).mRecyclerViewId;
            sparseArray.put(this.f11152n.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        m6832e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public final void m6832e() {
        RecyclerView.Adapter adapter;
        if (this.f11150l == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.f11151m;
        if (parcelable != null) {
            if (adapter instanceof StatefulAdapter) {
                ((StatefulAdapter) adapter).restoreState(parcelable);
            }
            this.f11151m = null;
        }
        int max = Math.max(0, Math.min(this.f11150l, adapter.getItemCount() - 1));
        this.f11146h = max;
        this.f11150l = -1;
        this.f11152n.scrollToPosition(max);
        this.f11162x.mo6853m();
    }

    public boolean endFakeDrag() {
        return this.f11156r.m58393d();
    }

    /* renamed from: f */
    public void m6833f(int i, boolean z) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.f11150l != -1) {
                this.f11150l = Math.max(i, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int min = Math.min(Math.max(i, 0), adapter.getItemCount() - 1);
        if (min == this.f11146h && this.f11154p.m6877i()) {
            return;
        }
        int i2 = this.f11146h;
        if (min == i2 && z) {
            return;
        }
        double d = i2;
        this.f11146h = min;
        this.f11162x.mo6857q();
        if (!this.f11154p.m6877i()) {
            d = this.f11154p.m6873e();
        }
        this.f11154p.m6882n(min, z);
        if (!z) {
            this.f11152n.scrollToPosition(min);
            return;
        }
        double d2 = min;
        if (Math.abs(d2 - d) <= 3.0d) {
            this.f11152n.smoothScrollToPosition(min);
            return;
        }
        this.f11152n.scrollToPosition(d2 > d ? min - 3 : min + 3);
        RecyclerView recyclerView = this.f11152n;
        recyclerView.post(new RunnableC1574l(min, recyclerView));
    }

    public boolean fakeDragBy(@Px @SuppressLint({"SupportAnnotationUsage"}) float f) {
        return this.f11156r.m58394e(f);
    }

    /* renamed from: g */
    public final void m6834g(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1552R.styleable.ViewPager2);
        saveAttributeDataForStyleable(context, C1552R.styleable.ViewPager2, attributeSet, obtainStyledAttributes, 0, 0);
        try {
            setOrientation(obtainStyledAttributes.getInt(C1552R.styleable.ViewPager2_android_orientation, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @RequiresApi(23)
    public CharSequence getAccessibilityClassName() {
        return this.f11162x.mo6841a() ? this.f11162x.mo6847g() : super.getAccessibilityClassName();
    }

    @Nullable
    public RecyclerView.Adapter getAdapter() {
        return this.f11152n.getAdapter();
    }

    public int getCurrentItem() {
        return this.f11146h;
    }

    @NonNull
    public RecyclerView.ItemDecoration getItemDecorationAt(int i) {
        return this.f11152n.getItemDecorationAt(i);
    }

    public int getItemDecorationCount() {
        return this.f11152n.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f11161w;
    }

    public int getOrientation() {
        return this.f11149k.getOrientation();
    }

    public int getPageSize() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.f11152n;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.f11154p.m6874f();
    }

    /* renamed from: h */
    public void m6835h() {
        View findSnapView = this.f11153o.findSnapView(this.f11149k);
        if (findSnapView == null) {
            return;
        }
        int[] calculateDistanceToFinalSnap = this.f11153o.calculateDistanceToFinalSnap(this.f11149k, findSnapView);
        int i = calculateDistanceToFinalSnap[0];
        if (i == 0 && calculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.f11152n.smoothScrollBy(i, calculateDistanceToFinalSnap[1]);
    }

    /* renamed from: i */
    public final void m6836i(@Nullable RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.f11148j);
        }
    }

    public void invalidateItemDecorations() {
        this.f11152n.invalidateItemDecorations();
    }

    public boolean isFakeDragging() {
        return this.f11156r.m58395f();
    }

    public boolean isUserInputEnabled() {
        return this.f11160v;
    }

    /* renamed from: j */
    public void m6837j() {
        PagerSnapHelper pagerSnapHelper = this.f11153o;
        if (pagerSnapHelper == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View findSnapView = pagerSnapHelper.findSnapView(this.f11149k);
        if (findSnapView == null) {
            return;
        }
        int position = this.f11149k.getPosition(findSnapView);
        if (position != this.f11146h && getScrollState() == 0) {
            this.f11155q.onPageSelected(position);
        }
        this.f11147i = false;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.f11162x.mo6849i(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.f11152n.getMeasuredWidth();
        int measuredHeight = this.f11152n.getMeasuredHeight();
        this.f11143e.left = getPaddingLeft();
        this.f11143e.right = (i3 - i) - getPaddingRight();
        this.f11143e.top = getPaddingTop();
        this.f11143e.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.f11143e, this.f11144f);
        RecyclerView recyclerView = this.f11152n;
        Rect rect = this.f11144f;
        recyclerView.layout(rect.left, rect.top, rect.right, rect.bottom);
        if (this.f11147i) {
            m6837j();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        measureChild(this.f11152n, i, i2);
        int measuredWidth = this.f11152n.getMeasuredWidth();
        int measuredHeight = this.f11152n.getMeasuredHeight();
        int measuredState = this.f11152n.getMeasuredState();
        int paddingLeft = measuredWidth + getPaddingLeft() + getPaddingRight();
        int paddingTop = measuredHeight + getPaddingTop() + getPaddingBottom();
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, measuredState), View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f11150l = savedState.mCurrentItem;
        this.f11151m = savedState.mAdapterState;
    }

    @Override // android.view.View
    @Nullable
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mRecyclerViewId = this.f11152n.getId();
        int i = this.f11150l;
        if (i == -1) {
            i = this.f11146h;
        }
        savedState.mCurrentItem = i;
        Parcelable parcelable = this.f11151m;
        if (parcelable != null) {
            savedState.mAdapterState = parcelable;
        } else {
            Object adapter = this.f11152n.getAdapter();
            if (adapter instanceof StatefulAdapter) {
                savedState.mAdapterState = ((StatefulAdapter) adapter).saveState();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(ViewPager2.class.getSimpleName() + " does not support direct child views");
    }

    @Override // android.view.View
    @RequiresApi(16)
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return this.f11162x.mo6843c(i, bundle) ? this.f11162x.mo6852l(i, bundle) : super.performAccessibilityAction(i, bundle);
    }

    public void registerOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f11145g.m6864a(onPageChangeCallback);
    }

    public void removeItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration) {
        this.f11152n.removeItemDecoration(itemDecoration);
    }

    public void removeItemDecorationAt(int i) {
        this.f11152n.removeItemDecorationAt(i);
    }

    public void requestTransform() {
        if (this.f11157s.m6867a() == null) {
            return;
        }
        double m6873e = this.f11154p.m6873e();
        int i = (int) m6873e;
        float f = (float) (m6873e - i);
        this.f11157s.onPageScrolled(i, f, Math.round(getPageSize() * f));
    }

    public void setAdapter(@Nullable RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.f11152n.getAdapter();
        this.f11162x.mo6846f(adapter2);
        m6836i(adapter2);
        this.f11152n.setAdapter(adapter);
        this.f11146h = 0;
        m6832e();
        this.f11162x.mo6845e(adapter);
        m6831d(adapter);
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    @Override // android.view.View
    @RequiresApi(17)
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.f11162x.mo6856p();
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1 && i != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.f11161w = i;
        this.f11152n.requestLayout();
    }

    public void setOrientation(int i) {
        this.f11149k.setOrientation(i);
        this.f11162x.mo6858r();
    }

    public void setPageTransformer(@Nullable PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            if (!this.f11159u) {
                this.f11158t = this.f11152n.getItemAnimator();
                this.f11159u = true;
            }
            this.f11152n.setItemAnimator(null);
        } else if (this.f11159u) {
            this.f11152n.setItemAnimator(this.f11158t);
            this.f11158t = null;
            this.f11159u = false;
        }
        if (pageTransformer == this.f11157s.m6867a()) {
            return;
        }
        this.f11157s.m6868b(pageTransformer);
        requestTransform();
    }

    public void setUserInputEnabled(boolean z) {
        this.f11160v = z;
        this.f11162x.mo6859s();
    }

    public void unregisterOnPageChangeCallback(@NonNull OnPageChangeCallback onPageChangeCallback) {
        this.f11145g.m6865b(onPageChangeCallback);
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1562a();
        Parcelable mAdapterState;
        int mCurrentItem;
        int mRecyclerViewId;

        /* renamed from: androidx.viewpager2.widget.ViewPager2$SavedState$a */
        /* loaded from: classes3.dex */
        public static class C1562a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        @RequiresApi(24)
        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readValues(parcel, classLoader);
        }

        private void readValues(Parcel parcel, ClassLoader classLoader) {
            this.mRecyclerViewId = parcel.readInt();
            this.mCurrentItem = parcel.readInt();
            this.mAdapterState = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mRecyclerViewId);
            parcel.writeInt(this.mCurrentItem);
            parcel.writeParcelable(this.mAdapterState, i);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            readValues(parcel, null);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void addItemDecoration(@NonNull RecyclerView.ItemDecoration itemDecoration, int i) {
        this.f11152n.addItemDecoration(itemDecoration, i);
    }

    public void setCurrentItem(int i, boolean z) {
        if (!isFakeDragging()) {
            m6833f(i, z);
            return;
        }
        throw new IllegalStateException("Cannot change current item when ViewPager2 is fake dragging");
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11143e = new Rect();
        this.f11144f = new Rect();
        this.f11145g = new C1575a(3);
        this.f11147i = false;
        this.f11148j = new C1563a();
        this.f11150l = -1;
        this.f11158t = null;
        this.f11159u = false;
        this.f11160v = true;
        this.f11161w = -1;
        m6829b(context, attributeSet);
    }

    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11143e = new Rect();
        this.f11144f = new Rect();
        this.f11145g = new C1575a(3);
        this.f11147i = false;
        this.f11148j = new C1563a();
        this.f11150l = -1;
        this.f11158t = null;
        this.f11159u = false;
        this.f11160v = true;
        this.f11161w = -1;
        m6829b(context, attributeSet);
    }

    @RequiresApi(21)
    public ViewPager2(@NonNull Context context, @Nullable AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f11143e = new Rect();
        this.f11144f = new Rect();
        this.f11145g = new C1575a(3);
        this.f11147i = false;
        this.f11148j = new C1563a();
        this.f11150l = -1;
        this.f11158t = null;
        this.f11159u = false;
        this.f11160v = true;
        this.f11161w = -1;
        m6829b(context, attributeSet);
    }
}
