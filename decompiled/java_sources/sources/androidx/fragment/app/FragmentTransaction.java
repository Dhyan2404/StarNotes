package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class FragmentTransaction {

    /* renamed from: A */
    public static final int f7597A = 7;

    /* renamed from: B */
    public static final int f7598B = 8;

    /* renamed from: C */
    public static final int f7599C = 9;

    /* renamed from: D */
    public static final int f7600D = 10;
    public static final int TRANSIT_ENTER_MASK = 4096;
    public static final int TRANSIT_EXIT_MASK = 8192;
    public static final int TRANSIT_FRAGMENT_CLOSE = 8194;
    public static final int TRANSIT_FRAGMENT_FADE = 4099;
    public static final int TRANSIT_FRAGMENT_MATCH_ACTIVITY_CLOSE = 8197;
    public static final int TRANSIT_FRAGMENT_MATCH_ACTIVITY_OPEN = 4100;
    public static final int TRANSIT_FRAGMENT_OPEN = 4097;
    public static final int TRANSIT_NONE = 0;
    public static final int TRANSIT_UNSET = -1;

    /* renamed from: t */
    public static final int f7601t = 0;

    /* renamed from: u */
    public static final int f7602u = 1;

    /* renamed from: v */
    public static final int f7603v = 2;

    /* renamed from: w */
    public static final int f7604w = 3;

    /* renamed from: x */
    public static final int f7605x = 4;

    /* renamed from: y */
    public static final int f7606y = 5;

    /* renamed from: z */
    public static final int f7607z = 6;

    /* renamed from: a */
    public final FragmentFactory f7608a;

    /* renamed from: b */
    public final ClassLoader f7609b;

    /* renamed from: c */
    public ArrayList<C1117a> f7610c;

    /* renamed from: d */
    public int f7611d;

    /* renamed from: e */
    public int f7612e;

    /* renamed from: f */
    public int f7613f;

    /* renamed from: g */
    public int f7614g;

    /* renamed from: h */
    public int f7615h;

    /* renamed from: i */
    public boolean f7616i;

    /* renamed from: j */
    public boolean f7617j;

    /* renamed from: k */
    @Nullable
    public String f7618k;

    /* renamed from: l */
    public int f7619l;

    /* renamed from: m */
    public CharSequence f7620m;

    /* renamed from: n */
    public int f7621n;

    /* renamed from: o */
    public CharSequence f7622o;

    /* renamed from: p */
    public ArrayList<String> f7623p;

    /* renamed from: q */
    public ArrayList<String> f7624q;

    /* renamed from: r */
    public boolean f7625r;

    /* renamed from: s */
    public ArrayList<Runnable> f7626s;

    /* renamed from: androidx.fragment.app.FragmentTransaction$a */
    /* loaded from: classes3.dex */
    public static final class C1117a {

        /* renamed from: a */
        public int f7627a;

        /* renamed from: b */
        public Fragment f7628b;

        /* renamed from: c */
        public boolean f7629c;

        /* renamed from: d */
        public int f7630d;

        /* renamed from: e */
        public int f7631e;

        /* renamed from: f */
        public int f7632f;

        /* renamed from: g */
        public int f7633g;

        /* renamed from: h */
        public Lifecycle.State f7634h;

        /* renamed from: i */
        public Lifecycle.State f7635i;

        public C1117a() {
        }

        public C1117a(int i, Fragment fragment) {
            this.f7627a = i;
            this.f7628b = fragment;
            this.f7629c = false;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f7634h = state;
            this.f7635i = state;
        }

        public C1117a(int i, Fragment fragment, boolean z) {
            this.f7627a = i;
            this.f7628b = fragment;
            this.f7629c = z;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f7634h = state;
            this.f7635i = state;
        }

        public C1117a(int i, @NonNull Fragment fragment, Lifecycle.State state) {
            this.f7627a = i;
            this.f7628b = fragment;
            this.f7629c = false;
            this.f7634h = fragment.f7385I0;
            this.f7635i = state;
        }

        public C1117a(C1117a c1117a) {
            this.f7627a = c1117a.f7627a;
            this.f7628b = c1117a.f7628b;
            this.f7629c = c1117a.f7629c;
            this.f7630d = c1117a.f7630d;
            this.f7631e = c1117a.f7631e;
            this.f7632f = c1117a.f7632f;
            this.f7633g = c1117a.f7633g;
            this.f7634h = c1117a.f7634h;
            this.f7635i = c1117a.f7635i;
        }
    }

    @Deprecated
    public FragmentTransaction() {
        this.f7610c = new ArrayList<>();
        this.f7617j = true;
        this.f7625r = false;
        this.f7608a = null;
        this.f7609b = null;
    }

    @NonNull
    public final FragmentTransaction add(@NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle, @Nullable String str) {
        return add(m4775d(cls, bundle), str);
    }

    @NonNull
    public FragmentTransaction addSharedElement(@NonNull View view, @NonNull String str) {
        if (FragmentTransition.supportsTransition()) {
            String transitionName = ViewCompat.getTransitionName(view);
            if (transitionName == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (this.f7623p == null) {
                this.f7623p = new ArrayList<>();
                this.f7624q = new ArrayList<>();
            } else {
                if (this.f7624q.contains(str)) {
                    throw new IllegalArgumentException("A shared element with the target name '" + str + "' has already been added to the transaction.");
                }
                if (this.f7623p.contains(transitionName)) {
                    throw new IllegalArgumentException("A shared element with the source name '" + transitionName + "' has already been added to the transaction.");
                }
            }
            this.f7623p.add(transitionName);
            this.f7624q.add(str);
        }
        return this;
    }

    @NonNull
    public FragmentTransaction addToBackStack(@Nullable String str) {
        if (!this.f7617j) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.f7616i = true;
        this.f7618k = str;
        return this;
    }

    @NonNull
    public FragmentTransaction attach(@NonNull Fragment fragment) {
        m4774c(new C1117a(7, fragment));
        return this;
    }

    /* renamed from: b */
    public FragmentTransaction m4773b(@NonNull ViewGroup viewGroup, @NonNull Fragment fragment, @Nullable String str) {
        fragment.f7427y0 = viewGroup;
        return add(viewGroup.getId(), fragment, str);
    }

    /* renamed from: c */
    public void m4774c(C1117a c1117a) {
        this.f7610c.add(c1117a);
        c1117a.f7630d = this.f7611d;
        c1117a.f7631e = this.f7612e;
        c1117a.f7632f = this.f7613f;
        c1117a.f7633g = this.f7614g;
    }

    public abstract int commit();

    public abstract int commitAllowingStateLoss();

    @MainThread
    public abstract void commitNow();

    @MainThread
    public abstract void commitNowAllowingStateLoss();

    @NonNull
    /* renamed from: d */
    public final Fragment m4775d(@NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        FragmentFactory fragmentFactory = this.f7608a;
        if (fragmentFactory == null) {
            throw new IllegalStateException("Creating a Fragment requires that this FragmentTransaction was built with FragmentManager.beginTransaction()");
        }
        ClassLoader classLoader = this.f7609b;
        if (classLoader == null) {
            throw new IllegalStateException("The FragmentManager must be attached to itshost to create a Fragment");
        }
        Fragment instantiate = fragmentFactory.instantiate(classLoader, cls.getName());
        if (bundle != null) {
            instantiate.setArguments(bundle);
        }
        return instantiate;
    }

    @NonNull
    public FragmentTransaction detach(@NonNull Fragment fragment) {
        m4774c(new C1117a(6, fragment));
        return this;
    }

    @NonNull
    public FragmentTransaction disallowAddToBackStack() {
        if (this.f7616i) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f7617j = false;
        return this;
    }

    /* renamed from: e */
    public void mo4776e(int i, Fragment fragment, @Nullable String str, int i2) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            FragmentStrictMode.onFragmentReuse(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = fragment.f7398Z;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.f7398Z + " now " + str);
            }
            fragment.f7398Z = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.f7392O;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.f7392O + " now " + i);
            }
            fragment.f7392O = i;
            fragment.f7395Q = i;
        }
        m4774c(new C1117a(i2, fragment));
    }

    @NonNull
    public FragmentTransaction hide(@NonNull Fragment fragment) {
        m4774c(new C1117a(4, fragment));
        return this;
    }

    public boolean isAddToBackStackAllowed() {
        return this.f7617j;
    }

    public boolean isEmpty() {
        return this.f7610c.isEmpty();
    }

    @NonNull
    public FragmentTransaction remove(@NonNull Fragment fragment) {
        m4774c(new C1117a(3, fragment));
        return this;
    }

    @NonNull
    public final FragmentTransaction replace(@IdRes int i, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        return replace(i, cls, bundle, null);
    }

    @NonNull
    public FragmentTransaction runOnCommit(@NonNull Runnable runnable) {
        disallowAddToBackStack();
        if (this.f7626s == null) {
            this.f7626s = new ArrayList<>();
        }
        this.f7626s.add(runnable);
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setAllowOptimization(boolean z) {
        return setReorderingAllowed(z);
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbShortTitle(@StringRes int i) {
        this.f7621n = i;
        this.f7622o = null;
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbTitle(@StringRes int i) {
        this.f7619l = i;
        this.f7620m = null;
        return this;
    }

    @NonNull
    public FragmentTransaction setCustomAnimations(@AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2) {
        return setCustomAnimations(i, i2, 0, 0);
    }

    @NonNull
    public FragmentTransaction setMaxLifecycle(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        m4774c(new C1117a(10, fragment, state));
        return this;
    }

    @NonNull
    public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment fragment) {
        m4774c(new C1117a(8, fragment));
        return this;
    }

    @NonNull
    public FragmentTransaction setReorderingAllowed(boolean z) {
        this.f7625r = z;
        return this;
    }

    @NonNull
    public FragmentTransaction setTransition(int i) {
        this.f7615h = i;
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setTransitionStyle(@StyleRes int i) {
        return this;
    }

    @NonNull
    public FragmentTransaction show(@NonNull Fragment fragment) {
        m4774c(new C1117a(5, fragment));
        return this;
    }

    @NonNull
    public FragmentTransaction add(@NonNull Fragment fragment, @Nullable String str) {
        mo4776e(0, fragment, str, 1);
        return this;
    }

    @NonNull
    public FragmentTransaction replace(@IdRes int i, @NonNull Fragment fragment) {
        return replace(i, fragment, (String) null);
    }

    @NonNull
    public FragmentTransaction setCustomAnimations(@AnimRes @AnimatorRes int i, @AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i3, @AnimRes @AnimatorRes int i4) {
        this.f7611d = i;
        this.f7612e = i2;
        this.f7613f = i3;
        this.f7614g = i4;
        return this;
    }

    @NonNull
    public final FragmentTransaction add(@IdRes int i, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        return add(i, m4775d(cls, bundle));
    }

    @NonNull
    public final FragmentTransaction replace(@IdRes int i, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle, @Nullable String str) {
        return replace(i, m4775d(cls, bundle), str);
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbShortTitle(@Nullable CharSequence charSequence) {
        this.f7621n = 0;
        this.f7622o = charSequence;
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbTitle(@Nullable CharSequence charSequence) {
        this.f7619l = 0;
        this.f7620m = charSequence;
        return this;
    }

    @NonNull
    public FragmentTransaction add(@IdRes int i, @NonNull Fragment fragment) {
        mo4776e(i, fragment, null, 1);
        return this;
    }

    @NonNull
    public FragmentTransaction replace(@IdRes int i, @NonNull Fragment fragment, @Nullable String str) {
        if (i != 0) {
            mo4776e(i, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    @NonNull
    public final FragmentTransaction add(@IdRes int i, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle, @Nullable String str) {
        return add(i, m4775d(cls, bundle), str);
    }

    @NonNull
    public FragmentTransaction add(@IdRes int i, @NonNull Fragment fragment, @Nullable String str) {
        mo4776e(i, fragment, str, 1);
        return this;
    }

    public FragmentTransaction(@NonNull FragmentFactory fragmentFactory, @Nullable ClassLoader classLoader) {
        this.f7610c = new ArrayList<>();
        this.f7617j = true;
        this.f7625r = false;
        this.f7608a = fragmentFactory;
        this.f7609b = classLoader;
    }

    public FragmentTransaction(@NonNull FragmentFactory fragmentFactory, @Nullable ClassLoader classLoader, @NonNull FragmentTransaction fragmentTransaction) {
        this(fragmentFactory, classLoader);
        Iterator<C1117a> it2 = fragmentTransaction.f7610c.iterator();
        while (it2.hasNext()) {
            this.f7610c.add(new C1117a(it2.next()));
        }
        this.f7611d = fragmentTransaction.f7611d;
        this.f7612e = fragmentTransaction.f7612e;
        this.f7613f = fragmentTransaction.f7613f;
        this.f7614g = fragmentTransaction.f7614g;
        this.f7615h = fragmentTransaction.f7615h;
        this.f7616i = fragmentTransaction.f7616i;
        this.f7617j = fragmentTransaction.f7617j;
        this.f7618k = fragmentTransaction.f7618k;
        this.f7621n = fragmentTransaction.f7621n;
        this.f7622o = fragmentTransaction.f7622o;
        this.f7619l = fragmentTransaction.f7619l;
        this.f7620m = fragmentTransaction.f7620m;
        if (fragmentTransaction.f7623p != null) {
            ArrayList<String> arrayList = new ArrayList<>();
            this.f7623p = arrayList;
            arrayList.addAll(fragmentTransaction.f7623p);
        }
        if (fragmentTransaction.f7624q != null) {
            ArrayList<String> arrayList2 = new ArrayList<>();
            this.f7624q = arrayList2;
            arrayList2.addAll(fragmentTransaction.f7624q);
        }
        this.f7625r = fragmentTransaction.f7625r;
    }
}
