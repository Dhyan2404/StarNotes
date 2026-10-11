package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.fragment.C1068R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.SpecialEffectsController;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;
import com.sunia.HTREnginev2.dvg;

/* renamed from: androidx.fragment.app.e */
/* loaded from: classes3.dex */
public class C1126e {

    /* renamed from: f */
    public static final String f7691f = "FragmentManager";

    /* renamed from: g */
    public static final String f7692g = "state";

    /* renamed from: h */
    public static final String f7693h = "savedInstanceState";

    /* renamed from: i */
    public static final String f7694i = "registryState";

    /* renamed from: j */
    public static final String f7695j = "childFragmentManager";

    /* renamed from: k */
    public static final String f7696k = "viewState";

    /* renamed from: l */
    public static final String f7697l = "viewRegistryState";

    /* renamed from: m */
    public static final String f7698m = "arguments";

    /* renamed from: a */
    public final C1125d f7699a;

    /* renamed from: b */
    public final dvg f7700b;

    /* renamed from: c */
    @NonNull
    public final Fragment f7701c;

    /* renamed from: d */
    public boolean f7702d = false;

    /* renamed from: e */
    public int f7703e = -1;

    /* renamed from: androidx.fragment.app.e$a */
    /* loaded from: classes3.dex */
    public class a implements View.OnAttachStateChangeListener {

        /* renamed from: e */
        public final /* synthetic */ View f7704e;

        public a(View view) {
            this.f7704e = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f7704e.removeOnAttachStateChangeListener(this);
            ViewCompat.requestApplyInsets(this.f7704e);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: androidx.fragment.app.e$b */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f7706a;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f7706a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7706a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7706a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7706a[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public C1126e(@NonNull C1125d c1125d, @NonNull dvg dvgVar, @NonNull Fragment fragment) {
        this.f7699a = c1125d;
        this.f7700b = dvgVar;
        this.f7701c = fragment;
    }

    /* renamed from: a */
    public void m4825a() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.f7701c);
        }
        Bundle bundle = this.f7701c.f7400f;
        Bundle bundle2 = bundle != null ? bundle.getBundle(f7693h) : null;
        this.f7701c.m4542B(bundle2);
        this.f7699a.m4809a(this.f7701c, bundle2, false);
    }

    /* renamed from: b */
    public void m4826b() {
        Fragment m4642h0 = FragmentManager.m4642h0(this.f7701c.f7427y0);
        Fragment parentFragment = this.f7701c.getParentFragment();
        if (m4642h0 != null && !m4642h0.equals(parentFragment)) {
            Fragment fragment = this.f7701c;
            FragmentStrictMode.onWrongNestedHierarchy(fragment, m4642h0, fragment.f7395Q);
        }
        int m53827j = this.f7700b.m53827j(this.f7701c);
        Fragment fragment2 = this.f7701c;
        fragment2.f7427y0.addView(fragment2.f7429z0, m53827j);
    }

