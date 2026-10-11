package androidx.fragment.app;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultCaller;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.AnimRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ContentView;
import androidx.annotation.LayoutRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.UiThread;
import androidx.arch.core.util.Function;
import androidx.core.app.ActivityOptionsCompat;
import androidx.core.app.SharedElementCallback;
import androidx.core.view.LayoutInflaterCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.loader.app.LoaderManager;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.ivg;
import com.sunia.HTREnginev2.uug;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public class Fragment implements ComponentCallbacks, View.OnCreateContextMenuListener, LifecycleOwner, ViewModelStoreOwner, HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ActivityResultCaller {

    /* renamed from: S0 */
    public static final Object f7367S0 = new Object();

    /* renamed from: T0 */
    public static final int f7368T0 = -1;

    /* renamed from: U0 */
    public static final int f7369U0 = 0;

    /* renamed from: V0 */
    public static final int f7370V0 = 1;

    /* renamed from: W0 */
    public static final int f7371W0 = 2;

    /* renamed from: X0 */
    public static final int f7372X0 = 3;

    /* renamed from: Y0 */
    public static final int f7373Y0 = 4;

    /* renamed from: Z0 */
    public static final int f7374Z0 = 5;

    /* renamed from: a1 */
    public static final int f7375a1 = 6;

    /* renamed from: b1 */
    public static final int f7376b1 = 7;

    /* renamed from: A0 */
    public boolean f7377A0;

    /* renamed from: B0 */
    public boolean f7378B0;

    /* renamed from: C0 */
    public C1090j f7379C0;

    /* renamed from: D0 */
    public Handler f7380D0;

    /* renamed from: E0 */
    public Runnable f7381E0;

    /* renamed from: F0 */
    public boolean f7382F0;

    /* renamed from: G0 */
    public LayoutInflater f7383G0;

    /* renamed from: H0 */
    public boolean f7384H0;

    /* renamed from: I0 */
    public Lifecycle.State f7385I0;

    /* renamed from: J */
    public Fragment f7386J;

    /* renamed from: J0 */
    public LifecycleRegistry f7387J0;

    /* renamed from: K0 */
    @Nullable
    public ivg f7388K0;

    /* renamed from: L0 */
    public MutableLiveData<LifecycleOwner> f7389L0;

    /* renamed from: M0 */
    public ViewModelProvider.Factory f7390M0;

    /* renamed from: N0 */
    public SavedStateRegistryController f7391N0;

    /* renamed from: O */
    public int f7392O;

    /* renamed from: O0 */
    @LayoutRes
    public int f7393O0;

    /* renamed from: P0 */
    public final AtomicInteger f7394P0;

    /* renamed from: Q */
    public int f7395Q;

    /* renamed from: Q0 */
    public final ArrayList<AbstractC1092l> f7396Q0;

    /* renamed from: R0 */
    public final AbstractC1092l f7397R0;

    /* renamed from: Z */
    public String f7398Z;

    /* renamed from: e */
    public int f7399e;

    /* renamed from: f */
    public Bundle f7400f;

    /* renamed from: g */
    public SparseArray<Parcelable> f7401g;

    /* renamed from: h */
    public Bundle f7402h;

    /* renamed from: i */
    @Nullable
    public Boolean f7403i;

    /* renamed from: j */
    @NonNull
    public String f7404j;

    /* renamed from: k */
    public Bundle f7405k;

    /* renamed from: k0 */
    public boolean f7406k0;

    /* renamed from: l */
    public Fragment f7407l;

    /* renamed from: m */
    public String f7408m;

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String mPreviousWho;

    /* renamed from: n */
    public int f7409n;

    /* renamed from: o */
    public Boolean f7410o;

    /* renamed from: p */
    public boolean f7411p;

    /* renamed from: q */
    public boolean f7412q;

    /* renamed from: q0 */
    public boolean f7413q0;

    /* renamed from: r */
    public boolean f7414r;

    /* renamed from: s */
    public boolean f7415s;

    /* renamed from: t */
    public boolean f7416t;

    /* renamed from: t0 */
    public boolean f7417t0;

    /* renamed from: u */
    public boolean f7418u;

    /* renamed from: u0 */
    public boolean f7419u0;

    /* renamed from: v */
    public boolean f7420v;

    /* renamed from: v0 */
    public boolean f7421v0;

    /* renamed from: w */
    public int f7422w;

    /* renamed from: w0 */
    public boolean f7423w0;

    /* renamed from: x */
    public FragmentManager f7424x;

    /* renamed from: x0 */
    public boolean f7425x0;

    /* renamed from: y */
    public FragmentHostCallback<?> f7426y;

    /* renamed from: y0 */
    public ViewGroup f7427y0;

    /* renamed from: z */
    @NonNull
    public FragmentManager f7428z;

    /* renamed from: z0 */
    public View f7429z0;

    /* loaded from: classes3.dex */
    public static class InstantiationException extends RuntimeException {
        public InstantiationException(@NonNull String str, @Nullable Exception exc) {
            super(str, exc);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    /* renamed from: androidx.fragment.app.Fragment$a */
    /* loaded from: classes3.dex */
    public class C1081a<I> extends ActivityResultLauncher<I> {

        /* renamed from: a */
        public final /* synthetic */ AtomicReference f7431a;

        /* renamed from: b */
        public final /* synthetic */ ActivityResultContract f7432b;

        public C1081a(AtomicReference atomicReference, ActivityResultContract activityResultContract) {
            this.f7431a = atomicReference;
            this.f7432b = activityResultContract;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        @NonNull
        public ActivityResultContract<I, ?> getContract() {
            return this.f7432b;
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void launch(I i, @Nullable ActivityOptionsCompat activityOptionsCompat) {
            ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.f7431a.get();
            if (activityResultLauncher == null) {
                throw new IllegalStateException("Operation cannot be started before fragment is in created state");
            }
            activityResultLauncher.launch(i, activityOptionsCompat);
        }

        @Override // androidx.activity.result.ActivityResultLauncher
        public void unregister() {
            ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.f7431a.getAndSet(null);
            if (activityResultLauncher != null) {
                activityResultLauncher.unregister();
            }
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$b */
    /* loaded from: classes3.dex */
    public class RunnableC1082b implements Runnable {
        public RunnableC1082b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.startPostponedEnterTransition();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$c */
    /* loaded from: classes3.dex */
    public class C1083c extends AbstractC1092l {
        public C1083c() {
            super(null);
        }

        @Override // androidx.fragment.app.Fragment.AbstractC1092l
        /* renamed from: a */
        public void mo4602a() {
            Fragment.this.f7391N0.performAttach();
            SavedStateHandleSupport.enableSavedStateHandles(Fragment.this);
            Bundle bundle = Fragment.this.f7400f;
            Fragment.this.f7391N0.performRestore(bundle != null ? bundle.getBundle(C1126e.f7694i) : null);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$d */
    /* loaded from: classes3.dex */
    public class RunnableC1084d implements Runnable {
        public RunnableC1084d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Fragment.this.m4567b(false);
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$e */
    /* loaded from: classes3.dex */
    public class RunnableC1085e implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ SpecialEffectsController f7437e;

        public RunnableC1085e(SpecialEffectsController specialEffectsController) {
            this.f7437e = specialEffectsController;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f7437e.executePendingOperations();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$f */
    /* loaded from: classes3.dex */
    public class C1086f extends FragmentContainer {
        public C1086f() {
        }

        @Override // androidx.fragment.app.FragmentContainer
        @Nullable
        public View onFindViewById(int i) {
            View view = Fragment.this.f7429z0;
            if (view != null) {
                return view.findViewById(i);
            }
            throw new IllegalStateException("Fragment " + Fragment.this + " does not have a view");
        }

        @Override // androidx.fragment.app.FragmentContainer
        public boolean onHasView() {
            return Fragment.this.f7429z0 != null;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$g */
    /* loaded from: classes3.dex */
    public class C1087g implements Function<Void, ActivityResultRegistry> {
        public C1087g() {
        }

        @Override // androidx.arch.core.util.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActivityResultRegistry apply(Void r2) {
            Fragment fragment = Fragment.this;
            Object obj = fragment.f7426y;
            return obj instanceof ActivityResultRegistryOwner ? ((ActivityResultRegistryOwner) obj).getActivityResultRegistry() : fragment.requireActivity().getActivityResultRegistry();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$h */
    /* loaded from: classes3.dex */
    public class C1088h implements Function<Void, ActivityResultRegistry> {

        /* renamed from: a */
        public final /* synthetic */ ActivityResultRegistry f7441a;

        public C1088h(ActivityResultRegistry activityResultRegistry) {
            this.f7441a = activityResultRegistry;
        }

        @Override // androidx.arch.core.util.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ActivityResultRegistry apply(Void r1) {
            return this.f7441a;
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$i */
    /* loaded from: classes3.dex */
    public class C1089i extends AbstractC1092l {

        /* renamed from: a */
        public final /* synthetic */ Function f7443a;

        /* renamed from: b */
        public final /* synthetic */ AtomicReference f7444b;

        /* renamed from: c */
        public final /* synthetic */ ActivityResultContract f7445c;

        /* renamed from: d */
        public final /* synthetic */ ActivityResultCallback f7446d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1089i(Function function, AtomicReference atomicReference, ActivityResultContract activityResultContract, ActivityResultCallback activityResultCallback) {
            super(null);
            this.f7443a = function;
            this.f7444b = atomicReference;
            this.f7445c = activityResultContract;
            this.f7446d = activityResultCallback;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC1092l
        /* renamed from: a */
        public void mo4602a() {
            String m4574f = Fragment.this.m4574f();
            this.f7444b.set(((ActivityResultRegistry) this.f7443a.apply(null)).register(m4574f, Fragment.this, this.f7445c, this.f7446d));
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$j */
    /* loaded from: classes3.dex */
    public static class C1090j {

        /* renamed from: a */
        public View f7448a;

        /* renamed from: b */
        public boolean f7449b;

        /* renamed from: c */
        @AnimRes
        public int f7450c;

        /* renamed from: d */
        @AnimRes
        public int f7451d;

        /* renamed from: e */
        @AnimRes
        public int f7452e;

        /* renamed from: f */
        @AnimRes
        public int f7453f;

        /* renamed from: g */
        public int f7454g;

        /* renamed from: h */
        public ArrayList<String> f7455h;

        /* renamed from: i */
        public ArrayList<String> f7456i;

        /* renamed from: j */
        public Object f7457j = null;

        /* renamed from: k */
        public Object f7458k;

        /* renamed from: l */
        public Object f7459l;

        /* renamed from: m */
        public Object f7460m;

        /* renamed from: n */
        public Object f7461n;

        /* renamed from: o */
        public Object f7462o;

        /* renamed from: p */
        public Boolean f7463p;

        /* renamed from: q */
        public Boolean f7464q;

        /* renamed from: r */
        public SharedElementCallback f7465r;

        /* renamed from: s */
        public SharedElementCallback f7466s;

        /* renamed from: t */
        public float f7467t;

        /* renamed from: u */
        public View f7468u;

        /* renamed from: v */
        public boolean f7469v;

        public C1090j() {
            Object obj = Fragment.f7367S0;
            this.f7458k = obj;
            this.f7459l = null;
            this.f7460m = obj;
            this.f7461n = null;
            this.f7462o = obj;
            this.f7465r = null;
            this.f7466s = null;
            this.f7467t = 1.0f;
            this.f7468u = null;
        }
    }

    @RequiresApi(19)
    /* renamed from: androidx.fragment.app.Fragment$k */
    /* loaded from: classes3.dex */
    public static class C1091k {
        /* renamed from: a */
        public static void m4605a(@NonNull View view) {
            view.cancelPendingInputEvents();
        }
    }

    /* renamed from: androidx.fragment.app.Fragment$l */
    /* loaded from: classes3.dex */
    public static abstract class AbstractC1092l {
        public AbstractC1092l() {
        }

        /* renamed from: a */
        public abstract void mo4602a();

        public /* synthetic */ AbstractC1092l(RunnableC1082b runnableC1082b) {
            this();
        }
    }

    public Fragment() {
        this.f7399e = -1;
        this.f7404j = UUID.randomUUID().toString();
        this.f7408m = null;
        this.f7410o = null;
        this.f7428z = new uug();
        this.f7423w0 = true;
        this.f7378B0 = true;
        this.f7381E0 = new RunnableC1082b();
        this.f7385I0 = Lifecycle.State.RESUMED;
        this.f7389L0 = new MutableLiveData<>();
        this.f7394P0 = new AtomicInteger();
        this.f7396Q0 = new ArrayList<>();
        this.f7397R0 = new C1083c();
        m4595v();
    }

    @NonNull
    @Deprecated
    public static Fragment instantiate(@NonNull Context context, @NonNull String str) {
        return instantiate(context, str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public /* synthetic */ void m4540z() {
        this.f7388K0.m54799d(this.f7402h);
        this.f7402h = null;
    }

    /* renamed from: A */
    public void m4541A() {
        this.f7428z.m4670P0();
    }

    /* renamed from: B */
    public void m4542B(Bundle bundle) {
        this.f7428z.m4670P0();
        this.f7399e = 3;
        this.f7425x0 = false;
        onActivityCreated(bundle);
        if (this.f7425x0) {
            m4569c0();
            this.f7428z.m4742x();
        } else {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onActivityCreated()");
        }
    }

    /* renamed from: C */
    public void m4543C() {
        Iterator<AbstractC1092l> it2 = this.f7396Q0.iterator();
        while (it2.hasNext()) {
            it2.next().mo4602a();
        }
        this.f7396Q0.clear();
        this.f7428z.m4715m(this.f7426y, mo4533c(), this);
        this.f7399e = 0;
        this.f7425x0 = false;
        onAttach(this.f7426y.m4623b());
        if (this.f7425x0) {
            this.f7424x.m4657H(this);
            this.f7428z.m4744y();
        } else {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onAttach()");
        }
    }

    /* renamed from: D */
    public void m4544D(@NonNull Configuration configuration) {
        onConfigurationChanged(configuration);
    }

    /* renamed from: E */
    public boolean m4545E(@NonNull MenuItem menuItem) {
        if (this.f7406k0) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.f7428z.m4644A(menuItem);
    }

    /* renamed from: F */
    public void m4546F(Bundle bundle) {
        this.f7428z.m4670P0();
        this.f7399e = 1;
        this.f7425x0 = false;
        this.f7387J0.addObserver(new LifecycleEventObserver() { // from class: androidx.fragment.app.Fragment.6
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                View view;
                if (event != Lifecycle.Event.ON_STOP || (view = Fragment.this.f7429z0) == null) {
                    return;
                }
                C1091k.m4605a(view);
            }
        });
        onCreate(bundle);
        this.f7384H0 = true;
        if (this.f7425x0) {
            this.f7387J0.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onCreate()");
    }

    /* renamed from: G */
    public boolean m4547G(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        boolean z = false;
        if (this.f7406k0) {
            return false;
        }
        if (this.f7421v0 && this.f7423w0) {
            onCreateOptionsMenu(menu, menuInflater);
            z = true;
        }
        return z | this.f7428z.m4648C(menu, menuInflater);
    }

    /* renamed from: H */
    public void mo4532H(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.f7428z.m4670P0();
        this.f7420v = true;
        this.f7388K0 = new ivg(this, getViewModelStore(), new Runnable() { // from class: com.sunia.HTREnginev2.iug
            @Override // java.lang.Runnable
            public final void run() {
                Fragment.this.m4540z();
            }
        });
        View onCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.f7429z0 = onCreateView;
        if (onCreateView == null) {
            if (this.f7388K0.m54798c()) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.f7388K0 = null;
            return;
        }
        this.f7388K0.m54797b();
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Setting ViewLifecycleOwner on View " + this.f7429z0 + " for Fragment " + this);
        }
        ViewTreeLifecycleOwner.set(this.f7429z0, this.f7388K0);
        ViewTreeViewModelStoreOwner.set(this.f7429z0, this.f7388K0);
        ViewTreeSavedStateRegistryOwner.set(this.f7429z0, this.f7388K0);
        this.f7389L0.setValue(this.f7388K0);
    }

    /* renamed from: I */
    public void m4548I() {
        this.f7428z.m4650D();
        this.f7387J0.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
        this.f7399e = 0;
        this.f7425x0 = false;
        this.f7384H0 = false;
        onDestroy();
        if (this.f7425x0) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroy()");
    }

    /* renamed from: J */
    public void m4549J() {
        this.f7428z.m4652E();
        if (this.f7429z0 != null && this.f7388K0.getLifecycle().getState().isAtLeast(Lifecycle.State.CREATED)) {
            this.f7388K0.m54796a(Lifecycle.Event.ON_DESTROY);
        }
        this.f7399e = 1;
        this.f7425x0 = false;
        onDestroyView();
        if (this.f7425x0) {
            LoaderManager.getInstance(this).markForRedelivery();
            this.f7420v = false;
        } else {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDestroyView()");
        }
    }

    /* renamed from: K */
    public void m4550K() {
        this.f7399e = -1;
        this.f7425x0 = false;
        onDetach();
        this.f7383G0 = null;
        if (this.f7425x0) {
            if (this.f7428z.isDestroyed()) {
                return;
            }
            this.f7428z.m4650D();
            this.f7428z = new uug();
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onDetach()");
    }

    @NonNull
    /* renamed from: L */
    public LayoutInflater m4551L(@Nullable Bundle bundle) {
        LayoutInflater onGetLayoutInflater = onGetLayoutInflater(bundle);
        this.f7383G0 = onGetLayoutInflater;
        return onGetLayoutInflater;
    }

    /* renamed from: M */
    public void m4552M() {
        onLowMemory();
    }

    /* renamed from: N */
    public void m4553N(boolean z) {
        onMultiWindowModeChanged(z);
    }

    /* renamed from: O */
    public boolean m4554O(@NonNull MenuItem menuItem) {
        if (this.f7406k0) {
            return false;
        }
        if (this.f7421v0 && this.f7423w0 && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.f7428z.m4659J(menuItem);
    }

    /* renamed from: P */
    public void m4555P(@NonNull Menu menu) {
        if (this.f7406k0) {
            return;
        }
        if (this.f7421v0 && this.f7423w0) {
            onOptionsMenuClosed(menu);
        }
        this.f7428z.m4660K(menu);
    }

    /* renamed from: Q */
    public void m4556Q() {
        this.f7428z.m4663M();
        if (this.f7429z0 != null) {
            this.f7388K0.m54796a(Lifecycle.Event.ON_PAUSE);
        }
        this.f7387J0.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        this.f7399e = 6;
        this.f7425x0 = false;
        onPause();
        if (this.f7425x0) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onPause()");
    }

    /* renamed from: R */
    public void m4557R(boolean z) {
        onPictureInPictureModeChanged(z);
    }

    /* renamed from: S */
    public boolean m4558S(@NonNull Menu menu) {
        boolean z = false;
        if (this.f7406k0) {
            return false;
        }
        if (this.f7421v0 && this.f7423w0) {
            onPrepareOptionsMenu(menu);
            z = true;
        }
        return z | this.f7428z.m4667O(menu);
    }

    /* renamed from: T */
    public void m4559T() {
        boolean m4653E0 = this.f7424x.m4653E0(this);
        Boolean bool = this.f7410o;
        if (bool == null || bool.booleanValue() != m4653E0) {
            this.f7410o = Boolean.valueOf(m4653E0);
            onPrimaryNavigationFragmentChanged(m4653E0);
            this.f7428z.m4669P();
        }
    }

    /* renamed from: U */
    public void m4560U() {
        this.f7428z.m4670P0();
        this.f7428z.m4689Z(true);
        this.f7399e = 7;
        this.f7425x0 = false;
        onResume();
        if (!this.f7425x0) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onResume()");
        }
        LifecycleRegistry lifecycleRegistry = this.f7387J0;
        Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
        lifecycleRegistry.handleLifecycleEvent(event);
        if (this.f7429z0 != null) {
            this.f7388K0.m54796a(event);
        }
        this.f7428z.m4671Q();
    }

    /* renamed from: V */
    public void m4561V(Bundle bundle) {
        onSaveInstanceState(bundle);
    }

    /* renamed from: W */
    public void m4562W() {
        this.f7428z.m4670P0();
        this.f7428z.m4689Z(true);
        this.f7399e = 5;
        this.f7425x0 = false;
        onStart();
        if (!this.f7425x0) {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStart()");
        }
        LifecycleRegistry lifecycleRegistry = this.f7387J0;
        Lifecycle.Event event = Lifecycle.Event.ON_START;
        lifecycleRegistry.handleLifecycleEvent(event);
        if (this.f7429z0 != null) {
            this.f7388K0.m54796a(event);
        }
        this.f7428z.m4673R();
    }

    /* renamed from: X */
    public void m4563X() {
        this.f7428z.m4677T();
        if (this.f7429z0 != null) {
            this.f7388K0.m54796a(Lifecycle.Event.ON_STOP);
        }
        this.f7387J0.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        this.f7399e = 4;
        this.f7425x0 = false;
        onStop();
        if (this.f7425x0) {
            return;
        }
        throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onStop()");
    }

    /* renamed from: Y */
    public void m4564Y() {
        Bundle bundle = this.f7400f;
        onViewCreated(this.f7429z0, bundle != null ? bundle.getBundle(C1126e.f7693h) : null);
        this.f7428z.m4679U();
    }

    @NonNull
    /* renamed from: Z */
    public final <I, O> ActivityResultLauncher<I> m4565Z(@NonNull ActivityResultContract<I, O> activityResultContract, @NonNull Function<Void, ActivityResultRegistry> function, @NonNull ActivityResultCallback<O> activityResultCallback) {
        if (this.f7399e <= 1) {
            AtomicReference atomicReference = new AtomicReference();
            m4566a0(new C1089i(function, atomicReference, activityResultContract, activityResultCallback));
            return new C1081a(atomicReference, activityResultContract);
        }
        throw new IllegalStateException("Fragment " + this + " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate()).");
    }

    /* renamed from: a0 */
    public final void m4566a0(@NonNull AbstractC1092l abstractC1092l) {
        if (this.f7399e >= 0) {
            abstractC1092l.mo4602a();
        } else {
            this.f7396Q0.add(abstractC1092l);
        }
    }

    /* renamed from: b */
    public void m4567b(boolean z) {
        ViewGroup viewGroup;
        FragmentManager fragmentManager;
        C1090j c1090j = this.f7379C0;
        if (c1090j != null) {
            c1090j.f7469v = false;
        }
        if (this.f7429z0 == null || (viewGroup = this.f7427y0) == null || (fragmentManager = this.f7424x) == null) {
            return;
        }
        SpecialEffectsController orCreateController = SpecialEffectsController.getOrCreateController(viewGroup, fragmentManager);
        orCreateController.markPostponedState();
        if (z) {
            this.f7426y.getHandler().post(new RunnableC1085e(orCreateController));
        } else {
            orCreateController.executePendingOperations();
        }
        Handler handler = this.f7380D0;
        if (handler != null) {
            handler.removeCallbacks(this.f7381E0);
            this.f7380D0 = null;
        }
    }

    /* renamed from: b0 */
    public void m4568b0() {
        Bundle bundle;
        Bundle bundle2 = this.f7400f;
        if (bundle2 == null || (bundle = bundle2.getBundle(C1126e.f7695j)) == null) {
            return;
        }
        this.f7428z.m4695c1(bundle);
        this.f7428z.m4646B();
    }

    @NonNull
    /* renamed from: c */
    public FragmentContainer mo4533c() {
        return new C1086f();
    }

    /* renamed from: c0 */
    public final void m4569c0() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.f7429z0 != null) {
            Bundle bundle = this.f7400f;
            m4571d0(bundle != null ? bundle.getBundle(C1126e.f7693h) : null);
        }
        this.f7400f = null;
    }

    /* renamed from: d */
    public final C1090j m4570d() {
        if (this.f7379C0 == null) {
            this.f7379C0 = new C1090j();
        }
        return this.f7379C0;
    }

    /* renamed from: d0 */
    public final void m4571d0(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = this.f7401g;
        if (sparseArray != null) {
            this.f7429z0.restoreHierarchyState(sparseArray);
            this.f7401g = null;
        }
        this.f7425x0 = false;
        onViewStateRestored(bundle);
        if (this.f7425x0) {
            if (this.f7429z0 != null) {
                this.f7388K0.m54796a(Lifecycle.Event.ON_CREATE);
            }
        } else {
            throw new SuperNotCalledException("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.f7392O));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.f7395Q));
        printWriter.print(" mTag=");
        printWriter.println(this.f7398Z);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f7399e);
        printWriter.print(" mWho=");
        printWriter.print(this.f7404j);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f7422w);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f7411p);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f7412q);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f7415s);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f7416t);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.f7406k0);
        printWriter.print(" mDetached=");
        printWriter.print(this.f7413q0);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.f7423w0);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.f7421v0);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.f7417t0);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.f7378B0);
        if (this.f7424x != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f7424x);
        }
        if (this.f7426y != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f7426y);
        }
        if (this.f7386J != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.f7386J);
        }
        if (this.f7405k != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f7405k);
        }
        if (this.f7400f != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f7400f);
        }
        if (this.f7401g != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f7401g);
        }
        if (this.f7402h != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.f7402h);
        }
        Fragment m4594u = m4594u(false);
        if (m4594u != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(m4594u);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f7409n);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        printWriter.println(m4588o());
        if (m4578h() != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            printWriter.println(m4578h());
        }
        if (m4582j() != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            printWriter.println(m4582j());
        }
        if (m4589p() != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            printWriter.println(m4589p());
        }
        if (m4590q() != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            printWriter.println(m4590q());
        }
        if (this.f7427y0 != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.f7427y0);
        }
        if (this.f7429z0 != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.f7429z0);
        }
        if (m4576g() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(m4576g());
        }
        if (getContext() != null) {
            LoaderManager.getInstance(this).dump(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.f7428z + ":");
        this.f7428z.dump(str + GlideException.C1935a.f14609h, fileDescriptor, printWriter, strArr);
    }

    @Nullable
    /* renamed from: e */
    public Fragment m4572e(@NonNull String str) {
        return str.equals(this.f7404j) ? this : this.f7428z.m4699f0(str);
    }

    /* renamed from: e0 */
    public void m4573e0(@AnimRes int i, @AnimRes int i2, @AnimRes int i3, @AnimRes int i4) {
        if (this.f7379C0 == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        m4570d().f7450c = i;
        m4570d().f7451d = i2;
        m4570d().f7452e = i3;
        m4570d().f7453f = i4;
    }

    public final boolean equals(@Nullable Object obj) {
        return super.equals(obj);
    }

    @NonNull
    /* renamed from: f */
    public String m4574f() {
        return FragmentManager.f7491V + this.f7404j + "_rq#" + this.f7394P0.getAndIncrement();
    }

    /* renamed from: f0 */
    public void m4575f0(View view) {
        m4570d().f7468u = view;
    }

    /* renamed from: g */
    public View m4576g() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        return c1090j.f7448a;
    }

    /* renamed from: g0 */
    public void m4577g0(int i) {
        if (this.f7379C0 == null && i == 0) {
            return;
        }
        m4570d();
        this.f7379C0.f7454g = i;
    }

    @Nullable
    public final FragmentActivity getActivity() {
        FragmentHostCallback<?> fragmentHostCallback = this.f7426y;
        if (fragmentHostCallback == null) {
            return null;
        }
        return (FragmentActivity) fragmentHostCallback.m4622a();
    }

    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool;
        C1090j c1090j = this.f7379C0;
        if (c1090j == null || (bool = c1090j.f7464q) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool;
        C1090j c1090j = this.f7379C0;
        if (c1090j == null || (bool = c1090j.f7463p) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    @Nullable
    public final Bundle getArguments() {
        return this.f7405k;
    }

    @NonNull
    public final FragmentManager getChildFragmentManager() {
        if (this.f7426y != null) {
            return this.f7428z;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    @Nullable
    public Context getContext() {
        FragmentHostCallback<?> fragmentHostCallback = this.f7426y;
        if (fragmentHostCallback == null) {
            return null;
        }
        return fragmentHostCallback.m4623b();
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @NonNull
    @CallSuper
    public CreationExtras getDefaultViewModelCreationExtras() {
        Application application;
        Context applicationContext = requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras();
        if (application != null) {
            mutableCreationExtras.set(ViewModelProvider.AndroidViewModelFactory.APPLICATION_KEY, application);
        }
        mutableCreationExtras.set(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY, this);
        mutableCreationExtras.set(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY, this);
        if (getArguments() != null) {
            mutableCreationExtras.set(SavedStateHandleSupport.DEFAULT_ARGS_KEY, getArguments());
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    @NonNull
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        Application application;
        if (this.f7424x == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.f7390M0 == null) {
            Context applicationContext = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "Could not find Application instance from Context " + requireContext().getApplicationContext() + ", you will need CreationExtras to use AndroidViewModel with the default ViewModelProvider.Factory");
            }
            this.f7390M0 = new SavedStateViewModelFactory(application, this, getArguments());
        }
        return this.f7390M0;
    }

    @Nullable
    public Object getEnterTransition() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        return c1090j.f7457j;
    }

    @Nullable
    public Object getExitTransition() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        return c1090j.f7459l;
    }

    @Nullable
    @Deprecated
    public final FragmentManager getFragmentManager() {
        return this.f7424x;
    }

    @Nullable
    public final Object getHost() {
        FragmentHostCallback<?> fragmentHostCallback = this.f7426y;
        if (fragmentHostCallback == null) {
            return null;
        }
        return fragmentHostCallback.onGetHost();
    }

    public final int getId() {
        return this.f7392O;
    }

    @NonNull
    public final LayoutInflater getLayoutInflater() {
        LayoutInflater layoutInflater = this.f7383G0;
        return layoutInflater == null ? m4551L(null) : layoutInflater;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        return this.f7387J0;
    }

    @NonNull
    @Deprecated
    public LoaderManager getLoaderManager() {
        return LoaderManager.getInstance(this);
    }

    @Nullable
    public final Fragment getParentFragment() {
        return this.f7386J;
    }

    @NonNull
    public final FragmentManager getParentFragmentManager() {
        FragmentManager fragmentManager = this.f7424x;
        if (fragmentManager != null) {
            return fragmentManager;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    @Nullable
    public Object getReenterTransition() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        Object obj = c1090j.f7460m;
        return obj == f7367S0 ? getExitTransition() : obj;
    }

    @NonNull
    public final Resources getResources() {
        return requireContext().getResources();
    }

    @Deprecated
    public final boolean getRetainInstance() {
        FragmentStrictMode.onGetRetainInstanceUsage(this);
        return this.f7417t0;
    }

    @Nullable
    public Object getReturnTransition() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        Object obj = c1090j.f7458k;
        return obj == f7367S0 ? getEnterTransition() : obj;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @NonNull
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.f7391N0.getSavedStateRegistry();
    }

    @Nullable
    public Object getSharedElementEnterTransition() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        return c1090j.f7461n;
    }

    @Nullable
    public Object getSharedElementReturnTransition() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        Object obj = c1090j.f7462o;
        return obj == f7367S0 ? getSharedElementEnterTransition() : obj;
    }

    @NonNull
    public final String getString(@StringRes int i) {
        return getResources().getString(i);
    }

    @Nullable
    public final String getTag() {
        return this.f7398Z;
    }

    @Nullable
    @Deprecated
    public final Fragment getTargetFragment() {
        return m4594u(true);
    }

    @Deprecated
    public final int getTargetRequestCode() {
        FragmentStrictMode.onGetTargetFragmentRequestCodeUsage(this);
        return this.f7409n;
    }

    @NonNull
    public final CharSequence getText(@StringRes int i) {
        return getResources().getText(i);
    }

    @Deprecated
    public boolean getUserVisibleHint() {
        return this.f7378B0;
    }

    @Nullable
    public View getView() {
        return this.f7429z0;
    }

    @NonNull
    @MainThread
    public LifecycleOwner getViewLifecycleOwner() {
        ivg ivgVar = this.f7388K0;
        if (ivgVar != null) {
            return ivgVar;
        }
        throw new IllegalStateException("Can't access the Fragment View's LifecycleOwner for " + this + " when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    @NonNull
    public LiveData<LifecycleOwner> getViewLifecycleOwnerLiveData() {
        return this.f7389L0;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    @NonNull
    public ViewModelStore getViewModelStore() {
        if (this.f7424x == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (m4586m() != Lifecycle.State.INITIALIZED.ordinal()) {
            return this.f7424x.m4741w0(this);
        }
        throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
    }

    @AnimRes
    /* renamed from: h */
    public int m4578h() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return 0;
        }
        return c1090j.f7450c;
    }

    /* renamed from: h0 */
    public void m4579h0(boolean z) {
        if (this.f7379C0 == null) {
            return;
        }
        m4570d().f7449b = z;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final boolean hasOptionsMenu() {
        return this.f7421v0;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    /* renamed from: i */
    public SharedElementCallback m4580i() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        return c1090j.f7465r;
    }

    /* renamed from: i0 */
    public void m4581i0(float f) {
        m4570d().f7467t = f;
    }

    public final boolean isAdded() {
        return this.f7426y != null && this.f7411p;
    }

    public final boolean isDetached() {
        return this.f7413q0;
    }

    public final boolean isHidden() {
        FragmentManager fragmentManager;
        return this.f7406k0 || ((fragmentManager = this.f7424x) != null && fragmentManager.m4649C0(this.f7386J));
    }

    public final boolean isInLayout() {
        return this.f7416t;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final boolean isMenuVisible() {
        FragmentManager fragmentManager;
        return this.f7423w0 && ((fragmentManager = this.f7424x) == null || fragmentManager.m4651D0(this.f7386J));
    }

    public final boolean isRemoving() {
        return this.f7412q;
    }

    public final boolean isResumed() {
        return this.f7399e >= 7;
    }

    public final boolean isStateSaved() {
        FragmentManager fragmentManager = this.f7424x;
        if (fragmentManager == null) {
            return false;
        }
        return fragmentManager.isStateSaved();
    }

    public final boolean isVisible() {
        View view;
        return (!isAdded() || isHidden() || (view = this.f7429z0) == null || view.getWindowToken() == null || this.f7429z0.getVisibility() != 0) ? false : true;
    }

    @AnimRes
    /* renamed from: j */
    public int m4582j() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return 0;
        }
        return c1090j.f7451d;
    }

    /* renamed from: j0 */
    public void m4583j0(@Nullable ArrayList<String> arrayList, @Nullable ArrayList<String> arrayList2) {
        m4570d();
        C1090j c1090j = this.f7379C0;
        c1090j.f7455h = arrayList;
        c1090j.f7456i = arrayList2;
    }

    /* renamed from: k */
    public SharedElementCallback m4584k() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        return c1090j.f7466s;
    }

    /* renamed from: l */
    public View m4585l() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return null;
        }
        return c1090j.f7468u;
    }

    /* renamed from: m */
    public final int m4586m() {
        Lifecycle.State state = this.f7385I0;
        return (state == Lifecycle.State.INITIALIZED || this.f7386J == null) ? state.ordinal() : Math.min(state.ordinal(), this.f7386J.m4586m());
    }

    /* renamed from: n */
    public int m4587n() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return 0;
        }
        return c1090j.f7454g;
    }

    /* renamed from: o */
    public boolean m4588o() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return false;
        }
        return c1090j.f7449b;
    }

    @CallSuper
    @MainThread
    @Deprecated
    public void onActivityCreated(@Nullable Bundle bundle) {
        this.f7425x0 = true;
    }

    @Deprecated
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    @CallSuper
    @MainThread
    public void onAttach(@NonNull Context context) {
        this.f7425x0 = true;
        FragmentHostCallback<?> fragmentHostCallback = this.f7426y;
        Activity m4622a = fragmentHostCallback == null ? null : fragmentHostCallback.m4622a();
        if (m4622a != null) {
            this.f7425x0 = false;
            onAttach(m4622a);
        }
    }

    @MainThread
    @Deprecated
    public void onAttachFragment(@NonNull Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    @CallSuper
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        this.f7425x0 = true;
    }

    @MainThread
    public boolean onContextItemSelected(@NonNull MenuItem menuItem) {
        return false;
    }

    @CallSuper
    @MainThread
    public void onCreate(@Nullable Bundle bundle) {
        this.f7425x0 = true;
        m4568b0();
        if (this.f7428z.m4655F0(1)) {
            return;
        }
        this.f7428z.m4646B();
    }

    @Nullable
    @MainThread
    public Animation onCreateAnimation(int i, boolean z, int i2) {
        return null;
    }

    @Nullable
    @MainThread
    public Animator onCreateAnimator(int i, boolean z, int i2) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    @MainThread
    public void onCreateContextMenu(@NonNull ContextMenu contextMenu, @NonNull View view, @Nullable ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @MainThread
    @Deprecated
    public void onCreateOptionsMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
    }

    @Nullable
    @MainThread
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i = this.f7393O0;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    @CallSuper
    @MainThread
    public void onDestroy() {
        this.f7425x0 = true;
    }

    @MainThread
    @Deprecated
    public void onDestroyOptionsMenu() {
    }

    @CallSuper
    @MainThread
    public void onDestroyView() {
        this.f7425x0 = true;
    }

    @CallSuper
    @MainThread
    public void onDetach() {
        this.f7425x0 = true;
    }

    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    @MainThread
    public void onHiddenChanged(boolean z) {
    }

    @CallSuper
    @UiThread
    public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet, @Nullable Bundle bundle) {
        this.f7425x0 = true;
        FragmentHostCallback<?> fragmentHostCallback = this.f7426y;
        Activity m4622a = fragmentHostCallback == null ? null : fragmentHostCallback.m4622a();
        if (m4622a != null) {
            this.f7425x0 = false;
            onInflate(m4622a, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    @CallSuper
    @MainThread
    public void onLowMemory() {
        this.f7425x0 = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    @MainThread
    @Deprecated
    public boolean onOptionsItemSelected(@NonNull MenuItem menuItem) {
        return false;
    }

    @MainThread
    @Deprecated
    public void onOptionsMenuClosed(@NonNull Menu menu) {
    }

    @CallSuper
    @MainThread
    public void onPause() {
        this.f7425x0 = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    @MainThread
    @Deprecated
    public void onPrepareOptionsMenu(@NonNull Menu menu) {
    }

    @MainThread
    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    @Deprecated
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
    }

    @CallSuper
    @MainThread
    public void onResume() {
        this.f7425x0 = true;
    }

    @MainThread
    public void onSaveInstanceState(@NonNull Bundle bundle) {
    }

    @CallSuper
    @MainThread
    public void onStart() {
        this.f7425x0 = true;
    }

    @CallSuper
    @MainThread
    public void onStop() {
        this.f7425x0 = true;
    }

    @MainThread
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
    }

    @CallSuper
    @MainThread
    public void onViewStateRestored(@Nullable Bundle bundle) {
        this.f7425x0 = true;
    }

    @AnimRes
    /* renamed from: p */
    public int m4589p() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return 0;
        }
        return c1090j.f7452e;
    }

    public void postponeEnterTransition() {
        m4570d().f7469v = true;
    }

    @AnimRes
    /* renamed from: q */
    public int m4590q() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return 0;
        }
        return c1090j.f7453f;
    }

    /* renamed from: r */
    public float m4591r() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return 1.0f;
        }
        return c1090j.f7467t;
    }

    @Override // androidx.activity.result.ActivityResultCaller
    @NonNull
    @MainThread
    public final <I, O> ActivityResultLauncher<I> registerForActivityResult(@NonNull ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultCallback<O> activityResultCallback) {
        return m4565Z(activityResultContract, new C1087g(), activityResultCallback);
    }

    public void registerForContextMenu(@NonNull View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @Deprecated
    public final void requestPermissions(@NonNull String[] strArr, int i) {
        if (this.f7426y != null) {
            getParentFragmentManager().m4662L0(this, strArr, i);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @NonNull
    public final FragmentActivity requireActivity() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    @NonNull
    public final Bundle requireArguments() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
    }

    @NonNull
    public final Context requireContext() {
        Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    @NonNull
    @Deprecated
    public final FragmentManager requireFragmentManager() {
        return getParentFragmentManager();
    }

    @NonNull
    public final Object requireHost() {
        Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }

    @NonNull
    public final Fragment requireParentFragment() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new IllegalStateException("Fragment " + this + " is not attached to any Fragment or host");
        }
        throw new IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    @NonNull
    public final View requireView() {
        View view = getView();
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    @NonNull
    /* renamed from: s */
    public ArrayList<String> m4592s() {
        ArrayList<String> arrayList;
        C1090j c1090j = this.f7379C0;
        return (c1090j == null || (arrayList = c1090j.f7455h) == null) ? new ArrayList<>() : arrayList;
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        m4570d().f7464q = Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        m4570d().f7463p = Boolean.valueOf(z);
    }

    public void setArguments(@Nullable Bundle bundle) {
        if (this.f7424x != null && isStateSaved()) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        this.f7405k = bundle;
    }

    public void setEnterSharedElementCallback(@Nullable SharedElementCallback sharedElementCallback) {
        m4570d().f7465r = sharedElementCallback;
    }

    public void setEnterTransition(@Nullable Object obj) {
        m4570d().f7457j = obj;
    }

    public void setExitSharedElementCallback(@Nullable SharedElementCallback sharedElementCallback) {
        m4570d().f7466s = sharedElementCallback;
    }

    public void setExitTransition(@Nullable Object obj) {
        m4570d().f7459l = obj;
    }

    @Deprecated
    public void setHasOptionsMenu(boolean z) {
        if (this.f7421v0 != z) {
            this.f7421v0 = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            this.f7426y.onSupportInvalidateOptionsMenu();
        }
    }

    public void setInitialSavedState(@Nullable SavedState savedState) {
        Bundle bundle;
        if (this.f7424x != null) {
            throw new IllegalStateException("Fragment already added");
        }
        if (savedState == null || (bundle = savedState.mState) == null) {
            bundle = null;
        }
        this.f7400f = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.f7423w0 != z) {
            this.f7423w0 = z;
            if (this.f7421v0 && isAdded() && !isHidden()) {
                this.f7426y.onSupportInvalidateOptionsMenu();
            }
        }
    }

    public void setReenterTransition(@Nullable Object obj) {
        m4570d().f7460m = obj;
    }

    @Deprecated
    public void setRetainInstance(boolean z) {
        FragmentStrictMode.onSetRetainInstanceUsage(this);
        this.f7417t0 = z;
        FragmentManager fragmentManager = this.f7424x;
        if (fragmentManager == null) {
            this.f7419u0 = true;
        } else if (z) {
            fragmentManager.m4709k(this);
        } else {
            fragmentManager.m4686X0(this);
        }
    }

    public void setReturnTransition(@Nullable Object obj) {
        m4570d().f7458k = obj;
    }

    public void setSharedElementEnterTransition(@Nullable Object obj) {
        m4570d().f7461n = obj;
    }

    public void setSharedElementReturnTransition(@Nullable Object obj) {
        m4570d().f7462o = obj;
    }

    @Deprecated
    public void setTargetFragment(@Nullable Fragment fragment, int i) {
        if (fragment != null) {
            FragmentStrictMode.onSetTargetFragmentUsage(this, fragment, i);
        }
        FragmentManager fragmentManager = this.f7424x;
        FragmentManager fragmentManager2 = fragment != null ? fragment.f7424x : null;
        if (fragmentManager != null && fragmentManager2 != null && fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException("Fragment " + fragment + " must share the same FragmentManager to be set as a target fragment");
        }
        for (Fragment fragment2 = fragment; fragment2 != null; fragment2 = fragment2.m4594u(false)) {
            if (fragment2.equals(this)) {
                throw new IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.f7408m = null;
            this.f7407l = null;
        } else if (this.f7424x == null || fragment.f7424x == null) {
            this.f7408m = null;
            this.f7407l = fragment;
        } else {
            this.f7408m = fragment.f7404j;
            this.f7407l = null;
        }
        this.f7409n = i;
    }

    @Deprecated
    public void setUserVisibleHint(boolean z) {
        FragmentStrictMode.onSetUserVisibleHint(this, z);
        if (!this.f7378B0 && z && this.f7399e < 5 && this.f7424x != null && isAdded() && this.f7384H0) {
            FragmentManager fragmentManager = this.f7424x;
            fragmentManager.m4674R0(fragmentManager.m4739v(this));
        }
        this.f7378B0 = z;
        this.f7377A0 = this.f7399e < 5 && !z;
        if (this.f7400f != null) {
            this.f7403i = Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(@NonNull String str) {
        FragmentHostCallback<?> fragmentHostCallback = this.f7426y;
        if (fragmentHostCallback != null) {
            return fragmentHostCallback.onShouldShowRequestPermissionRationale(str);
        }
        return false;
    }

    public void startActivity(@NonNull Intent intent) {
        startActivity(intent, null);
    }

    @Deprecated
    public void startActivityForResult(@NonNull Intent intent, int i) {
        startActivityForResult(intent, i, null);
    }

    @Deprecated
    public void startIntentSenderForResult(@NonNull IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        if (this.f7426y == null) {
            throw new IllegalStateException("Fragment " + this + " not attached to Activity");
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
        }
        getParentFragmentManager().m4666N0(this, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public void startPostponedEnterTransition() {
        if (this.f7379C0 == null || !m4570d().f7469v) {
            return;
        }
        if (this.f7426y == null) {
            m4570d().f7469v = false;
        } else if (Looper.myLooper() != this.f7426y.getHandler().getLooper()) {
            this.f7426y.getHandler().postAtFrontOfQueue(new RunnableC1084d());
        } else {
            m4567b(true);
        }
    }

    @NonNull
    /* renamed from: t */
    public ArrayList<String> m4593t() {
        ArrayList<String> arrayList;
        C1090j c1090j = this.f7379C0;
        return (c1090j == null || (arrayList = c1090j.f7456i) == null) ? new ArrayList<>() : arrayList;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("}");
        sb.append(" (");
        sb.append(this.f7404j);
        if (this.f7392O != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f7392O));
        }
        if (this.f7398Z != null) {
            sb.append(" tag=");
            sb.append(this.f7398Z);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    @Nullable
    /* renamed from: u */
    public final Fragment m4594u(boolean z) {
        String str;
        if (z) {
            FragmentStrictMode.onGetTargetFragmentUsage(this);
        }
        Fragment fragment = this.f7407l;
        if (fragment != null) {
            return fragment;
        }
        FragmentManager fragmentManager = this.f7424x;
        if (fragmentManager == null || (str = this.f7408m) == null) {
            return null;
        }
        return fragmentManager.m4696d0(str);
    }

    public void unregisterForContextMenu(@NonNull View view) {
        view.setOnCreateContextMenuListener(null);
    }

    /* renamed from: v */
    public final void m4595v() {
        this.f7387J0 = new LifecycleRegistry(this);
        this.f7391N0 = SavedStateRegistryController.create(this);
        this.f7390M0 = null;
        if (this.f7396Q0.contains(this.f7397R0)) {
            return;
        }
        m4566a0(this.f7397R0);
    }

    /* renamed from: w */
    public void m4596w() {
        m4595v();
        this.mPreviousWho = this.f7404j;
        this.f7404j = UUID.randomUUID().toString();
        this.f7411p = false;
        this.f7412q = false;
        this.f7415s = false;
        this.f7416t = false;
        this.f7418u = false;
        this.f7422w = 0;
        this.f7424x = null;
        this.f7428z = new uug();
        this.f7426y = null;
        this.f7392O = 0;
        this.f7395Q = 0;
        this.f7398Z = null;
        this.f7406k0 = false;
        this.f7413q0 = false;
    }

    /* renamed from: x */
    public final boolean m4597x() {
        return this.f7422w > 0;
    }

    /* renamed from: y */
    public boolean m4598y() {
        C1090j c1090j = this.f7379C0;
        if (c1090j == null) {
            return false;
        }
        return c1090j.f7469v;
    }

    @SuppressLint({"BanParcelableUsage, ParcelClassLoader"})
    /* loaded from: classes3.dex */
    public static class SavedState implements Parcelable {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new C1080a();
        final Bundle mState;

        /* renamed from: androidx.fragment.app.Fragment$SavedState$a */
        /* loaded from: classes3.dex */
        public class C1080a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
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

        public SavedState(Bundle bundle) {
            this.mState = bundle;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeBundle(this.mState);
        }

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            Bundle readBundle = parcel.readBundle();
            this.mState = readBundle;
            if (classLoader == null || readBundle == null) {
                return;
            }
            readBundle.setClassLoader(classLoader);
        }
    }

    @NonNull
    @Deprecated
    public static Fragment instantiate(@NonNull Context context, @NonNull String str, @Nullable Bundle bundle) {
        try {
            Fragment newInstance = FragmentFactory.loadFragmentClass(context.getClassLoader(), str).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(newInstance.getClass().getClassLoader());
                newInstance.setArguments(bundle);
            }
            return newInstance;
        } catch (IllegalAccessException e) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (java.lang.InstantiationException e2) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }

    @NonNull
    public final String getString(@StringRes int i, @Nullable Object... objArr) {
        return getResources().getString(i, objArr);
    }

    public final void postponeEnterTransition(long j, @NonNull TimeUnit timeUnit) {
        m4570d().f7469v = true;
        Handler handler = this.f7380D0;
        if (handler != null) {
            handler.removeCallbacks(this.f7381E0);
        }
        FragmentManager fragmentManager = this.f7424x;
        if (fragmentManager != null) {
            this.f7380D0 = fragmentManager.getHost().getHandler();
        } else {
            this.f7380D0 = new Handler(Looper.getMainLooper());
        }
        this.f7380D0.removeCallbacks(this.f7381E0);
        this.f7380D0.postDelayed(this.f7381E0, timeUnit.toMillis(j));
    }

    @Override // androidx.activity.result.ActivityResultCaller
    @NonNull
    @MainThread
    public final <I, O> ActivityResultLauncher<I> registerForActivityResult(@NonNull ActivityResultContract<I, O> activityResultContract, @NonNull ActivityResultRegistry activityResultRegistry, @NonNull ActivityResultCallback<O> activityResultCallback) {
        return m4565Z(activityResultContract, new C1088h(activityResultRegistry), activityResultCallback);
    }

    public void startActivity(@NonNull Intent intent, @Nullable Bundle bundle) {
        FragmentHostCallback<?> fragmentHostCallback = this.f7426y;
        if (fragmentHostCallback != null) {
            fragmentHostCallback.onStartActivityFromFragment(this, intent, -1, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @Deprecated
    public void startActivityForResult(@NonNull Intent intent, int i, @Nullable Bundle bundle) {
        if (this.f7426y != null) {
            getParentFragmentManager().m4664M0(this, intent, i, bundle);
            return;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public LayoutInflater getLayoutInflater(@Nullable Bundle bundle) {
        FragmentHostCallback<?> fragmentHostCallback = this.f7426y;
        if (fragmentHostCallback != null) {
            LayoutInflater onGetLayoutInflater = fragmentHostCallback.onGetLayoutInflater();
            LayoutInflaterCompat.setFactory2(onGetLayoutInflater, this.f7428z.m4731r0());
            return onGetLayoutInflater;
        }
        throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }

    @CallSuper
    @MainThread
    @Deprecated
    public void onAttach(@NonNull Activity activity) {
        this.f7425x0 = true;
    }

    @CallSuper
    @UiThread
    @Deprecated
    public void onInflate(@NonNull Activity activity, @NonNull AttributeSet attributeSet, @Nullable Bundle bundle) {
        this.f7425x0 = true;
    }

    @ContentView
    public Fragment(@LayoutRes int i) {
        this();
        this.f7393O0 = i;
    }
}
