package androidx.fragment.app;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.PagerAdapter;

@Deprecated
/* loaded from: classes3.dex */
public abstract class FragmentPagerAdapter extends PagerAdapter {
    public static final int BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT = 1;

    @Deprecated
    public static final int BEHAVIOR_SET_USER_VISIBLE_HINT = 0;

    /* renamed from: h */
    public static final String f7568h = "FragmentPagerAdapter";

    /* renamed from: i */
    public static final boolean f7569i = false;

    /* renamed from: c */
    public final FragmentManager f7570c;

    /* renamed from: d */
    public final int f7571d;

    /* renamed from: e */
    public FragmentTransaction f7572e;

    /* renamed from: f */
    public Fragment f7573f;

    /* renamed from: g */
    public boolean f7574g;

    @Deprecated
    public FragmentPagerAdapter(@NonNull FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    /* renamed from: b */
    public static String m4763b(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f7572e == null) {
            this.f7572e = this.f7570c.beginTransaction();
        }
        this.f7572e.detach(fragment);
        if (fragment.equals(this.f7573f)) {
            this.f7573f = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(@NonNull ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.f7572e;
        if (fragmentTransaction != null) {
            if (!this.f7574g) {
                try {
                    this.f7574g = true;
                    fragmentTransaction.commitNowAllowingStateLoss();
                } finally {
                    this.f7574g = false;
                }
            }
            this.f7572e = null;
        }
    }

    @NonNull
    public abstract Fragment getItem(int i);

    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
        if (this.f7572e == null) {
            this.f7572e = this.f7570c.beginTransaction();
        }
        long itemId = getItemId(i);
        Fragment findFragmentByTag = this.f7570c.findFragmentByTag(m4763b(viewGroup.getId(), itemId));
        if (findFragmentByTag != null) {
            this.f7572e.attach(findFragmentByTag);
        } else {
            findFragmentByTag = getItem(i);
            this.f7572e.add(viewGroup.getId(), findFragmentByTag, m4763b(viewGroup.getId(), itemId));
        }
        if (findFragmentByTag != this.f7573f) {
            findFragmentByTag.setMenuVisibility(false);
            if (this.f7571d == 1) {
                this.f7572e.setMaxLifecycle(findFragmentByTag, Lifecycle.State.STARTED);
            } else {
                findFragmentByTag.setUserVisibleHint(false);
            }
        }
        return findFragmentByTag;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(@Nullable Parcelable parcelable, @Nullable ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Nullable
    public Parcelable saveState() {
        return null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f7573f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f7571d == 1) {
                    if (this.f7572e == null) {
                        this.f7572e = this.f7570c.beginTransaction();
                    }
                    this.f7572e.setMaxLifecycle(this.f7573f, Lifecycle.State.STARTED);
                } else {
                    this.f7573f.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f7571d == 1) {
                if (this.f7572e == null) {
                    this.f7572e = this.f7570c.beginTransaction();
                }
                this.f7572e.setMaxLifecycle(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f7573f = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(@NonNull ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    public FragmentPagerAdapter(@NonNull FragmentManager fragmentManager, int i) {
        this.f7572e = null;
        this.f7573f = null;
        this.f7570c = fragmentManager;
        this.f7571d = i;
    }
}
