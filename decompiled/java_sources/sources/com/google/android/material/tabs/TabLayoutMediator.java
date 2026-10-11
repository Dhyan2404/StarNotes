package com.google.android.material.tabs;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* loaded from: classes6.dex */
public final class TabLayoutMediator {

    /* renamed from: a */
    @NonNull
    public final TabLayout f32686a;

    /* renamed from: b */
    @NonNull
    public final ViewPager2 f32687b;

    /* renamed from: c */
    public final boolean f32688c;

    /* renamed from: d */
    public final boolean f32689d;

    /* renamed from: e */
    public final TabConfigurationStrategy f32690e;

    /* renamed from: f */
    @Nullable
    public RecyclerView.Adapter<?> f32691f;

    /* renamed from: g */
    public boolean f32692g;

    /* renamed from: h */
    @Nullable
    public C5417b f32693h;

    /* renamed from: i */
    @Nullable
    public TabLayout.OnTabSelectedListener f32694i;

    /* renamed from: j */
    @Nullable
    public RecyclerView.AdapterDataObserver f32695j;

    /* loaded from: classes6.dex */
    public interface TabConfigurationStrategy {
        void onConfigureTab(@NonNull TabLayout.Tab tab, int i);
    }

    /* renamed from: com.google.android.material.tabs.TabLayoutMediator$a */
    /* loaded from: classes6.dex */
    public class C5416a extends RecyclerView.AdapterDataObserver {
        public C5416a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            TabLayoutMediator.this.m25166a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            TabLayoutMediator.this.m25166a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            TabLayoutMediator.this.m25166a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            TabLayoutMediator.this.m25166a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            TabLayoutMediator.this.m25166a();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, @Nullable Object obj) {
            TabLayoutMediator.this.m25166a();
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayoutMediator$b */
    /* loaded from: classes6.dex */
    public static class C5417b extends ViewPager2.OnPageChangeCallback {

        /* renamed from: a */
        @NonNull
        public final WeakReference<TabLayout> f32697a;

        /* renamed from: b */
        public int f32698b;

        /* renamed from: c */
        public int f32699c;

        public C5417b(TabLayout tabLayout) {
            this.f32697a = new WeakReference<>(tabLayout);
            m25167a();
        }

        /* renamed from: a */
        public void m25167a() {
            this.f32699c = 0;
            this.f32698b = 0;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i) {
            this.f32698b = this.f32699c;
            this.f32699c = i;
            TabLayout tabLayout = this.f32697a.get();
            if (tabLayout != null) {
                tabLayout.m25099E(this.f32699c);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.f32697a.get();
            if (tabLayout != null) {
                int i3 = this.f32699c;
                tabLayout.m25117z(i, f, i3 != 2 || this.f32698b == 1, (i3 == 2 && this.f32698b == 0) ? false : true, false);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i) {
            TabLayout tabLayout = this.f32697a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.f32699c;
            tabLayout.selectTab(tabLayout.getTabAt(i), i2 == 0 || (i2 == 2 && this.f32698b == 0));
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayoutMediator$c */
    /* loaded from: classes6.dex */
    public static class C5418c implements TabLayout.OnTabSelectedListener {

        /* renamed from: a */
        public final ViewPager2 f32700a;

        /* renamed from: b */
        public final boolean f32701b;

        public C5418c(ViewPager2 viewPager2, boolean z) {
            this.f32700a = viewPager2;
            this.f32701b = z;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@NonNull TabLayout.Tab tab) {
            this.f32700a.setCurrentItem(tab.getPosition(), this.f32701b);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
        }
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, true, tabConfigurationStrategy);
    }

    /* renamed from: a */
    public void m25166a() {
        this.f32686a.removeAllTabs();
        RecyclerView.Adapter<?> adapter = this.f32691f;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                TabLayout.Tab newTab = this.f32686a.newTab();
                this.f32690e.onConfigureTab(newTab, i);
                this.f32686a.addTab(newTab, false);
            }
            if (itemCount > 0) {
                int min = Math.min(this.f32687b.getCurrentItem(), this.f32686a.getTabCount() - 1);
                if (min != this.f32686a.getSelectedTabPosition()) {
                    TabLayout tabLayout = this.f32686a;
                    tabLayout.selectTab(tabLayout.getTabAt(min));
                }
            }
        }
    }

    public void attach() {
        if (this.f32692g) {
            throw new IllegalStateException("TabLayoutMediator is already attached");
        }
        RecyclerView.Adapter<?> adapter = this.f32687b.getAdapter();
        this.f32691f = adapter;
        if (adapter == null) {
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        this.f32692g = true;
        C5417b c5417b = new C5417b(this.f32686a);
        this.f32693h = c5417b;
        this.f32687b.registerOnPageChangeCallback(c5417b);
        C5418c c5418c = new C5418c(this.f32687b, this.f32689d);
        this.f32694i = c5418c;
        this.f32686a.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) c5418c);
        if (this.f32688c) {
            C5416a c5416a = new C5416a();
            this.f32695j = c5416a;
            this.f32691f.registerAdapterDataObserver(c5416a);
        }
        m25166a();
        this.f32686a.setScrollPosition(this.f32687b.getCurrentItem(), 0.0f, true);
    }

    public void detach() {
        RecyclerView.Adapter<?> adapter;
        if (this.f32688c && (adapter = this.f32691f) != null) {
            adapter.unregisterAdapterDataObserver(this.f32695j);
            this.f32695j = null;
        }
        this.f32686a.removeOnTabSelectedListener(this.f32694i);
        this.f32687b.unregisterOnPageChangeCallback(this.f32693h);
        this.f32694i = null;
        this.f32693h = null;
        this.f32691f = null;
        this.f32692g = false;
    }

    public boolean isAttached() {
        return this.f32692g;
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, z, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z, boolean z2, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this.f32686a = tabLayout;
        this.f32687b = viewPager2;
        this.f32688c = z;
        this.f32689d = z2;
        this.f32690e = tabConfigurationStrategy;
    }
}
