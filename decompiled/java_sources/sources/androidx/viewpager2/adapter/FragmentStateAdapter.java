package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.miui.penengine.p015e.C6997f;
import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter<FragmentViewHolder> implements StatefulAdapter {

    /* renamed from: l */
    public static final String f11108l = "f#";

    /* renamed from: m */
    public static final String f11109m = "s#";

    /* renamed from: n */
    public static final long f11110n = 10000;

    /* renamed from: d */
    public final Lifecycle f11111d;

    /* renamed from: e */
    public final FragmentManager f11112e;

    /* renamed from: f */
    public final LongSparseArray<Fragment> f11113f;

    /* renamed from: g */
    public final LongSparseArray<Fragment.SavedState> f11114g;

    /* renamed from: h */
    public final LongSparseArray<Integer> f11115h;

    /* renamed from: i */
    public FragmentMaxLifecycleEnforcer f11116i;

    /* renamed from: j */
    public boolean f11117j;

    /* renamed from: k */
    public boolean f11118k;

    /* loaded from: classes3.dex */
    public class FragmentMaxLifecycleEnforcer {

        /* renamed from: a */
        public ViewPager2.OnPageChangeCallback f11124a;

        /* renamed from: b */
        public RecyclerView.AdapterDataObserver f11125b;

        /* renamed from: c */
        public LifecycleEventObserver f11126c;

        /* renamed from: d */
        public ViewPager2 f11127d;

        /* renamed from: e */
        public long f11128e = -1;

        /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$a */
        /* loaded from: classes3.dex */
        public class C1556a extends ViewPager2.OnPageChangeCallback {
            public C1556a() {
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int i) {
                FragmentMaxLifecycleEnforcer.this.m6824d(false);
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                FragmentMaxLifecycleEnforcer.this.m6824d(false);
            }
        }

        /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$FragmentMaxLifecycleEnforcer$b */
        /* loaded from: classes3.dex */
        public class C1557b extends AbstractC1561d {
            public C1557b() {
                super(null);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter.AbstractC1561d, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                FragmentMaxLifecycleEnforcer.this.m6824d(true);
            }
        }

        public FragmentMaxLifecycleEnforcer() {
        }

        @NonNull
        /* renamed from: a */
        public final ViewPager2 m6821a(@NonNull RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        /* renamed from: b */
        public void m6822b(@NonNull RecyclerView recyclerView) {
            this.f11127d = m6821a(recyclerView);
            C1556a c1556a = new C1556a();
            this.f11124a = c1556a;
            this.f11127d.registerOnPageChangeCallback(c1556a);
            C1557b c1557b = new C1557b();
            this.f11125b = c1557b;
            FragmentStateAdapter.this.registerAdapterDataObserver(c1557b);
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.3
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                    FragmentMaxLifecycleEnforcer.this.m6824d(false);
                }
            };
            this.f11126c = lifecycleEventObserver;
            FragmentStateAdapter.this.f11111d.addObserver(lifecycleEventObserver);
        }

        /* renamed from: c */
        public void m6823c(@NonNull RecyclerView recyclerView) {
            m6821a(recyclerView).unregisterOnPageChangeCallback(this.f11124a);
            FragmentStateAdapter.this.unregisterAdapterDataObserver(this.f11125b);
            FragmentStateAdapter.this.f11111d.removeObserver(this.f11126c);
            this.f11127d = null;
        }

        /* renamed from: d */
        public void m6824d(boolean z) {
            int currentItem;
            Fragment fragment;
            if (FragmentStateAdapter.this.m6820n() || this.f11127d.getScrollState() != 0 || FragmentStateAdapter.this.f11113f.isEmpty() || FragmentStateAdapter.this.getItemCount() == 0 || (currentItem = this.f11127d.getCurrentItem()) >= FragmentStateAdapter.this.getItemCount()) {
                return;
            }
            long itemId = FragmentStateAdapter.this.getItemId(currentItem);
            if ((itemId != this.f11128e || z) && (fragment = FragmentStateAdapter.this.f11113f.get(itemId)) != null && fragment.isAdded()) {
                this.f11128e = itemId;
                FragmentTransaction beginTransaction = FragmentStateAdapter.this.f11112e.beginTransaction();
                Fragment fragment2 = null;
                for (int i = 0; i < FragmentStateAdapter.this.f11113f.size(); i++) {
                    long keyAt = FragmentStateAdapter.this.f11113f.keyAt(i);
                    Fragment valueAt = FragmentStateAdapter.this.f11113f.valueAt(i);
                    if (valueAt.isAdded()) {
                        if (keyAt != this.f11128e) {
                            beginTransaction.setMaxLifecycle(valueAt, Lifecycle.State.STARTED);
                        } else {
                            fragment2 = valueAt;
                        }
                        valueAt.setMenuVisibility(keyAt == this.f11128e);
                    }
                }
                if (fragment2 != null) {
                    beginTransaction.setMaxLifecycle(fragment2, Lifecycle.State.RESUMED);
                }
                if (beginTransaction.isEmpty()) {
                    return;
                }
                beginTransaction.commitNow();
            }
        }
    }

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$a */
    /* loaded from: classes3.dex */
    public class ViewOnLayoutChangeListenerC1558a implements View.OnLayoutChangeListener {

        /* renamed from: e */
        public final /* synthetic */ FrameLayout f11133e;

        /* renamed from: f */
        public final /* synthetic */ FragmentViewHolder f11134f;

        public ViewOnLayoutChangeListenerC1558a(FrameLayout frameLayout, FragmentViewHolder fragmentViewHolder) {
            this.f11133e = frameLayout;
            this.f11134f = fragmentViewHolder;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (this.f11133e.getParent() != null) {
                this.f11133e.removeOnLayoutChangeListener(this);
                FragmentStateAdapter.this.m6816j(this.f11134f);
            }
        }
    }

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$b */
    /* loaded from: classes3.dex */
    public class C1559b extends FragmentManager.FragmentLifecycleCallbacks {

        /* renamed from: a */
        public final /* synthetic */ Fragment f11136a;

        /* renamed from: b */
        public final /* synthetic */ FrameLayout f11137b;

        public C1559b(Fragment fragment, FrameLayout frameLayout) {
            this.f11136a = fragment;
            this.f11137b = frameLayout;
        }

        @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
        public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle) {
            if (fragment == this.f11136a) {
                fragmentManager.unregisterFragmentLifecycleCallbacks(this);
                FragmentStateAdapter.this.m6811b(view, this.f11137b);
            }
        }
    }

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$c */
    /* loaded from: classes3.dex */
    public class RunnableC1560c implements Runnable {
        public RunnableC1560c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
            fragmentStateAdapter.f11117j = false;
            fragmentStateAdapter.m6813e();
        }
    }

    /* renamed from: androidx.viewpager2.adapter.FragmentStateAdapter$d */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1561d extends RecyclerView.AdapterDataObserver {
        public AbstractC1561d() {
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

        public /* synthetic */ AbstractC1561d(ViewOnLayoutChangeListenerC1558a viewOnLayoutChangeListenerC1558a) {
            this();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
            onChanged();
        }
    }

    public FragmentStateAdapter(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    @NonNull
    /* renamed from: c */
    public static String m6808c(@NonNull String str, long j) {
        return str + j;
    }

    /* renamed from: g */
    public static boolean m6809g(@NonNull String str, @NonNull String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    /* renamed from: i */
    public static long m6810i(@NonNull String str, @NonNull String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    /* renamed from: b */
    public void m6811b(@NonNull View view, @NonNull FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    public boolean containsItem(long j) {
        return j >= 0 && j < ((long) getItemCount());
    }

    @NonNull
    public abstract Fragment createFragment(int i);

    /* renamed from: d */
    public final void m6812d(int i) {
        long itemId = getItemId(i);
        if (this.f11113f.containsKey(itemId)) {
            return;
        }
        Fragment createFragment = createFragment(i);
        createFragment.setInitialSavedState(this.f11114g.get(itemId));
        this.f11113f.put(itemId, createFragment);
    }

    /* renamed from: e */
    public void m6813e() {
        if (!this.f11118k || m6820n()) {
            return;
        }
        ArraySet arraySet = new ArraySet();
        for (int i = 0; i < this.f11113f.size(); i++) {
            long keyAt = this.f11113f.keyAt(i);
            if (!containsItem(keyAt)) {
                arraySet.add(Long.valueOf(keyAt));
                this.f11115h.remove(keyAt);
            }
        }
        if (!this.f11117j) {
            this.f11118k = false;
            for (int i2 = 0; i2 < this.f11113f.size(); i2++) {
                long keyAt2 = this.f11113f.keyAt(i2);
                if (!m6814f(keyAt2)) {
                    arraySet.add(Long.valueOf(keyAt2));
                }
            }
        }
        Iterator<E> it2 = arraySet.iterator();
        while (it2.hasNext()) {
            m6817k(((Long) it2.next()).longValue());
        }
    }

    /* renamed from: f */
    public final boolean m6814f(long j) {
        View view;
        if (this.f11115h.containsKey(j)) {
            return true;
        }
        Fragment fragment = this.f11113f.get(j);
        return (fragment == null || (view = fragment.getView()) == null || view.getParent() == null) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* renamed from: h */
    public final Long m6815h(int i) {
        Long l = null;
        for (int i2 = 0; i2 < this.f11115h.size(); i2++) {
            if (this.f11115h.valueAt(i2).intValue() == i) {
                if (l != null) {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
                l = Long.valueOf(this.f11115h.keyAt(i2));
            }
        }
        return l;
    }

    /* renamed from: j */
    public void m6816j(@NonNull final FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = this.f11113f.get(fragmentViewHolder.getItemId());
        if (fragment == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        FrameLayout m6826H = fragmentViewHolder.m6826H();
        View view = fragment.getView();
        if (!fragment.isAdded() && view != null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        if (fragment.isAdded() && view == null) {
            m6819m(fragment, m6826H);
            return;
        }
        if (fragment.isAdded() && view.getParent() != null) {
            if (view.getParent() != m6826H) {
                m6811b(view, m6826H);
                return;
            }
            return;
        }
        if (fragment.isAdded()) {
            m6811b(view, m6826H);
            return;
        }
        if (m6820n()) {
            if (this.f11112e.isDestroyed()) {
                return;
            }
            this.f11111d.addObserver(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                    if (FragmentStateAdapter.this.m6820n()) {
                        return;
                    }
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    if (ViewCompat.isAttachedToWindow(fragmentViewHolder.m6826H())) {
                        FragmentStateAdapter.this.m6816j(fragmentViewHolder);
                    }
                }
            });
            return;
        }
        m6819m(fragment, m6826H);
        this.f11112e.beginTransaction().add(fragment, C6997f.f39671c + fragmentViewHolder.getItemId()).setMaxLifecycle(fragment, Lifecycle.State.STARTED).commitNow();
        this.f11116i.m6824d(false);
    }

    /* renamed from: k */
    public final void m6817k(long j) {
        ViewParent parent;
        Fragment fragment = this.f11113f.get(j);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!containsItem(j)) {
            this.f11114g.remove(j);
        }
        if (!fragment.isAdded()) {
            this.f11113f.remove(j);
            return;
        }
        if (m6820n()) {
            this.f11118k = true;
            return;
        }
        if (fragment.isAdded() && containsItem(j)) {
            this.f11114g.put(j, this.f11112e.saveFragmentInstanceState(fragment));
        }
        this.f11112e.beginTransaction().remove(fragment).commitNow();
        this.f11113f.remove(j);
    }

    /* renamed from: l */
    public final void m6818l() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final RunnableC1560c runnableC1560c = new RunnableC1560c();
        this.f11111d.addObserver(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.5
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    handler.removeCallbacks(runnableC1560c);
                    lifecycleOwner.getLifecycle().removeObserver(this);
                }
            }
        });
        handler.postDelayed(runnableC1560c, 10000L);
    }

    /* renamed from: m */
    public final void m6819m(Fragment fragment, @NonNull FrameLayout frameLayout) {
        this.f11112e.registerFragmentLifecycleCallbacks(new C1559b(fragment, frameLayout), false);
    }

    /* renamed from: n */
    public boolean m6820n() {
        return this.f11112e.isStateSaved();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        Preconditions.checkArgument(this.f11116i == null);
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.f11116i = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.m6822b(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.f11116i.m6823c(recyclerView);
        this.f11116i = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(@NonNull FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void restoreState(@NonNull Parcelable parcelable) {
        if (!this.f11114g.isEmpty() || !this.f11113f.isEmpty()) {
            throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (m6809g(str, f11108l)) {
                this.f11113f.put(m6810i(str, f11108l), this.f11112e.getFragment(bundle, str));
            } else {
                if (!m6809g(str, f11109m)) {
                    throw new IllegalArgumentException("Unexpected key in savedState: " + str);
                }
                long m6810i = m6810i(str, f11109m);
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (containsItem(m6810i)) {
                    this.f11114g.put(m6810i, savedState);
                }
            }
        }
        if (this.f11113f.isEmpty()) {
            return;
        }
        this.f11118k = true;
        this.f11117j = true;
        m6813e();
        m6818l();
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    @NonNull
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.f11113f.size() + this.f11114g.size());
        for (int i = 0; i < this.f11113f.size(); i++) {
            long keyAt = this.f11113f.keyAt(i);
            Fragment fragment = this.f11113f.get(keyAt);
            if (fragment != null && fragment.isAdded()) {
                this.f11112e.putFragment(bundle, m6808c(f11108l, keyAt), fragment);
            }
        }
        for (int i2 = 0; i2 < this.f11114g.size(); i2++) {
            long keyAt2 = this.f11114g.keyAt(i2);
            if (containsItem(keyAt2)) {
                bundle.putParcelable(m6808c(f11109m, keyAt2), this.f11114g.get(keyAt2));
            }
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    public FragmentStateAdapter(@NonNull Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NonNull FragmentViewHolder fragmentViewHolder, int i) {
        long itemId = fragmentViewHolder.getItemId();
        int id = fragmentViewHolder.m6826H().getId();
        Long m6815h = m6815h(id);
        if (m6815h != null && m6815h.longValue() != itemId) {
            m6817k(m6815h.longValue());
            this.f11115h.remove(m6815h.longValue());
        }
        this.f11115h.put(itemId, Integer.valueOf(id));
        m6812d(i);
        FrameLayout m6826H = fragmentViewHolder.m6826H();
        if (ViewCompat.isAttachedToWindow(m6826H)) {
            if (m6826H.getParent() == null) {
                m6826H.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC1558a(m6826H, fragmentViewHolder));
            } else {
                throw new IllegalStateException("Design assumption violated.");
            }
        }
        m6813e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public final FragmentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return FragmentViewHolder.m6825G(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(@NonNull FragmentViewHolder fragmentViewHolder) {
        m6816j(fragmentViewHolder);
        m6813e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(@NonNull FragmentViewHolder fragmentViewHolder) {
        Long m6815h = m6815h(fragmentViewHolder.m6826H().getId());
        if (m6815h != null) {
            m6817k(m6815h.longValue());
            this.f11115h.remove(m6815h.longValue());
        }
    }

    public FragmentStateAdapter(@NonNull FragmentManager fragmentManager, @NonNull Lifecycle lifecycle) {
        this.f11113f = new LongSparseArray<>();
        this.f11114g = new LongSparseArray<>();
        this.f11115h = new LongSparseArray<>();
        this.f11117j = false;
        this.f11118k = false;
        this.f11112e = fragmentManager;
        this.f11111d = lifecycle;
        super.setHasStableIds(true);
    }
}