    /* renamed from: c */
    public void m4827c() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.f7701c);
        }
        Fragment fragment = this.f7701c;
        Fragment fragment2 = fragment.f7407l;
        C1126e c1126e = null;
        if (fragment2 != null) {
            C1126e m53832o = this.f7700b.m53832o(fragment2.f7404j);
            if (m53832o == null) {
                throw new IllegalStateException("Fragment " + this.f7701c + " declared target fragment " + this.f7701c.f7407l + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.f7701c;
            fragment3.f7408m = fragment3.f7407l.f7404j;
            fragment3.f7407l = null;
            c1126e = m53832o;
        } else {
            String str = fragment.f7408m;
            if (str != null && (c1126e = this.f7700b.m53832o(str)) == null) {
                throw new IllegalStateException("Fragment " + this.f7701c + " declared target fragment " + this.f7701c.f7408m + " that does not belong to this FragmentManager!");
            }
        }
        if (c1126e != null) {
            c1126e.m4837m();
        }
        Fragment fragment4 = this.f7701c;
        fragment4.f7426y = fragment4.f7424x.getHost();
        Fragment fragment5 = this.f7701c;
        fragment5.f7386J = fragment5.f7424x.m4736t0();
        this.f7699a.m4815g(this.f7701c, false);
        this.f7701c.m4543C();
        this.f7699a.m4810b(this.f7701c, false);
    }

    /* renamed from: d */
    public int m4828d() {
        Fragment fragment = this.f7701c;
        if (fragment.f7424x == null) {
            return fragment.f7399e;
        }
        int i = this.f7703e;
        int i2 = b.f7706a[fragment.f7385I0.ordinal()];
        if (i2 != 1) {
            i = i2 != 2 ? i2 != 3 ? i2 != 4 ? Math.min(i, -1) : Math.min(i, 0) : Math.min(i, 1) : Math.min(i, 5);
        }
        Fragment fragment2 = this.f7701c;
        if (fragment2.f7415s) {
            if (fragment2.f7416t) {
                i = Math.max(this.f7703e, 2);
                View view = this.f7701c.f7429z0;
                if (view != null && view.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = this.f7703e < 4 ? Math.min(i, fragment2.f7399e) : Math.min(i, 1);
            }
        }
        if (!this.f7701c.f7411p) {
            i = Math.min(i, 1);
        }
        Fragment fragment3 = this.f7701c;
        ViewGroup viewGroup = fragment3.f7427y0;
        SpecialEffectsController.Operation.LifecycleImpact awaitingCompletionLifecycleImpact = viewGroup != null ? SpecialEffectsController.getOrCreateController(viewGroup, fragment3.getParentFragmentManager()).getAwaitingCompletionLifecycleImpact(this) : null;
        if (awaitingCompletionLifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            i = Math.min(i, 6);
        } else if (awaitingCompletionLifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            i = Math.max(i, 3);
        } else {
            Fragment fragment4 = this.f7701c;
            if (fragment4.f7412q) {
                i = fragment4.m4597x() ? Math.min(i, 1) : Math.min(i, -1);
            }
        }
        Fragment fragment5 = this.f7701c;
        if (fragment5.f7377A0 && fragment5.f7399e < 5) {
            i = Math.min(i, 4);
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i + " for " + this.f7701c);
        }
        return i;
    }

    /* renamed from: e */
    public void m4829e() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.f7701c);
        }
        Bundle bundle = this.f7701c.f7400f;
        Bundle bundle2 = bundle != null ? bundle.getBundle(f7693h) : null;
        Fragment fragment = this.f7701c;
        if (fragment.f7384H0) {
            fragment.f7399e = 1;
            fragment.m4568b0();
        } else {
            this.f7699a.m4816h(fragment, bundle2, false);
            this.f7701c.m4546F(bundle2);
            this.f7699a.m4811c(this.f7701c, bundle2, false);
        }
    }

    /* renamed from: f */
    public void m4830f() {
        String str;
        if (this.f7701c.f7415s) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f7701c);
        }
        Bundle bundle = this.f7701c.f7400f;
        ViewGroup viewGroup = null;
        Bundle bundle2 = bundle != null ? bundle.getBundle(f7693h) : null;
        LayoutInflater m4551L = this.f7701c.m4551L(bundle2);
        Fragment fragment = this.f7701c;
        ViewGroup viewGroup2 = fragment.f7427y0;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i = fragment.f7395Q;
            if (i != 0) {
                if (i == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f7701c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) fragment.f7424x.m4722o0().onFindViewById(this.f7701c.f7395Q);
                if (viewGroup == null) {
                    Fragment fragment2 = this.f7701c;
                    if (!fragment2.f7418u) {
                        try {
                            str = fragment2.getResources().getResourceName(this.f7701c.f7395Q);
                        } catch (Resources.NotFoundException unused) {
                            str = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f7701c.f7395Q) + " (" + str + ") for fragment " + this.f7701c);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    FragmentStrictMode.onWrongFragmentContainer(this.f7701c, viewGroup);
                }
            }
        }
        Fragment fragment3 = this.f7701c;
        fragment3.f7427y0 = viewGroup;
        fragment3.mo4532H(m4551L, viewGroup, bundle2);
        if (this.f7701c.f7429z0 != null) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto VIEW_CREATED: " + this.f7701c);
            }
            this.f7701c.f7429z0.setSaveFromParentEnabled(false);
            Fragment fragment4 = this.f7701c;
            fragment4.f7429z0.setTag(C1068R.id.fragment_container_view_tag, fragment4);
            if (viewGroup != null) {
                m4826b();
            }
            Fragment fragment5 = this.f7701c;
            if (fragment5.f7406k0) {
                fragment5.f7429z0.setVisibility(8);
            }
            if (ViewCompat.isAttachedToWindow(this.f7701c.f7429z0)) {
                ViewCompat.requestApplyInsets(this.f7701c.f7429z0);
            } else {
                View view = this.f7701c.f7429z0;
                view.addOnAttachStateChangeListener(new a(view));
            }
            this.f7701c.m4564Y();
            C1125d c1125d = this.f7699a;
            Fragment fragment6 = this.f7701c;
            c1125d.m4821m(fragment6, fragment6.f7429z0, bundle2, false);
            int visibility = this.f7701c.f7429z0.getVisibility();
            this.f7701c.m4581i0(this.f7701c.f7429z0.getAlpha());
            Fragment fragment7 = this.f7701c;
            if (fragment7.f7427y0 != null && visibility == 0) {
                View findFocus = fragment7.f7429z0.findFocus();
                if (findFocus != null) {
                    this.f7701c.m4575f0(findFocus);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + this.f7701c);
                    }
                }
                this.f7701c.f7429z0.setAlpha(0.0f);
            }
        }
        this.f7701c.f7399e = 2;
    }

    /* renamed from: g */
    public void m4831g() {
        Fragment m53823f;
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.f7701c);
        }
        Fragment fragment = this.f7701c;
        boolean z = true;
        boolean z2 = fragment.f7412q && !fragment.m4597x();
        if (z2) {
            Fragment fragment2 = this.f7701c;
            if (!fragment2.f7414r) {
                this.f7700b.m53817C(fragment2.f7404j, null);
            }
        }
        if (!(z2 || this.f7700b.m53834q().m57888r(this.f7701c))) {
            String str = this.f7701c.f7408m;
            if (str != null && (m53823f = this.f7700b.m53823f(str)) != null && m53823f.f7417t0) {
                this.f7701c.f7407l = m53823f;
            }
            this.f7701c.f7399e = 0;
            return;
        }
        FragmentHostCallback<?> fragmentHostCallback = this.f7701c.f7426y;
        if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            z = this.f7700b.m53834q().m57884n();
        } else if (fragmentHostCallback.m4623b() instanceof Activity) {
            z = true ^ ((Activity) fragmentHostCallback.m4623b()).isChangingConfigurations();
        }
        if ((z2 && !this.f7701c.f7414r) || z) {
            this.f7700b.m53834q().m57876e(this.f7701c, false);
        }
        this.f7701c.m4548I();
        this.f7699a.m4812d(this.f7701c, false);
        for (C1126e c1126e : this.f7700b.m53829l()) {
            if (c1126e != null) {
                Fragment m4835k = c1126e.m4835k();
                if (this.f7701c.f7404j.equals(m4835k.f7408m)) {
                    m4835k.f7407l = this.f7701c;
                    m4835k.f7408m = null;
                }
            }
        }
        Fragment fragment3 = this.f7701c;
        String str2 = fragment3.f7408m;
        if (str2 != null) {
            fragment3.f7407l = this.f7700b.m53823f(str2);
        }
        this.f7700b.m53837t(this);
    }

    /* renamed from: h */
    public void m4832h() {
        View view;
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.f7701c);
        }
        Fragment fragment = this.f7701c;
        ViewGroup viewGroup = fragment.f7427y0;
        if (viewGroup != null && (view = fragment.f7429z0) != null) {
            viewGroup.removeView(view);
        }
        this.f7701c.m4549J();
        this.f7699a.m4822n(this.f7701c, false);
        Fragment fragment2 = this.f7701c;
        fragment2.f7427y0 = null;
        fragment2.f7429z0 = null;
        fragment2.f7388K0 = null;
        fragment2.f7389L0.setValue(null);
        this.f7701c.f7416t = false;
    }

    /* renamed from: i */
    public void m4833i() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.f7701c);
        }
        this.f7701c.m4550K();
        boolean z = false;
        this.f7699a.m4813e(this.f7701c, false);
        Fragment fragment = this.f7701c;
        fragment.f7399e = -1;
        fragment.f7426y = null;
        fragment.f7386J = null;
        fragment.f7424x = null;
        if (fragment.f7412q && !fragment.m4597x()) {
            z = true;
        }
        if (z || this.f7700b.m53834q().m57888r(this.f7701c)) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.f7701c);
            }
            this.f7701c.m4596w();
        }
    }

    /* renamed from: j */
    public void m4834j() {
        Fragment fragment = this.f7701c;
        if (fragment.f7415s && fragment.f7416t && !fragment.f7420v) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f7701c);
            }
            Bundle bundle = this.f7701c.f7400f;
            Bundle bundle2 = bundle != null ? bundle.getBundle(f7693h) : null;
            Fragment fragment2 = this.f7701c;
            fragment2.mo4532H(fragment2.m4551L(bundle2), null, bundle2);
            View view = this.f7701c.f7429z0;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f7701c;
                fragment3.f7429z0.setTag(C1068R.id.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.f7701c;
                if (fragment4.f7406k0) {
                    fragment4.f7429z0.setVisibility(8);
                }
                this.f7701c.m4564Y();
                C1125d c1125d = this.f7699a;
                Fragment fragment5 = this.f7701c;
                c1125d.m4821m(fragment5, fragment5.f7429z0, bundle2, false);
                this.f7701c.f7399e = 2;
            }
        }
    }

    @NonNull
    /* renamed from: k */
    public Fragment m4835k() {
        return this.f7701c;
    }

    /* renamed from: l */
    public final boolean m4836l(@NonNull View view) {
        if (view == this.f7701c.f7429z0) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f7701c.f7429z0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m */
    public void m4837m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f7702d) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + m4835k());
                return;
            }
            return;
        }
        try {
            this.f7702d = true;
            boolean z = false;
            while (true) {
                int m4828d = m4828d();
                Fragment fragment = this.f7701c;
                int i = fragment.f7399e;
                if (m4828d == i) {
                    if (!z && i == -1 && fragment.f7412q && !fragment.m4597x() && !this.f7701c.f7414r) {
                        if (FragmentManager.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + this.f7701c);
                        }
                        this.f7700b.m53834q().m57876e(this.f7701c, true);
                        this.f7700b.m53837t(this);
                        if (FragmentManager.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + this.f7701c);
                        }
                        this.f7701c.m4596w();
                    }
                    Fragment fragment2 = this.f7701c;
                    if (fragment2.f7382F0) {
                        if (fragment2.f7429z0 != null && (viewGroup = fragment2.f7427y0) != null) {
                            SpecialEffectsController orCreateController = SpecialEffectsController.getOrCreateController(viewGroup, fragment2.getParentFragmentManager());
                            if (this.f7701c.f7406k0) {
                                orCreateController.enqueueHide(this);
                            } else {
                                orCreateController.enqueueShow(this);
                            }
                        }
                        Fragment fragment3 = this.f7701c;
                        FragmentManager fragmentManager = fragment3.f7424x;
                        if (fragmentManager != null) {
                            fragmentManager.m4747z0(fragment3);
                        }
                        Fragment fragment4 = this.f7701c;
                        fragment4.f7382F0 = false;
                        fragment4.onHiddenChanged(fragment4.f7406k0);
                        this.f7701c.f7428z.m4658I();
                    }
                    return;
                }
                if (m4828d <= i) {
                    switch (i - 1) {
                        case -1:
                            m4833i();
                            break;
                        case 0:
                            if (fragment.f7414r && this.f7700b.m53835r(fragment.f7404j) == null) {
                                this.f7700b.m53817C(this.f7701c.f7404j, m4842r());
                            }
                            m4831g();
                            break;
                        case 1:
                            m4832h();
                            this.f7701c.f7399e = 1;
                            break;
                        case 2:
                            fragment.f7416t = false;
                            fragment.f7399e = 2;
                            break;
                        case 3:
                            if (FragmentManager.isLoggingEnabled(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.f7701c);
                            }
                            Fragment fragment5 = this.f7701c;
                            if (fragment5.f7414r) {
                                this.f7700b.m53817C(fragment5.f7404j, m4842r());
                            } else if (fragment5.f7429z0 != null && fragment5.f7401g == null) {
                                m4843s();
                            }
                            Fragment fragment6 = this.f7701c;
                            if (fragment6.f7429z0 != null && (viewGroup2 = fragment6.f7427y0) != null) {
                                SpecialEffectsController.getOrCreateController(viewGroup2, fragment6.getParentFragmentManager()).enqueueRemove(this);
                            }
                            this.f7701c.f7399e = 3;
                            break;
                        case 4:
                            m4846v();
                            break;
                        case 5:
                            fragment.f7399e = 5;
                            break;
                        case 6:
                            m4838n();
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            m4827c();
                            break;
                        case 1:
                            m4829e();
                            break;
                        case 2:
                            m4834j();
                            m4830f();
                            break;
                        case 3:
                            m4825a();
                            break;
                        case 4:
                            if (fragment.f7429z0 != null && (viewGroup3 = fragment.f7427y0) != null) {
                                SpecialEffectsController.getOrCreateController(viewGroup3, fragment.getParentFragmentManager()).enqueueAdd(SpecialEffectsController.Operation.State.from(this.f7701c.f7429z0.getVisibility()), this);
                            }
                            this.f7701c.f7399e = 4;
                            break;
                        case 5:
                            m4845u();
                            break;
                        case 6:
                            fragment.f7399e = 6;
                            break;
                        case 7:
                            m4840p();
                            break;
                    }
                }
                z = true;
            }
        } finally {
            this.f7702d = false;
        }
    }

    /* renamed from: n */
    public void m4838n() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.f7701c);
        }
        this.f7701c.m4556Q();
        this.f7699a.m4814f(this.f7701c, false);
    }

    /* renamed from: o */
    public void m4839o(@NonNull ClassLoader classLoader) {
        Bundle bundle = this.f7701c.f7400f;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (this.f7701c.f7400f.getBundle(f7693h) == null) {
            this.f7701c.f7400f.putBundle(f7693h, new Bundle());
        }
        Fragment fragment = this.f7701c;
        fragment.f7401g = fragment.f7400f.getSparseParcelableArray(f7696k);
        Fragment fragment2 = this.f7701c;
        fragment2.f7402h = fragment2.f7400f.getBundle(f7697l);
        FragmentState fragmentState = (FragmentState) this.f7701c.f7400f.getParcelable("state");
        if (fragmentState != null) {
            Fragment fragment3 = this.f7701c;
            fragment3.f7408m = fragmentState.mTargetWho;
            fragment3.f7409n = fragmentState.mTargetRequestCode;
            Boolean bool = fragment3.f7403i;
            if (bool != null) {
                fragment3.f7378B0 = bool.booleanValue();
                this.f7701c.f7403i = null;
            } else {
                fragment3.f7378B0 = fragmentState.mUserVisibleHint;
            }
        }
        Fragment fragment4 = this.f7701c;
        if (fragment4.f7378B0) {
            return;
        }
        fragment4.f7377A0 = true;
    }

    /* renamed from: p */
    public void m4840p() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.f7701c);
        }
        View m4585l = this.f7701c.m4585l();
        if (m4585l != null && m4836l(m4585l)) {
            boolean requestFocus = m4585l.requestFocus();
            if (FragmentManager.isLoggingEnabled(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("requestFocus: Restoring focused view ");
                sb.append(m4585l);
                sb.append(" ");
                sb.append(requestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.f7701c);
                sb.append(" resulting in focused view ");
                sb.append(this.f7701c.f7429z0.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        this.f7701c.m4575f0(null);
        this.f7701c.m4560U();
        this.f7699a.m4817i(this.f7701c, false);
        this.f7700b.m53817C(this.f7701c.f7404j, null);
        Fragment fragment = this.f7701c;
        fragment.f7400f = null;
        fragment.f7401g = null;
        fragment.f7402h = null;
    }

    @Nullable
    /* renamed from: q */
    public Fragment.SavedState m4841q() {
        if (this.f7701c.f7399e > -1) {
            return new Fragment.SavedState(m4842r());
        }
        return null;
    }

    @NonNull
    /* renamed from: r */
    public Bundle m4842r() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        Fragment fragment = this.f7701c;
        if (fragment.f7399e == -1 && (bundle = fragment.f7400f) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new FragmentState(this.f7701c));
        if (this.f7701c.f7399e > -1) {
            Bundle bundle3 = new Bundle();
            this.f7701c.m4561V(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle(f7693h, bundle3);
            }
            this.f7699a.m4818j(this.f7701c, bundle3, false);
            Bundle bundle4 = new Bundle();
            this.f7701c.f7391N0.performSave(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle(f7694i, bundle4);
            }
            Bundle m4626G0 = this.f7701c.f7428z.m4626G0();
            if (!m4626G0.isEmpty()) {
                bundle2.putBundle(f7695j, m4626G0);
            }
            if (this.f7701c.f7429z0 != null) {
                m4843s();
            }
            SparseArray<Parcelable> sparseArray = this.f7701c.f7401g;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray(f7696k, sparseArray);
            }
            Bundle bundle5 = this.f7701c.f7402h;
            if (bundle5 != null) {
                bundle2.putBundle(f7697l, bundle5);
            }
        }
        Bundle bundle6 = this.f7701c.f7405k;
        if (bundle6 != null) {
            bundle2.putBundle(f7698m, bundle6);
        }
        return bundle2;
    }

    /* renamed from: s */
    public void m4843s() {
        if (this.f7701c.f7429z0 == null) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + this.f7701c + " with view " + this.f7701c.f7429z0);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f7701c.f7429z0.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f7701c.f7401g = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f7701c.f7388K0.m54800e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f7701c.f7402h = bundle;
    }

    /* renamed from: t */
    public void m4844t(int i) {
        this.f7703e = i;
    }

    /* renamed from: u */
    public void m4845u() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.f7701c);
        }
        this.f7701c.m4562W();
        this.f7699a.m4819k(this.f7701c, false);
    }

    /* renamed from: v */
    public void m4846v() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.f7701c);
        }
        this.f7701c.m4563X();
        this.f7699a.m4820l(this.f7701c, false);
    }

    public C1126e(@NonNull C1125d c1125d, @NonNull dvg dvgVar, @NonNull ClassLoader classLoader, @NonNull FragmentFactory fragmentFactory, @NonNull Bundle bundle) {
        this.f7699a = c1125d;
        this.f7700b = dvgVar;
        Fragment instantiate = ((FragmentState) bundle.getParcelable("state")).instantiate(fragmentFactory, classLoader);
        this.f7701c = instantiate;
        instantiate.f7400f = bundle;
        Bundle bundle2 = bundle.getBundle(f7698m);
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        instantiate.setArguments(bundle2);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + instantiate);
        }
    }

    public C1126e(@NonNull C1125d c1125d, @NonNull dvg dvgVar, @NonNull Fragment fragment, @NonNull Bundle bundle) {
        this.f7699a = c1125d;
        this.f7700b = dvgVar;
        this.f7701c = fragment;
        fragment.f7401g = null;
        fragment.f7402h = null;
        fragment.f7422w = 0;
        fragment.f7416t = false;
        fragment.f7411p = false;
        Fragment fragment2 = fragment.f7407l;
        fragment.f7408m = fragment2 != null ? fragment2.f7404j : null;
        fragment.f7407l = null;
        fragment.f7400f = bundle;
        fragment.f7405k = bundle.getBundle(f7698m);
    }
}
