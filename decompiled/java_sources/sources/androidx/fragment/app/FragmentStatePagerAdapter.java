package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.PagerAdapter;
import com.miui.penengine.p015e.C6997f;
import java.util.ArrayList;

@Deprecated
/* loaded from: classes3.dex */
public abstract class FragmentStatePagerAdapter extends PagerAdapter {
    public static final int BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT = 1;

    @Deprecated
    public static final int BEHAVIOR_SET_USER_VISIBLE_HINT = 0;

    /* renamed from: j */
    public static final String f7575j = "FragmentStatePagerAdapt";

    /* renamed from: k */
    public static final boolean f7576k = false;

    /* renamed from: c */
    public final FragmentManager f7577c;

    /* renamed from: d */
    public final int f7578d;

    /* renamed from: e */
    public FragmentTransaction f7579e;

    /* renamed from: f */
    public ArrayList<Fragment.SavedState> f7580f;

    /* renamed from: g */
    public ArrayList<Fragment> f7581g;

    /* renamed from: h */
    public Fragment f7582h;

    /* renamed from: i */
    public boolean f7583i;

    @Deprecated
    public FragmentStatePagerAdapter(@NonNull FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f7579e == null) {
            this.f7579e = this.f7577c.beginTransaction();
        }
        while (this.f7580f.size() <= i) {
            this.f7580f.add(null);
        }
        this.f7580f.set(i, fragment.isAdded() ? this.f7577c.saveFragmentInstanceState(fragment) : null);
        this.f7581g.set(i, null);
        this.f7579e.remove(fragment);
        if (fragment.equals(this.f7582h)) {
            this.f7582h = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(@NonNull ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.f7579e;
        if (fragmentTransaction != null) {
            if (!this.f7583i) {
                try {
                    this.f7583i = true;
                    fragmentTransaction.commitNowAllowingStateLoss();
                } finally {
                    this.f7583i = false;
                }
            }
            this.f7579e = null;
        }
    }

    @NonNull
    public abstract Fragment getItem(int i);

    @Override // androidx.viewpager.widget.PagerAdapter
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.f7581g.size() > i && (fragment = this.f7581g.get(i)) != null) {
            return fragment;
        }
        if (this.f7579e == null) {
            this.f7579e = this.f7577c.beginTransaction();
        }
        Fragment item = getItem(i);
        if (this.f7580f.size() > i && (savedState = this.f7580f.get(i)) != null) {
            item.setInitialSavedState(savedState);
        }
        while (this.f7581g.size() <= i) {
            this.f7581g.add(null);
        }
        item.setMenuVisibility(false);
        if (this.f7578d == 0) {
            item.setUserVisibleHint(false);
        }
        this.f7581g.set(i, item);
        this.f7579e.add(viewGroup.getId(), item);
        if (this.f7578d == 1) {
            this.f7579e.setMaxLifecycle(item, Lifecycle.State.STARTED);
        }
        return item;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(@Nullable Parcelable parcelable, @Nullable ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f7580f.clear();
            this.f7581g.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f7580f.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith(C6997f.f39671c)) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment fragment = this.f7577c.getFragment(bundle, str);
                    if (fragment != null) {
                        while (this.f7581g.size() <= parseInt) {
                            this.f7581g.add(null);
                        }
                        fragment.setMenuVisibility(false);
                        this.f7581g.set(parseInt, fragment);
                    } else {
                        Log.w(f7575j, "Bad fragment at key " + str);
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Nullable
    public Parcelable saveState() {
        Bundle bundle;
        if (this.f7580f.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f7580f.size()];
            this.f7580f.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        for (int i = 0; i < this.f7581g.size(); i++) {
            Fragment fragment = this.f7581g.get(i);
            if (fragment != null && fragment.isAdded()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.f7577c.putFragment(bundle, C6997f.f39671c + i, fragment);
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f7582h;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f7578d == 1) {
                    if (this.f7579e == null) {
                        this.f7579e = this.f7577c.beginTransaction();
                    }
                    this.f7579e.setMaxLifecycle(this.f7582h, Lifecycle.State.STARTED);
                } else {
                    this.f7582h.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f7578d == 1) {
                if (this.f7579e == null) {
                    this.f7579e = this.f7577c.beginTransaction();
                }
                this.f7579e.setMaxLifecycle(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f7582h = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(@NonNull ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    public FragmentStatePagerAdapter(@NonNull FragmentManager fragmentManager, int i) {
        this.f7579e = null;
        this.f7580f = new ArrayList<>();
        this.f7581g = new ArrayList<>();
        this.f7582h = null;
        this.f7577c = fragmentManager;
        this.f7578d = i;
    }
}
