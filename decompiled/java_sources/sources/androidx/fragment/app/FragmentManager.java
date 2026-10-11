package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.OnMultiWindowModeChangedProvider;
import androidx.core.app.OnPictureInPictureModeChangedProvider;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.content.OnConfigurationChangedProvider;
import androidx.core.content.OnTrimMemoryProvider;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.fragment.C1068R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import com.bumptech.glide.load.engine.GlideException;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.sunia.HTREnginev2.dvg;
import com.sunia.HTREnginev2.fwm;
import com.sunia.HTREnginev2.j3j;
import com.sunia.HTREnginev2.vug;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.collections4.MapUtils;

/* loaded from: classes3.dex */
public abstract class FragmentManager implements FragmentResultOwner {
    public static final int POP_BACK_STACK_INCLUSIVE = 1;

    /* renamed from: S */
    public static final String f7488S = "android:support:fragments";

    /* renamed from: T */
    public static final String f7489T = "state";

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final String TAG = "FragmentManager";

    /* renamed from: U */
    public static final String f7490U = "result_";

    /* renamed from: V */
    public static final String f7491V = "fragment_";

    /* renamed from: W */
    public static boolean f7492W = false;

    /* renamed from: X */
    public static final String f7493X = "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE";

    /* renamed from: D */
    public ActivityResultLauncher<Intent> f7497D;

    /* renamed from: E */
    public ActivityResultLauncher<IntentSenderRequest> f7498E;

    /* renamed from: F */
    public ActivityResultLauncher<String[]> f7499F;

    /* renamed from: H */
    public boolean f7501H;

    /* renamed from: I */
    public boolean f7502I;

    /* renamed from: J */
    public boolean f7503J;

    /* renamed from: K */
    public boolean f7504K;

    /* renamed from: L */
    public boolean f7505L;

    /* renamed from: M */
    public ArrayList<C1122a> f7506M;

    /* renamed from: N */
    public ArrayList<Boolean> f7507N;

    /* renamed from: O */
    public ArrayList<Fragment> f7508O;

    /* renamed from: P */
    public vug f7509P;

    /* renamed from: Q */
    public FragmentStrictMode.Policy f7510Q;

    /* renamed from: b */
    public boolean f7513b;

    /* renamed from: d */
    public ArrayList<C1122a> f7515d;

    /* renamed from: e */
    public ArrayList<Fragment> f7516e;

    /* renamed from: g */
    public OnBackPressedDispatcher f7518g;

    /* renamed from: m */
    public ArrayList<OnBackStackChangedListener> f7524m;

    /* renamed from: v */
    public FragmentHostCallback<?> f7533v;

    /* renamed from: w */
    public FragmentContainer f7534w;

    /* renamed from: x */
    public Fragment f7535x;

    /* renamed from: y */
    @Nullable
    public Fragment f7536y;

    /* renamed from: a */
    public final ArrayList<InterfaceC1108m> f7512a = new ArrayList<>();

    /* renamed from: c */
    public final dvg f7514c = new dvg();

    /* renamed from: f */
    public final LayoutInflaterFactory2C1124c f7517f = new LayoutInflaterFactory2C1124c(this);

    /* renamed from: h */
    public final OnBackPressedCallback f7519h = new C1097b(false);

    /* renamed from: i */
    public final AtomicInteger f7520i = new AtomicInteger();

    /* renamed from: j */
    public final Map<String, BackStackState> f7521j = Collections.synchronizedMap(new HashMap());

    /* renamed from: k */
    public final Map<String, Bundle> f7522k = Collections.synchronizedMap(new HashMap());

    /* renamed from: l */
    public final Map<String, C1107l> f7523l = Collections.synchronizedMap(new HashMap());

    /* renamed from: n */
    public final C1125d f7525n = new C1125d(this);

    /* renamed from: o */
    public final CopyOnWriteArrayList<FragmentOnAttachListener> f7526o = new CopyOnWriteArrayList<>();

    /* renamed from: p */
    public final Consumer<Configuration> f7527p = new Consumer() { // from class: com.sunia.HTREnginev2.pug
        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            FragmentManager.this.m4627H0((Configuration) obj);
        }
    };

    /* renamed from: q */
    public final Consumer<Integer> f7528q = new Consumer() { // from class: com.sunia.HTREnginev2.qug
        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            FragmentManager.this.m4628I0((Integer) obj);
        }
    };

    /* renamed from: r */
    public final Consumer<MultiWindowModeChangedInfo> f7529r = new Consumer() { // from class: com.sunia.HTREnginev2.rug
        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            FragmentManager.this.m4629J0((MultiWindowModeChangedInfo) obj);
        }
    };

    /* renamed from: s */
    public final Consumer<PictureInPictureModeChangedInfo> f7530s = new Consumer() { // from class: com.sunia.HTREnginev2.sug
        @Override // androidx.core.util.Consumer
        public final void accept(Object obj) {
            FragmentManager.this.m4630K0((PictureInPictureModeChangedInfo) obj);
        }
    };

    /* renamed from: t */
    public final MenuProvider f7531t = new C1098c();

    /* renamed from: u */
    public int f7532u = -1;

    /* renamed from: z */
    public FragmentFactory f7537z = null;

    /* renamed from: A */
    public FragmentFactory f7494A = new C1099d();

    /* renamed from: B */
    public fwm f7495B = null;

    /* renamed from: C */
    public fwm f7496C = new C1100e();

    /* renamed from: G */
    public ArrayDeque<LaunchedFragmentInfo> f7500G = new ArrayDeque<>();

    /* renamed from: R */
    public Runnable f7511R = new RunnableC1101f();

    /* loaded from: classes3.dex */
    public interface BackStackEntry {
        @Nullable
        @Deprecated
        CharSequence getBreadCrumbShortTitle();

        @StringRes
        @Deprecated
        int getBreadCrumbShortTitleRes();

        @Nullable
        @Deprecated
        CharSequence getBreadCrumbTitle();

        @StringRes
        @Deprecated
        int getBreadCrumbTitleRes();

        int getId();

        @Nullable
        String getName();
    }

    /* loaded from: classes3.dex */
    public static abstract class FragmentLifecycleCallbacks {
        @Deprecated
        public void onFragmentActivityCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentDetached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentPaused(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentPreAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentPreCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentResumed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentSaveInstanceState(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Bundle bundle) {
        }

        public void onFragmentStarted(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentStopped(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle) {
        }

        public void onFragmentViewDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }
    }

    /* loaded from: classes3.dex */
    public interface OnBackStackChangedListener {
        @MainThread
        default void onBackStackChangeCommitted(@NonNull Fragment fragment, boolean z) {
        }

        @MainThread
        default void onBackStackChangeStarted(@NonNull Fragment fragment, boolean z) {
        }

        @MainThread
        void onBackStackChanged();
    }

    /* renamed from: androidx.fragment.app.FragmentManager$a */
    /* loaded from: classes3.dex */
    public class C1096a implements ActivityResultCallback<Map<String, Boolean>> {
        public C1096a() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onActivityResult(Map<String, Boolean> map) {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
            }
            LaunchedFragmentInfo pollFirst = FragmentManager.this.f7500G.pollFirst();
            if (pollFirst == null) {
                Log.w("FragmentManager", "No permissions were requested for " + this);
                return;
            }
            String str = pollFirst.mWho;
            int i2 = pollFirst.mRequestCode;
            Fragment m53826i = FragmentManager.this.f7514c.m53826i(str);
            if (m53826i != null) {
                m53826i.onRequestPermissionsResult(i2, strArr, iArr);
                return;
            }
            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$b */
    /* loaded from: classes3.dex */
    public class C1097b extends OnBackPressedCallback {
        public C1097b(boolean z) {
            super(z);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            FragmentManager.this.m4743x0();
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$c */
    /* loaded from: classes3.dex */
    public class C1098c implements MenuProvider {
        public C1098c() {
        }

        @Override // androidx.core.view.MenuProvider
        public void onCreateMenu(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
            FragmentManager.this.m4648C(menu, menuInflater);
        }

        @Override // androidx.core.view.MenuProvider
        public void onMenuClosed(@NonNull Menu menu) {
            FragmentManager.this.m4660K(menu);
        }

        @Override // androidx.core.view.MenuProvider
        public boolean onMenuItemSelected(@NonNull MenuItem menuItem) {
            return FragmentManager.this.m4659J(menuItem);
        }

        @Override // androidx.core.view.MenuProvider
        public void onPrepareMenu(@NonNull Menu menu) {
            FragmentManager.this.m4667O(menu);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$d */
    /* loaded from: classes3.dex */
    public class C1099d extends FragmentFactory {
        public C1099d() {
        }

        @Override // androidx.fragment.app.FragmentFactory
        @NonNull
        public Fragment instantiate(@NonNull ClassLoader classLoader, @NonNull String str) {
            return FragmentManager.this.getHost().instantiate(FragmentManager.this.getHost().m4623b(), str, null);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$e */
    /* loaded from: classes3.dex */
    public class C1100e implements fwm {
        public C1100e() {
        }

        @Override // com.sunia.HTREnginev2.fwm
        @NonNull
        /* renamed from: a */
        public SpecialEffectsController mo4751a(@NonNull ViewGroup viewGroup) {
            return new DefaultSpecialEffectsController(viewGroup);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$f */
    /* loaded from: classes3.dex */
    public class RunnableC1101f implements Runnable {
        public RunnableC1101f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.m4689Z(true);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$g */
    /* loaded from: classes3.dex */
    public class C1102g implements FragmentOnAttachListener {

        /* renamed from: e */
        public final /* synthetic */ Fragment f7548e;

        public C1102g(Fragment fragment) {
            this.f7548e = fragment;
        }

        @Override // androidx.fragment.app.FragmentOnAttachListener
        public void onAttachFragment(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
            this.f7548e.onAttachFragment(fragment);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$h */
    /* loaded from: classes3.dex */
    public class C1103h implements ActivityResultCallback<ActivityResult> {
        public C1103h() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onActivityResult(ActivityResult activityResult) {
            LaunchedFragmentInfo pollLast = FragmentManager.this.f7500G.pollLast();
            if (pollLast == null) {
                Log.w("FragmentManager", "No Activities were started for result for " + this);
                return;
            }
            String str = pollLast.mWho;
            int i = pollLast.mRequestCode;
            Fragment m53826i = FragmentManager.this.f7514c.m53826i(str);
            if (m53826i != null) {
                m53826i.onActivityResult(i, activityResult.getResultCode(), activityResult.getData());
                return;
            }
            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$i */
    /* loaded from: classes3.dex */
    public class C1104i implements ActivityResultCallback<ActivityResult> {
        public C1104i() {
        }

        @Override // androidx.activity.result.ActivityResultCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onActivityResult(ActivityResult activityResult) {
            LaunchedFragmentInfo pollFirst = FragmentManager.this.f7500G.pollFirst();
            if (pollFirst == null) {
                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                return;
            }
            String str = pollFirst.mWho;
            int i = pollFirst.mRequestCode;
            Fragment m53826i = FragmentManager.this.f7514c.m53826i(str);
            if (m53826i != null) {
                m53826i.onActivityResult(i, activityResult.getResultCode(), activityResult.getData());
                return;
            }
            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$j */
    /* loaded from: classes3.dex */
    public class C1105j implements InterfaceC1108m {

        /* renamed from: a */
        public final String f7552a;

        public C1105j(@NonNull String str) {
            this.f7552a = str;
        }

        @Override // androidx.fragment.app.FragmentManager.InterfaceC1108m
        /* renamed from: a */
        public boolean mo4754a(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            return FragmentManager.this.m4730r(arrayList, arrayList2, this.f7552a);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$k */
    /* loaded from: classes3.dex */
    public static class C1106k extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NonNull
        public Intent createIntent(@NonNull Context context, IntentSenderRequest intentSenderRequest) {
            Bundle bundleExtra;
            Intent intent = new Intent(ActivityResultContracts.StartIntentSenderForResult.ACTION_INTENT_SENDER_REQUEST);
            Intent fillInIntent = intentSenderRequest.getFillInIntent();
            if (fillInIntent != null && (bundleExtra = fillInIntent.getBundleExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE)) != null) {
                intent.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundleExtra);
                fillInIntent.removeExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE);
                if (fillInIntent.getBooleanExtra(FragmentManager.f7493X, false)) {
                    intentSenderRequest = new IntentSenderRequest.Builder(intentSenderRequest.getIntentSender()).setFillInIntent(null).setFlags(intentSenderRequest.getFlagsValues(), intentSenderRequest.getFlagsMask()).build();
                }
            }
            intent.putExtra(ActivityResultContracts.StartIntentSenderForResult.EXTRA_INTENT_SENDER_REQUEST, intentSenderRequest);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NonNull
        public ActivityResult parseResult(int i, @Nullable Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$l */
    /* loaded from: classes3.dex */
    public static class C1107l implements FragmentResultListener {

        /* renamed from: a */
        public final Lifecycle f7554a;

        /* renamed from: b */
        public final FragmentResultListener f7555b;

        /* renamed from: c */
        public final LifecycleEventObserver f7556c;

        public C1107l(@NonNull Lifecycle lifecycle, @NonNull FragmentResultListener fragmentResultListener, @NonNull LifecycleEventObserver lifecycleEventObserver) {
            this.f7554a = lifecycle;
            this.f7555b = fragmentResultListener;
            this.f7556c = lifecycleEventObserver;
        }

        /* renamed from: a */
        public boolean m4755a(Lifecycle.State state) {
            return this.f7554a.getState().isAtLeast(state);
        }

        /* renamed from: b */
        public void m4756b() {
            this.f7554a.removeObserver(this.f7556c);
        }

        @Override // androidx.fragment.app.FragmentResultListener
        public void onFragmentResult(@NonNull String str, @NonNull Bundle bundle) {
            this.f7555b.onFragmentResult(str, bundle);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$m */
    /* loaded from: classes3.dex */
    public interface InterfaceC1108m {
        /* renamed from: a */
        boolean mo4754a(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2);
    }

    /* renamed from: androidx.fragment.app.FragmentManager$n */
    /* loaded from: classes3.dex */
    public class C1109n implements InterfaceC1108m {

        /* renamed from: a */
        public final String f7557a;

        /* renamed from: b */
        public final int f7558b;

        /* renamed from: c */
        public final int f7559c;

        public C1109n(@Nullable String str, int i, int i2) {
            this.f7557a = str;
            this.f7558b = i;
            this.f7559c = i2;
        }

        @Override // androidx.fragment.app.FragmentManager.InterfaceC1108m
        /* renamed from: a */
        public boolean mo4754a(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            Fragment fragment = FragmentManager.this.f7536y;
            if (fragment == null || this.f7558b >= 0 || this.f7557a != null || !fragment.getChildFragmentManager().popBackStackImmediate()) {
                return FragmentManager.this.m4680U0(arrayList, arrayList2, this.f7557a, this.f7558b, this.f7559c);
            }
            return false;
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$o */
    /* loaded from: classes3.dex */
    public class C1110o implements InterfaceC1108m {

        /* renamed from: a */
        public final String f7561a;

        public C1110o(@NonNull String str) {
            this.f7561a = str;
        }

        @Override // androidx.fragment.app.FragmentManager.InterfaceC1108m
        /* renamed from: a */
        public boolean mo4754a(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            return FragmentManager.this.m4692a1(arrayList, arrayList2, this.f7561a);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$p */
    /* loaded from: classes3.dex */
    public class C1111p implements InterfaceC1108m {

        /* renamed from: a */
        public final String f7563a;

        public C1111p(@NonNull String str) {
            this.f7563a = str;
        }

        @Override // androidx.fragment.app.FragmentManager.InterfaceC1108m
        /* renamed from: a */
        public boolean mo4754a(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            return FragmentManager.this.m4702h1(arrayList, arrayList2, this.f7563a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H0 */
    public /* synthetic */ void m4627H0(Configuration configuration) {
        if (m4647B0()) {
            m4746z(configuration, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I0 */
    public /* synthetic */ void m4628I0(Integer num) {
        if (m4647B0() && num.intValue() == 80) {
            m4654F(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J0 */
    public /* synthetic */ void m4629J0(MultiWindowModeChangedInfo multiWindowModeChangedInfo) {
        if (m4647B0()) {
            m4656G(multiWindowModeChangedInfo.getIsInMultiWindowMode(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K0 */
    public /* synthetic */ void m4630K0(PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo) {
        if (m4647B0()) {
            m4665N(pictureInPictureModeChangedInfo.getIsInPictureInPictureMode(), false);
        }
    }

    /* renamed from: b0 */
    public static void m4633b0(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            C1122a c1122a = arrayList.get(i);
            if (arrayList2.get(i).booleanValue()) {
                c1122a.m4795f(-1);
                c1122a.m4801l();
            } else {
                c1122a.m4795f(1);
                c1122a.m4800k();
            }
            i++;
        }
    }

    /* renamed from: e1 */
    public static int m4637e1(int i) {
        int i2 = 4097;
        if (i == 4097) {
            return 8194;
        }
        if (i != 8194) {
            i2 = FragmentTransaction.TRANSIT_FRAGMENT_MATCH_ACTIVITY_CLOSE;
            if (i == 8197) {
                return 4100;
            }
            if (i == 4099) {
                return FragmentTransaction.TRANSIT_FRAGMENT_FADE;
            }
            if (i != 4100) {
                return 0;
            }
        }
        return i2;
    }

    @Deprecated
    public static void enableDebugLogging(boolean z) {
        f7492W = z;
    }

    @NonNull
    public static <F extends Fragment> F findFragment(@NonNull View view) {
        F f = (F) m4642h0(view);
        if (f != null) {
            return f;
        }
        throw new IllegalStateException("View " + view + " does not have a Fragment set");
    }

    @NonNull
    /* renamed from: g0 */
    public static FragmentManager m4640g0(@NonNull View view) {
        FragmentActivity fragmentActivity;
        Fragment m4642h0 = m4642h0(view);
        if (m4642h0 != null) {
            if (m4642h0.isAdded()) {
                return m4642h0.getChildFragmentManager();
            }
            throw new IllegalStateException("The Fragment " + m4642h0 + " that owns View " + view + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
        }
        Context context = view.getContext();
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                fragmentActivity = null;
                break;
            }
            if (context instanceof FragmentActivity) {
                fragmentActivity = (FragmentActivity) context;
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (fragmentActivity != null) {
            return fragmentActivity.getSupportFragmentManager();
        }
        throw new IllegalStateException("View " + view + " is not within a subclass of FragmentActivity.");
    }

    @Nullable
    /* renamed from: h0 */
    public static Fragment m4642h0(@NonNull View view) {
        while (view != null) {
            Fragment m4643v0 = m4643v0(view);
            if (m4643v0 != null) {
                return m4643v0;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static boolean isLoggingEnabled(int i) {
        return f7492W || Log.isLoggable("FragmentManager", i);
    }

    @Nullable
    /* renamed from: v0 */
    public static Fragment m4643v0(@NonNull View view) {
        Object tag = view.getTag(C1068R.id.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    /* renamed from: A */
    public boolean m4644A(@NonNull MenuItem menuItem) {
        if (this.f7532u < 1) {
            return false;
        }
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null && fragment.m4545E(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: A0 */
    public final boolean m4645A0(@NonNull Fragment fragment) {
        return (fragment.f7421v0 && fragment.f7423w0) || fragment.f7428z.m4721o();
    }

    /* renamed from: B */
    public void m4646B() {
        this.f7502I = false;
        this.f7503J = false;
        this.f7509P.m57887q(false);
        m4675S(1);
    }

    /* renamed from: B0 */
    public final boolean m4647B0() {
        Fragment fragment = this.f7535x;
        if (fragment == null) {
            return true;
        }
        return fragment.isAdded() && this.f7535x.getParentFragmentManager().m4647B0();
    }

    /* renamed from: C */
    public boolean m4648C(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        if (this.f7532u < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null && m4651D0(fragment) && fragment.m4547G(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.f7516e != null) {
            for (int i = 0; i < this.f7516e.size(); i++) {
                Fragment fragment2 = this.f7516e.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f7516e = arrayList;
        return z;
    }

    /* renamed from: C0 */
    public boolean m4649C0(@Nullable Fragment fragment) {
        if (fragment == null) {
            return false;
        }
        return fragment.isHidden();
    }

    /* renamed from: D */
    public void m4650D() {
        this.f7504K = true;
        m4689Z(true);
        m4683W();
        m4733s();
        m4675S(-1);
        Object obj = this.f7533v;
        if (obj instanceof OnTrimMemoryProvider) {
            ((OnTrimMemoryProvider) obj).removeOnTrimMemoryListener(this.f7528q);
        }
        Object obj2 = this.f7533v;
        if (obj2 instanceof OnConfigurationChangedProvider) {
            ((OnConfigurationChangedProvider) obj2).removeOnConfigurationChangedListener(this.f7527p);
        }
        Object obj3 = this.f7533v;
        if (obj3 instanceof OnMultiWindowModeChangedProvider) {
            ((OnMultiWindowModeChangedProvider) obj3).removeOnMultiWindowModeChangedListener(this.f7529r);
        }
        Object obj4 = this.f7533v;
        if (obj4 instanceof OnPictureInPictureModeChangedProvider) {
            ((OnPictureInPictureModeChangedProvider) obj4).removeOnPictureInPictureModeChangedListener(this.f7530s);
        }
        Object obj5 = this.f7533v;
        if ((obj5 instanceof MenuHost) && this.f7535x == null) {
            ((MenuHost) obj5).removeMenuProvider(this.f7531t);
        }
        this.f7533v = null;
        this.f7534w = null;
        this.f7535x = null;
        if (this.f7518g != null) {
            this.f7519h.remove();
            this.f7518g = null;
        }
        ActivityResultLauncher<Intent> activityResultLauncher = this.f7497D;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
            this.f7498E.unregister();
            this.f7499F.unregister();
        }
    }

    /* renamed from: D0 */
    public boolean m4651D0(@Nullable Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    /* renamed from: E */
    public void m4652E() {
        m4675S(1);
    }

    /* renamed from: E0 */
    public boolean m4653E0(@Nullable Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.f7424x;
        return fragment.equals(fragmentManager.getPrimaryNavigationFragment()) && m4653E0(fragmentManager.f7535x);
    }

    /* renamed from: F */
    public void m4654F(boolean z) {
        if (z && (this.f7533v instanceof OnTrimMemoryProvider)) {
            m4729q1(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
        }
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null) {
                fragment.m4552M();
                if (z) {
                    fragment.f7428z.m4654F(true);
                }
            }
        }
    }

    /* renamed from: F0 */
    public boolean m4655F0(int i) {
        return this.f7532u >= i;
    }

    /* renamed from: G */
    public void m4656G(boolean z, boolean z2) {
        if (z2 && (this.f7533v instanceof OnMultiWindowModeChangedProvider)) {
            m4729q1(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
        }
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null) {
                fragment.m4553N(z);
                if (z2) {
                    fragment.f7428z.m4656G(z, true);
                }
            }
        }
    }

    /* renamed from: H */
    public void m4657H(@NonNull Fragment fragment) {
        Iterator<FragmentOnAttachListener> it2 = this.f7526o.iterator();
        while (it2.hasNext()) {
            it2.next().onAttachFragment(this, fragment);
        }
    }

    /* renamed from: I */
    public void m4658I() {
        for (Fragment fragment : this.f7514c.m53830m()) {
            if (fragment != null) {
                fragment.onHiddenChanged(fragment.isHidden());
                fragment.f7428z.m4658I();
            }
        }
    }

    /* renamed from: J */
    public boolean m4659J(@NonNull MenuItem menuItem) {
        if (this.f7532u < 1) {
            return false;
        }
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null && fragment.m4554O(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: K */
    public void m4660K(@NonNull Menu menu) {
        if (this.f7532u < 1) {
            return;
        }
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null) {
                fragment.m4555P(menu);
            }
        }
    }

    /* renamed from: L */
    public final void m4661L(@Nullable Fragment fragment) {
        if (fragment == null || !fragment.equals(m4696d0(fragment.f7404j))) {
            return;
        }
        fragment.m4559T();
    }

    /* renamed from: L0 */
    public void m4662L0(@NonNull Fragment fragment, @NonNull String[] strArr, int i) {
        if (this.f7499F == null) {
            this.f7533v.onRequestPermissionsFromFragment(fragment, strArr, i);
            return;
        }
        this.f7500G.addLast(new LaunchedFragmentInfo(fragment.f7404j, i));
        this.f7499F.launch(strArr);
    }

    /* renamed from: M */
    public void m4663M() {
        m4675S(5);
    }

    /* renamed from: M0 */
    public void m4664M0(@NonNull Fragment fragment, @NonNull Intent intent, int i, @Nullable Bundle bundle) {
        if (this.f7497D == null) {
            this.f7533v.onStartActivityFromFragment(fragment, intent, i, bundle);
            return;
        }
        this.f7500G.addLast(new LaunchedFragmentInfo(fragment.f7404j, i));
        if (bundle != null) {
            intent.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundle);
        }
        this.f7497D.launch(intent);
    }

    /* renamed from: N */
    public void m4665N(boolean z, boolean z2) {
        if (z2 && (this.f7533v instanceof OnPictureInPictureModeChangedProvider)) {
            m4729q1(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
        }
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null) {
                fragment.m4557R(z);
                if (z2) {
                    fragment.f7428z.m4665N(z, true);
                }
            }
        }
    }

    /* renamed from: N0 */
    public void m4666N0(@NonNull Fragment fragment, @NonNull IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        Intent intent2;
        if (this.f7498E == null) {
            this.f7533v.onStartIntentSenderFromFragment(fragment, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        if (bundle != null) {
            if (intent == null) {
                intent2 = new Intent();
                intent2.putExtra(f7493X, true);
            } else {
                intent2 = intent;
            }
            if (isLoggingEnabled(2)) {
                Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + fragment);
            }
            intent2.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundle);
        } else {
            intent2 = intent;
        }
        IntentSenderRequest build = new IntentSenderRequest.Builder(intentSender).setFillInIntent(intent2).setFlags(i3, i2).build();
        this.f7500G.addLast(new LaunchedFragmentInfo(fragment.f7404j, i));
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Fragment " + fragment + "is launching an IntentSender for result ");
        }
        this.f7498E.launch(build);
    }

    /* renamed from: O */
    public boolean m4667O(@NonNull Menu menu) {
        boolean z = false;
        if (this.f7532u < 1) {
            return false;
        }
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null && m4651D0(fragment) && fragment.m4558S(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: O0 */
    public void m4668O0(int i, boolean z) {
        FragmentHostCallback<?> fragmentHostCallback;
        if (this.f7533v == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.f7532u) {
            this.f7532u = i;
            this.f7514c.m53838u();
            m4726p1();
            if (this.f7501H && (fragmentHostCallback = this.f7533v) != null && this.f7532u == 7) {
                fragmentHostCallback.onSupportInvalidateOptionsMenu();
                this.f7501H = false;
            }
        }
    }

    /* renamed from: P */
    public void m4669P() {
        m4732r1();
        m4661L(this.f7536y);
    }

    /* renamed from: P0 */
    public void m4670P0() {
        if (this.f7533v == null) {
            return;
        }
        this.f7502I = false;
        this.f7503J = false;
        this.f7509P.m57887q(false);
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null) {
                fragment.m4541A();
            }
        }
    }

    /* renamed from: Q */
    public void m4671Q() {
        this.f7502I = false;
        this.f7503J = false;
        this.f7509P.m57887q(false);
        m4675S(7);
    }

    /* renamed from: Q0 */
    public void m4672Q0(@NonNull FragmentContainerView fragmentContainerView) {
        View view;
        for (C1126e c1126e : this.f7514c.m53829l()) {
            Fragment m4835k = c1126e.m4835k();
            if (m4835k.f7395Q == fragmentContainerView.getId() && (view = m4835k.f7429z0) != null && view.getParent() == null) {
                m4835k.f7427y0 = fragmentContainerView;
                c1126e.m4826b();
            }
        }
    }

    /* renamed from: R */
    public void m4673R() {
        this.f7502I = false;
        this.f7503J = false;
        this.f7509P.m57887q(false);
        m4675S(5);
    }

    /* renamed from: R0 */
    public void m4674R0(@NonNull C1126e c1126e) {
        Fragment m4835k = c1126e.m4835k();
        if (m4835k.f7377A0) {
            if (this.f7513b) {
                this.f7505L = true;
            } else {
                m4835k.f7377A0 = false;
                c1126e.m4837m();
            }
        }
    }

    /* renamed from: S */
    public final void m4675S(int i) {
        try {
            this.f7513b = true;
            this.f7514c.m53821d(i);
            m4668O0(i, false);
            Iterator<SpecialEffectsController> it2 = m4735t().iterator();
            while (it2.hasNext()) {
                it2.next().forceCompleteAllOperations();
            }
            this.f7513b = false;
            m4689Z(true);
        } catch (Throwable th) {
            this.f7513b = false;
            throw th;
        }
    }

    /* renamed from: S0 */
    public void m4676S0(int i, int i2, boolean z) {
        if (i >= 0) {
            m4685X(new C1109n(null, i, i2), z);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    /* renamed from: T */
    public void m4677T() {
        this.f7503J = true;
        this.f7509P.m57887q(true);
        m4675S(4);
    }

    /* renamed from: T0 */
    public final boolean m4678T0(@Nullable String str, int i, int i2) {
        m4689Z(false);
        m4687Y(true);
        Fragment fragment = this.f7536y;
        if (fragment != null && i < 0 && str == null && fragment.getChildFragmentManager().popBackStackImmediate()) {
            return true;
        }
        boolean m4680U0 = m4680U0(this.f7506M, this.f7507N, str, i, i2);
        if (m4680U0) {
            this.f7513b = true;
            try {
                m4684W0(this.f7506M, this.f7507N);
            } finally {
                m4727q();
            }
        }
        m4732r1();
        m4681V();
        this.f7514c.m53819b();
        return m4680U0;
    }

    /* renamed from: U */
    public void m4679U() {
        m4675S(2);
    }

    /* renamed from: U0 */
    public boolean m4680U0(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2, @Nullable String str, int i, int i2) {
        int m4698e0 = m4698e0(str, i, (i2 & 1) != 0);
        if (m4698e0 < 0) {
            return false;
        }
        for (int size = this.f7515d.size() - 1; size >= m4698e0; size--) {
            arrayList.add(this.f7515d.remove(size));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* renamed from: V */
    public final void m4681V() {
        if (this.f7505L) {
            this.f7505L = false;
            m4726p1();
        }
    }

    /* renamed from: V0 */
    public void m4682V0(@NonNull Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.f7422w);
        }
        boolean z = !fragment.m4597x();
        if (!fragment.f7413q0 || z) {
            this.f7514c.m53839v(fragment);
            if (m4645A0(fragment)) {
                this.f7501H = true;
            }
            fragment.f7412q = true;
            m4720n1(fragment);
        }
    }

    /* renamed from: W */
    public final void m4683W() {
        Iterator<SpecialEffectsController> it2 = m4735t().iterator();
        while (it2.hasNext()) {
            it2.next().forceCompleteAllOperations();
        }
    }

    /* renamed from: W0 */
    public final void m4684W0(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!arrayList.get(i).f7625r) {
                if (i2 != i) {
                    m4694c0(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (arrayList2.get(i).booleanValue()) {
                    while (i2 < size && arrayList2.get(i2).booleanValue() && !arrayList.get(i2).f7625r) {
                        i2++;
                    }
                }
                m4694c0(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            m4694c0(arrayList, arrayList2, i2, size);
        }
    }

    /* renamed from: X */
    public void m4685X(@NonNull InterfaceC1108m interfaceC1108m, boolean z) {
        if (!z) {
            if (this.f7533v == null) {
                if (!this.f7504K) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            m4724p();
        }
        synchronized (this.f7512a) {
            if (this.f7533v == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.f7512a.add(interfaceC1108m);
                m4705i1();
            }
        }
    }

    /* renamed from: X0 */
    public void m4686X0(@NonNull Fragment fragment) {
        this.f7509P.m57885o(fragment);
    }

    /* renamed from: Y */
    public final void m4687Y(boolean z) {
        if (this.f7513b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f7533v == null) {
            if (!this.f7504K) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f7533v.getHandler().getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            m4724p();
        }
        if (this.f7506M == null) {
            this.f7506M = new ArrayList<>();
            this.f7507N = new ArrayList<>();
        }
    }

    /* renamed from: Y0 */
    public final void m4688Y0() {
        if (this.f7524m != null) {
            for (int i = 0; i < this.f7524m.size(); i++) {
                this.f7524m.get(i).onBackStackChanged();
            }
        }
    }

    /* renamed from: Z */
    public boolean m4689Z(boolean z) {
        m4687Y(z);
        boolean z2 = false;
        while (m4710k0(this.f7506M, this.f7507N)) {
            z2 = true;
            this.f7513b = true;
            try {
                m4684W0(this.f7506M, this.f7507N);
            } finally {
                m4727q();
            }
        }
        m4732r1();
        m4681V();
        this.f7514c.m53819b();
        return z2;
    }

    /* renamed from: Z0 */
    public void m4690Z0(@Nullable Parcelable parcelable, @Nullable FragmentManagerNonConfig fragmentManagerNonConfig) {
        if (this.f7533v instanceof ViewModelStoreOwner) {
            m4729q1(new IllegalStateException("You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"));
        }
        this.f7509P.m57886p(fragmentManagerNonConfig);
        m4695c1(parcelable);
    }

    /* renamed from: a0 */
    public void m4691a0(@NonNull InterfaceC1108m interfaceC1108m, boolean z) {
        if (z && (this.f7533v == null || this.f7504K)) {
            return;
        }
        m4687Y(z);
        if (interfaceC1108m.mo4754a(this.f7506M, this.f7507N)) {
            this.f7513b = true;
            try {
                m4684W0(this.f7506M, this.f7507N);
            } finally {
                m4727q();
            }
        }
        m4732r1();
        m4681V();
        this.f7514c.m53819b();
    }

    /* renamed from: a1 */
    public boolean m4692a1(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2, @NonNull String str) {
        BackStackState remove = this.f7521j.remove(str);
        if (remove == null) {
            return false;
        }
        HashMap hashMap = new HashMap();
        Iterator<C1122a> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            C1122a next = it2.next();
            if (next.f7675H) {
                Iterator<FragmentTransaction.C1117a> it3 = next.f7610c.iterator();
                while (it3.hasNext()) {
                    Fragment fragment = it3.next().f7628b;
                    if (fragment != null) {
                        hashMap.put(fragment.f7404j, fragment);
                    }
                }
            }
        }
        Iterator<C1122a> it4 = remove.instantiate(this, hashMap).iterator();
        while (true) {
            boolean z = false;
            while (it4.hasNext()) {
                if (it4.next().mo4754a(arrayList, arrayList2) || z) {
                    z = true;
                }
            }
            return z;
        }
    }

    public void addFragmentOnAttachListener(@NonNull FragmentOnAttachListener fragmentOnAttachListener) {
        this.f7526o.add(fragmentOnAttachListener);
    }

    public void addOnBackStackChangedListener(@NonNull OnBackStackChangedListener onBackStackChangedListener) {
        if (this.f7524m == null) {
            this.f7524m = new ArrayList<>();
        }
        this.f7524m.add(onBackStackChangedListener);
    }

    /* renamed from: b1 */
    public void m4693b1(@Nullable Parcelable parcelable) {
        if (this.f7533v instanceof SavedStateRegistryOwner) {
            m4729q1(new IllegalStateException("You cannot use restoreSaveState when your FragmentHostCallback implements SavedStateRegistryOwner."));
        }
        m4695c1(parcelable);
    }

    @NonNull
    public FragmentTransaction beginTransaction() {
        return new C1122a(this);
    }

    /* renamed from: c0 */
    public final void m4694c0(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2, int i, int i2) {
        ArrayList<OnBackStackChangedListener> arrayList3;
        boolean z = arrayList.get(i).f7625r;
        ArrayList<Fragment> arrayList4 = this.f7508O;
        if (arrayList4 == null) {
            this.f7508O = new ArrayList<>();
        } else {
            arrayList4.clear();
        }
        this.f7508O.addAll(this.f7514c.m53833p());
        Fragment primaryNavigationFragment = getPrimaryNavigationFragment();
        boolean z2 = false;
        for (int i3 = i; i3 < i2; i3++) {
            C1122a c1122a = arrayList.get(i3);
            primaryNavigationFragment = !arrayList2.get(i3).booleanValue() ? c1122a.m4802m(this.f7508O, primaryNavigationFragment) : c1122a.m4804o(this.f7508O, primaryNavigationFragment);
            z2 = z2 || c1122a.f7616i;
        }
        this.f7508O.clear();
        if (!z && this.f7532u >= 1) {
            for (int i4 = i; i4 < i2; i4++) {
                Iterator<FragmentTransaction.C1117a> it2 = arrayList.get(i4).f7610c.iterator();
                while (it2.hasNext()) {
                    Fragment fragment = it2.next().f7628b;
                    if (fragment != null && fragment.f7424x != null) {
                        this.f7514c.m53836s(m4739v(fragment));
                    }
                }
            }
        }
        m4633b0(arrayList, arrayList2, i, i2);
        boolean booleanValue = arrayList2.get(i2 - 1).booleanValue();
        if (z2 && (arrayList3 = this.f7524m) != null && !arrayList3.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<C1122a> it3 = arrayList.iterator();
            while (it3.hasNext()) {
                linkedHashSet.addAll(m4707j0(it3.next()));
            }
            Iterator<OnBackStackChangedListener> it4 = this.f7524m.iterator();
            while (it4.hasNext()) {
                OnBackStackChangedListener next = it4.next();
                Iterator it5 = linkedHashSet.iterator();
                while (it5.hasNext()) {
                    next.onBackStackChangeStarted((Fragment) it5.next(), booleanValue);
                }
            }
            Iterator<OnBackStackChangedListener> it6 = this.f7524m.iterator();
            while (it6.hasNext()) {
                OnBackStackChangedListener next2 = it6.next();
                Iterator it7 = linkedHashSet.iterator();
                while (it7.hasNext()) {
                    next2.onBackStackChangeCommitted((Fragment) it7.next(), booleanValue);
                }
            }
        }
        for (int i5 = i; i5 < i2; i5++) {
            C1122a c1122a2 = arrayList.get(i5);
            if (booleanValue) {
                for (int size = c1122a2.f7610c.size() - 1; size >= 0; size--) {
                    Fragment fragment2 = c1122a2.f7610c.get(size).f7628b;
                    if (fragment2 != null) {
                        m4739v(fragment2).m4837m();
                    }
                }
            } else {
                Iterator<FragmentTransaction.C1117a> it8 = c1122a2.f7610c.iterator();
                while (it8.hasNext()) {
                    Fragment fragment3 = it8.next().f7628b;
                    if (fragment3 != null) {
                        m4739v(fragment3).m4837m();
                    }
                }
            }
        }
        m4668O0(this.f7532u, true);
        for (SpecialEffectsController specialEffectsController : m4737u(arrayList, i, i2)) {
            specialEffectsController.updateOperationDirection(booleanValue);
            specialEffectsController.markPostponedState();
            specialEffectsController.executePendingOperations();
        }
        while (i < i2) {
            C1122a c1122a3 = arrayList.get(i);
            if (arrayList2.get(i).booleanValue() && c1122a3.f7674G >= 0) {
                c1122a3.f7674G = -1;
            }
            c1122a3.m4803n();
            i++;
        }
        if (z2) {
            m4688Y0();
        }
    }

    /* renamed from: c1 */
    public void m4695c1(@Nullable Parcelable parcelable) {
        C1126e c1126e;
        Bundle bundle;
        Bundle bundle2;
        if (parcelable == null) {
            return;
        }
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith(f7490U) && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.f7533v.m4623b().getClassLoader());
                this.f7522k.put(str.substring(7), bundle2);
            }
        }
        HashMap<String, Bundle> hashMap = new HashMap<>();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith(f7491V) && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.f7533v.m4623b().getClassLoader());
                hashMap.put(str2.substring(9), bundle);
            }
        }
        this.f7514c.m53842y(hashMap);
        FragmentManagerState fragmentManagerState = (FragmentManagerState) bundle3.getParcelable("state");
        if (fragmentManagerState == null) {
            return;
        }
        this.f7514c.m53840w();
        Iterator<String> it2 = fragmentManagerState.mActive.iterator();
        while (it2.hasNext()) {
            Bundle m53817C = this.f7514c.m53817C(it2.next(), null);
            if (m53817C != null) {
                Fragment m57879h = this.f7509P.m57879h(((FragmentState) m53817C.getParcelable("state")).mWho);
                if (m57879h != null) {
                    if (isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + m57879h);
                    }
                    c1126e = new C1126e(this.f7525n, this.f7514c, m57879h, m53817C);
                } else {
                    c1126e = new C1126e(this.f7525n, this.f7514c, this.f7533v.m4623b().getClassLoader(), getFragmentFactory(), m53817C);
                }
                Fragment m4835k = c1126e.m4835k();
                m4835k.f7400f = m53817C;
                m4835k.f7424x = this;
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + m4835k.f7404j + "): " + m4835k);
                }
                c1126e.m4839o(this.f7533v.m4623b().getClassLoader());
                this.f7514c.m53836s(c1126e);
                c1126e.m4844t(this.f7532u);
            }
        }
        for (Fragment fragment : this.f7509P.m57881k()) {
            if (!this.f7514c.m53820c(fragment.f7404j)) {
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.mActive);
                }
                this.f7509P.m57885o(fragment);
                fragment.f7424x = this;
                C1126e c1126e2 = new C1126e(this.f7525n, this.f7514c, fragment);
                c1126e2.m4844t(1);
                c1126e2.m4837m();
                fragment.f7412q = true;
                c1126e2.m4837m();
            }
        }
        this.f7514c.m53841x(fragmentManagerState.mAdded);
        if (fragmentManagerState.mBackStack != null) {
            this.f7515d = new ArrayList<>(fragmentManagerState.mBackStack.length);
            int i = 0;
            while (true) {
                BackStackRecordState[] backStackRecordStateArr = fragmentManagerState.mBackStack;
                if (i >= backStackRecordStateArr.length) {
                    break;
                }
                C1122a instantiate = backStackRecordStateArr[i].instantiate(this);
                if (isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + instantiate.f7674G + "): " + instantiate);
                    PrintWriter printWriter = new PrintWriter(new j3j("FragmentManager"));
                    instantiate.m4799j(GlideException.C1935a.f14609h, printWriter, false);
                    printWriter.close();
                }
                this.f7515d.add(instantiate);
                i++;
            }
        } else {
            this.f7515d = null;
        }
        this.f7520i.set(fragmentManagerState.mBackStackIndex);
        String str3 = fragmentManagerState.mPrimaryNavActiveWho;
        if (str3 != null) {
            Fragment m4696d0 = m4696d0(str3);
            this.f7536y = m4696d0;
            m4661L(m4696d0);
        }
        ArrayList<String> arrayList = fragmentManagerState.mBackStackStateKeys;
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                this.f7521j.put(arrayList.get(i2), fragmentManagerState.mBackStackStates.get(i2));
            }
        }
        this.f7500G = new ArrayDeque<>(fragmentManagerState.mLaunchedFragments);
    }

    public void clearBackStack(@NonNull String str) {
        m4685X(new C1105j(str), false);
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void clearFragmentResult(@NonNull String str) {
        this.f7522k.remove(str);
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Clearing fragment result with key " + str);
        }
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void clearFragmentResultListener(@NonNull String str) {
        C1107l remove = this.f7523l.remove(str);
        if (remove != null) {
            remove.m4756b();
        }
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Clearing FragmentResultListener for key " + str);
        }
    }

    @Nullable
    /* renamed from: d0 */
    public Fragment m4696d0(@NonNull String str) {
        return this.f7514c.m53823f(str);
    }

    @Deprecated
    /* renamed from: d1 */
    public FragmentManagerNonConfig m4697d1() {
        if (this.f7533v instanceof ViewModelStoreOwner) {
            m4729q1(new IllegalStateException("You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."));
        }
        return this.f7509P.m57882l();
    }

    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        int size;
        int size2;
        String str2 = str + MapUtils.f104930a;
        this.f7514c.m53822e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f7516e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i = 0; i < size2; i++) {
                Fragment fragment = this.f7516e.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
        ArrayList<C1122a> arrayList2 = this.f7515d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i2 = 0; i2 < size; i2++) {
                C1122a c1122a = this.f7515d.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(c1122a.toString());
                c1122a.m4798i(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f7520i.get());
        synchronized (this.f7512a) {
            int size3 = this.f7512a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i3 = 0; i3 < size3; i3++) {
                    InterfaceC1108m interfaceC1108m = this.f7512a.get(i3);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(interfaceC1108m);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f7533v);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f7534w);
        if (this.f7535x != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f7535x);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f7532u);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f7502I);
        printWriter.print(" mStopped=");
        printWriter.print(this.f7503J);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f7504K);
        if (this.f7501H) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f7501H);
        }
    }

    /* renamed from: e0 */
    public final int m4698e0(@Nullable String str, int i, boolean z) {
        ArrayList<C1122a> arrayList = this.f7515d;
        if (arrayList == null || arrayList.isEmpty()) {
            return -1;
        }
        if (str == null && i < 0) {
            if (z) {
                return 0;
            }
            return this.f7515d.size() - 1;
        }
        int size = this.f7515d.size() - 1;
        while (size >= 0) {
            C1122a c1122a = this.f7515d.get(size);
            if ((str != null && str.equals(c1122a.getName())) || (i >= 0 && i == c1122a.f7674G)) {
                break;
            }
            size--;
        }
        if (size < 0) {
            return size;
        }
        if (!z) {
            if (size == this.f7515d.size() - 1) {
                return -1;
            }
            return size + 1;
        }
        while (size > 0) {
            C1122a c1122a2 = this.f7515d.get(size - 1);
            if ((str == null || !str.equals(c1122a2.getName())) && (i < 0 || i != c1122a2.f7674G)) {
                return size;
            }
            size--;
        }
        return size;
    }

    @MainThread
    public boolean executePendingTransactions() {
        boolean m4689Z = m4689Z(true);
        m4704i0();
        return m4689Z;
    }

    /* renamed from: f0 */
    public Fragment m4699f0(@NonNull String str) {
        return this.f7514c.m53826i(str);
    }

    /* renamed from: f1 */
    public Parcelable m4700f1() {
        if (this.f7533v instanceof SavedStateRegistryOwner) {
            m4729q1(new IllegalStateException("You cannot use saveAllState when your FragmentHostCallback implements SavedStateRegistryOwner."));
        }
        Bundle m4626G0 = m4626G0();
        if (m4626G0.isEmpty()) {
            return null;
        }
        return m4626G0;
    }

    @Nullable
    public Fragment findFragmentById(@IdRes int i) {
        return this.f7514c.m53824g(i);
    }

    @Nullable
    public Fragment findFragmentByTag(@Nullable String str) {
        return this.f7514c.m53825h(str);
    }

    @NonNull
    /* renamed from: g1, reason: merged with bridge method [inline-methods] */
    public Bundle m4626G0() {
        BackStackRecordState[] backStackRecordStateArr;
        int size;
        Bundle bundle = new Bundle();
        m4704i0();
        m4683W();
        m4689Z(true);
        this.f7502I = true;
        this.f7509P.m57887q(true);
        ArrayList<String> m53843z = this.f7514c.m53843z();
        HashMap<String, Bundle> m53831n = this.f7514c.m53831n();
        if (!m53831n.isEmpty()) {
            ArrayList<String> m53815A = this.f7514c.m53815A();
            ArrayList<C1122a> arrayList = this.f7515d;
            if (arrayList == null || (size = arrayList.size()) <= 0) {
                backStackRecordStateArr = null;
            } else {
                backStackRecordStateArr = new BackStackRecordState[size];
                for (int i = 0; i < size; i++) {
                    backStackRecordStateArr[i] = new BackStackRecordState(this.f7515d.get(i));
                    if (isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.f7515d.get(i));
                    }
                }
            }
            FragmentManagerState fragmentManagerState = new FragmentManagerState();
            fragmentManagerState.mActive = m53843z;
            fragmentManagerState.mAdded = m53815A;
            fragmentManagerState.mBackStack = backStackRecordStateArr;
            fragmentManagerState.mBackStackIndex = this.f7520i.get();
            Fragment fragment = this.f7536y;
            if (fragment != null) {
                fragmentManagerState.mPrimaryNavActiveWho = fragment.f7404j;
            }
            fragmentManagerState.mBackStackStateKeys.addAll(this.f7521j.keySet());
            fragmentManagerState.mBackStackStates.addAll(this.f7521j.values());
            fragmentManagerState.mLaunchedFragments = new ArrayList<>(this.f7500G);
            bundle.putParcelable("state", fragmentManagerState);
            for (String str : this.f7522k.keySet()) {
                bundle.putBundle(f7490U + str, this.f7522k.get(str));
            }
            for (String str2 : m53831n.keySet()) {
                bundle.putBundle(f7491V + str2, m53831n.get(str2));
            }
        } else if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
        }
        return bundle;
    }

    @NonNull
    public BackStackEntry getBackStackEntryAt(int i) {
        return this.f7515d.get(i);
    }

    public int getBackStackEntryCount() {
        ArrayList<C1122a> arrayList = this.f7515d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Nullable
    public Fragment getFragment(@NonNull Bundle bundle, @NonNull String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment m4696d0 = m4696d0(string);
        if (m4696d0 == null) {
            m4729q1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return m4696d0;
    }

    @NonNull
    public FragmentFactory getFragmentFactory() {
        FragmentFactory fragmentFactory = this.f7537z;
        if (fragmentFactory != null) {
            return fragmentFactory;
        }
        Fragment fragment = this.f7535x;
        return fragment != null ? fragment.f7424x.getFragmentFactory() : this.f7494A;
    }

    @NonNull
    public List<Fragment> getFragments() {
        return this.f7514c.m53833p();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public FragmentHostCallback<?> getHost() {
        return this.f7533v;
    }

    @Nullable
    public Fragment getPrimaryNavigationFragment() {
        return this.f7536y;
    }

    @Nullable
    public FragmentStrictMode.Policy getStrictModePolicy() {
        return this.f7510Q;
    }

    /* renamed from: h1 */
    public boolean m4702h1(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2, @NonNull String str) {
        int i;
        int m4698e0 = m4698e0(str, -1, true);
        if (m4698e0 < 0) {
            return false;
        }
        for (int i2 = m4698e0; i2 < this.f7515d.size(); i2++) {
            C1122a c1122a = this.f7515d.get(i2);
            if (!c1122a.f7625r) {
                m4729q1(new IllegalArgumentException("saveBackStack(\"" + str + "\") included FragmentTransactions must use setReorderingAllowed(true) to ensure that the back stack can be restored as an atomic operation. Found " + c1122a + " that did not use setReorderingAllowed(true)."));
            }
        }
        HashSet hashSet = new HashSet();
        for (int i3 = m4698e0; i3 < this.f7515d.size(); i3++) {
            C1122a c1122a2 = this.f7515d.get(i3);
            HashSet hashSet2 = new HashSet();
            HashSet hashSet3 = new HashSet();
            Iterator<FragmentTransaction.C1117a> it2 = c1122a2.f7610c.iterator();
            while (it2.hasNext()) {
                FragmentTransaction.C1117a next = it2.next();
                Fragment fragment = next.f7628b;
                if (fragment != null) {
                    if (!next.f7629c || (i = next.f7627a) == 1 || i == 2 || i == 8) {
                        hashSet.add(fragment);
                        hashSet2.add(fragment);
                    }
                    int i4 = next.f7627a;
                    if (i4 == 1 || i4 == 2) {
                        hashSet3.add(fragment);
                    }
                }
            }
            hashSet2.removeAll(hashSet3);
            if (!hashSet2.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                sb.append("saveBackStack(\"");
                sb.append(str);
                sb.append("\") must be self contained and not reference fragments from non-saved FragmentTransactions. Found reference to fragment");
                sb.append(hashSet2.size() == 1 ? " " + hashSet2.iterator().next() : "s " + hashSet2);
                sb.append(CloudStorageConstants.OPERATION_IN);
                sb.append(c1122a2);
                sb.append(" that were previously added to the FragmentManager through a separate FragmentTransaction.");
                m4729q1(new IllegalArgumentException(sb.toString()));
            }
        }
        ArrayDeque arrayDeque = new ArrayDeque(hashSet);
        while (!arrayDeque.isEmpty()) {
            Fragment fragment2 = (Fragment) arrayDeque.removeFirst();
            if (fragment2.f7417t0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("saveBackStack(\"");
                sb2.append(str);
                sb2.append("\") must not contain retained fragments. Found ");
                sb2.append(hashSet.contains(fragment2) ? "direct reference to retained " : "retained child ");
                sb2.append("fragment ");
                sb2.append(fragment2);
                m4729q1(new IllegalArgumentException(sb2.toString()));
            }
            for (Fragment fragment3 : fragment2.f7428z.m4716m0()) {
                if (fragment3 != null) {
                    arrayDeque.addLast(fragment3);
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((Fragment) it3.next()).f7404j);
        }
        ArrayList arrayList4 = new ArrayList(this.f7515d.size() - m4698e0);
        for (int i5 = m4698e0; i5 < this.f7515d.size(); i5++) {
            arrayList4.add(null);
        }
        BackStackState backStackState = new BackStackState(arrayList3, arrayList4);
        for (int size = this.f7515d.size() - 1; size >= m4698e0; size--) {
            C1122a remove = this.f7515d.remove(size);
            C1122a c1122a3 = new C1122a(remove);
            c1122a3.m4796g();
            arrayList4.set(size - m4698e0, new BackStackRecordState(c1122a3));
            remove.f7675H = true;
            arrayList.add(remove);
            arrayList2.add(Boolean.TRUE);
        }
        this.f7521j.put(str, backStackState);
        return true;
    }

    /* renamed from: i */
    public void m4703i(C1122a c1122a) {
        if (this.f7515d == null) {
            this.f7515d = new ArrayList<>();
        }
        this.f7515d.add(c1122a);
    }

    /* renamed from: i0 */
    public final void m4704i0() {
        Iterator<SpecialEffectsController> it2 = m4735t().iterator();
        while (it2.hasNext()) {
            it2.next().forcePostponedExecutePendingOperations();
        }
    }

    /* renamed from: i1 */
    public void m4705i1() {
        synchronized (this.f7512a) {
            boolean z = true;
            if (this.f7512a.size() != 1) {
                z = false;
            }
            if (z) {
                this.f7533v.getHandler().removeCallbacks(this.f7511R);
                this.f7533v.getHandler().post(this.f7511R);
                m4732r1();
            }
        }
    }

    public boolean isDestroyed() {
        return this.f7504K;
    }

    public boolean isStateSaved() {
        return this.f7502I || this.f7503J;
    }

    /* renamed from: j */
    public C1126e m4706j(@NonNull Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            FragmentStrictMode.onFragmentReuse(fragment, str);
        }
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        C1126e m4739v = m4739v(fragment);
        fragment.f7424x = this;
        this.f7514c.m53836s(m4739v);
        if (!fragment.f7413q0) {
            this.f7514c.m53818a(fragment);
            fragment.f7412q = false;
            if (fragment.f7429z0 == null) {
                fragment.f7382F0 = false;
            }
            if (m4645A0(fragment)) {
                this.f7501H = true;
            }
        }
        return m4739v;
    }

    /* renamed from: j0 */
    public final Set<Fragment> m4707j0(@NonNull C1122a c1122a) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < c1122a.f7610c.size(); i++) {
            Fragment fragment = c1122a.f7610c.get(i).f7628b;
            if (fragment != null && c1122a.f7616i) {
                hashSet.add(fragment);
            }
        }
        return hashSet;
    }

    /* renamed from: j1 */
    public void m4708j1(@NonNull Fragment fragment, boolean z) {
        ViewGroup m4725p0 = m4725p0(fragment);
        if (m4725p0 == null || !(m4725p0 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) m4725p0).setDrawDisappearingViewsLast(!z);
    }

    /* renamed from: k */
    public void m4709k(@NonNull Fragment fragment) {
        this.f7509P.m57875d(fragment);
    }

    /* renamed from: k0 */
    public final boolean m4710k0(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        synchronized (this.f7512a) {
            if (this.f7512a.isEmpty()) {
                return false;
            }
            try {
                int size = this.f7512a.size();
                boolean z = false;
                for (int i = 0; i < size; i++) {
                    z |= this.f7512a.get(i).mo4754a(arrayList, arrayList2);
                }
                return z;
            } finally {
                this.f7512a.clear();
                this.f7533v.getHandler().removeCallbacks(this.f7511R);
            }
        }
    }

    /* renamed from: k1 */
    public void m4711k1(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        if (fragment.equals(m4696d0(fragment.f7404j)) && (fragment.f7426y == null || fragment.f7424x == this)) {
            fragment.f7385I0 = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: l */
    public int m4712l() {
        return this.f7520i.getAndIncrement();
    }

    /* renamed from: l0 */
    public int m4713l0() {
        return this.f7514c.m53828k();
    }

    /* renamed from: l1 */
    public void m4714l1(@Nullable Fragment fragment) {
        if (fragment == null || (fragment.equals(m4696d0(fragment.f7404j)) && (fragment.f7426y == null || fragment.f7424x == this))) {
            Fragment fragment2 = this.f7536y;
            this.f7536y = fragment;
            m4661L(fragment2);
            m4661L(this.f7536y);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SyntheticAccessor"})
    /* renamed from: m */
    public void m4715m(@NonNull FragmentHostCallback<?> fragmentHostCallback, @NonNull FragmentContainer fragmentContainer, @Nullable Fragment fragment) {
        String str;
        if (this.f7533v != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f7533v = fragmentHostCallback;
        this.f7534w = fragmentContainer;
        this.f7535x = fragment;
        if (fragment != null) {
            addFragmentOnAttachListener(new C1102g(fragment));
        } else if (fragmentHostCallback instanceof FragmentOnAttachListener) {
            addFragmentOnAttachListener((FragmentOnAttachListener) fragmentHostCallback);
        }
        if (this.f7535x != null) {
            m4732r1();
        }
        if (fragmentHostCallback instanceof OnBackPressedDispatcherOwner) {
            OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) fragmentHostCallback;
            OnBackPressedDispatcher onBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher();
            this.f7518g = onBackPressedDispatcher;
            LifecycleOwner lifecycleOwner = onBackPressedDispatcherOwner;
            if (fragment != null) {
                lifecycleOwner = fragment;
            }
            onBackPressedDispatcher.addCallback(lifecycleOwner, this.f7519h);
        }
        if (fragment != null) {
            this.f7509P = fragment.f7424x.m4719n0(fragment);
        } else if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            this.f7509P = vug.m57874j(((ViewModelStoreOwner) fragmentHostCallback).getViewModelStore());
        } else {
            this.f7509P = new vug(false);
        }
        this.f7509P.m57887q(isStateSaved());
        this.f7514c.m53816B(this.f7509P);
        Object obj = this.f7533v;
        if ((obj instanceof SavedStateRegistryOwner) && fragment == null) {
            SavedStateRegistry savedStateRegistry = ((SavedStateRegistryOwner) obj).getSavedStateRegistry();
            savedStateRegistry.registerSavedStateProvider(f7488S, new SavedStateRegistry.SavedStateProvider() { // from class: com.sunia.HTREnginev2.tug
                @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
                public final Bundle saveState() {
                    Bundle m4626G0;
                    m4626G0 = FragmentManager.this.m4626G0();
                    return m4626G0;
                }
            });
            Bundle consumeRestoredStateForKey = savedStateRegistry.consumeRestoredStateForKey(f7488S);
            if (consumeRestoredStateForKey != null) {
                m4695c1(consumeRestoredStateForKey);
            }
        }
        Object obj2 = this.f7533v;
        if (obj2 instanceof ActivityResultRegistryOwner) {
            ActivityResultRegistry activityResultRegistry = ((ActivityResultRegistryOwner) obj2).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.f7404j + ":";
            } else {
                str = "";
            }
            String str2 = "FragmentManager:" + str;
            this.f7497D = activityResultRegistry.register(str2 + "StartActivityForResult", new ActivityResultContracts.StartActivityForResult(), new C1103h());
            this.f7498E = activityResultRegistry.register(str2 + "StartIntentSenderForResult", new C1106k(), new C1104i());
            this.f7499F = activityResultRegistry.register(str2 + "RequestPermissions", new ActivityResultContracts.RequestMultiplePermissions(), new C1096a());
        }
        Object obj3 = this.f7533v;
        if (obj3 instanceof OnConfigurationChangedProvider) {
            ((OnConfigurationChangedProvider) obj3).addOnConfigurationChangedListener(this.f7527p);
        }
        Object obj4 = this.f7533v;
        if (obj4 instanceof OnTrimMemoryProvider) {
            ((OnTrimMemoryProvider) obj4).addOnTrimMemoryListener(this.f7528q);
        }
        Object obj5 = this.f7533v;
        if (obj5 instanceof OnMultiWindowModeChangedProvider) {
            ((OnMultiWindowModeChangedProvider) obj5).addOnMultiWindowModeChangedListener(this.f7529r);
        }
        Object obj6 = this.f7533v;
        if (obj6 instanceof OnPictureInPictureModeChangedProvider) {
            ((OnPictureInPictureModeChangedProvider) obj6).addOnPictureInPictureModeChangedListener(this.f7530s);
        }
        Object obj7 = this.f7533v;
        if ((obj7 instanceof MenuHost) && fragment == null) {
            ((MenuHost) obj7).addMenuProvider(this.f7531t);
        }
    }

    @NonNull
    /* renamed from: m0 */
    public List<Fragment> m4716m0() {
        return this.f7514c.m53830m();
    }

    /* renamed from: m1 */
    public void m4717m1(@NonNull fwm fwmVar) {
        this.f7495B = fwmVar;
    }

    /* renamed from: n */
    public void m4718n(@NonNull Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.f7413q0) {
            fragment.f7413q0 = false;
            if (fragment.f7411p) {
                return;
            }
            this.f7514c.m53818a(fragment);
            if (isLoggingEnabled(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (m4645A0(fragment)) {
                this.f7501H = true;
            }
        }
    }

    @NonNull
    /* renamed from: n0 */
    public final vug m4719n0(@NonNull Fragment fragment) {
        return this.f7509P.m57880i(fragment);
    }

    /* renamed from: n1 */
    public final void m4720n1(@NonNull Fragment fragment) {
        ViewGroup m4725p0 = m4725p0(fragment);
        if (m4725p0 == null || fragment.m4578h() + fragment.m4582j() + fragment.m4589p() + fragment.m4590q() <= 0) {
            return;
        }
        if (m4725p0.getTag(C1068R.id.visible_removing_fragment_view_tag) == null) {
            m4725p0.setTag(C1068R.id.visible_removing_fragment_view_tag, fragment);
        }
        ((Fragment) m4725p0.getTag(C1068R.id.visible_removing_fragment_view_tag)).m4579h0(fragment.m4588o());
    }

    /* renamed from: o */
    public boolean m4721o() {
        boolean z = false;
        for (Fragment fragment : this.f7514c.m53830m()) {
            if (fragment != null) {
                z = m4645A0(fragment);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    /* renamed from: o0 */
    public FragmentContainer m4722o0() {
        return this.f7534w;
    }

    /* renamed from: o1 */
    public void m4723o1(@NonNull Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.f7406k0) {
            fragment.f7406k0 = false;
            fragment.f7382F0 = !fragment.f7382F0;
        }
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public FragmentTransaction openTransaction() {
        return beginTransaction();
    }

    /* renamed from: p */
    public final void m4724p() {
        if (isStateSaved()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    /* renamed from: p0 */
    public final ViewGroup m4725p0(@NonNull Fragment fragment) {
        ViewGroup viewGroup = fragment.f7427y0;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.f7395Q > 0 && this.f7534w.onHasView()) {
            View onFindViewById = this.f7534w.onFindViewById(fragment.f7395Q);
            if (onFindViewById instanceof ViewGroup) {
                return (ViewGroup) onFindViewById;
            }
        }
        return null;
    }

    /* renamed from: p1 */
    public final void m4726p1() {
        Iterator<C1126e> it2 = this.f7514c.m53829l().iterator();
        while (it2.hasNext()) {
            m4674R0(it2.next());
        }
    }

    public void popBackStack() {
        m4685X(new C1109n(null, -1, 0), false);
    }

    @MainThread
    public boolean popBackStackImmediate() {
        return m4678T0(null, -1, 0);
    }

    public void putFragment(@NonNull Bundle bundle, @NonNull String str, @NonNull Fragment fragment) {
        if (fragment.f7424x != this) {
            m4729q1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.f7404j);
    }

    /* renamed from: q */
    public final void m4727q() {
        this.f7513b = false;
        this.f7507N.clear();
        this.f7506M.clear();
    }

    @NonNull
    /* renamed from: q0 */
    public dvg m4728q0() {
        return this.f7514c;
    }

    /* renamed from: q1 */
    public final void m4729q1(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new j3j("FragmentManager"));
        FragmentHostCallback<?> fragmentHostCallback = this.f7533v;
        if (fragmentHostCallback != null) {
            try {
                fragmentHostCallback.onDump(GlideException.C1935a.f14609h, null, printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
                throw runtimeException;
            }
        }
        try {
            dump(GlideException.C1935a.f14609h, null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw runtimeException;
        }
    }

    /* renamed from: r */
    public boolean m4730r(@NonNull ArrayList<C1122a> arrayList, @NonNull ArrayList<Boolean> arrayList2, @NonNull String str) {
        if (m4692a1(arrayList, arrayList2, str)) {
            return m4680U0(arrayList, arrayList2, str, -1, 1);
        }
        return false;
    }

    @NonNull
    /* renamed from: r0 */
    public LayoutInflater.Factory2 m4731r0() {
        return this.f7517f;
    }

    /* renamed from: r1 */
    public final void m4732r1() {
        synchronized (this.f7512a) {
            if (this.f7512a.isEmpty()) {
                this.f7519h.setEnabled(getBackStackEntryCount() > 0 && m4653E0(this.f7535x));
            } else {
                this.f7519h.setEnabled(true);
            }
        }
    }

    public void registerFragmentLifecycleCallbacks(@NonNull FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
        this.f7525n.m4823o(fragmentLifecycleCallbacks, z);
    }

    public void removeFragmentOnAttachListener(@NonNull FragmentOnAttachListener fragmentOnAttachListener) {
        this.f7526o.remove(fragmentOnAttachListener);
    }

    public void removeOnBackStackChangedListener(@NonNull OnBackStackChangedListener onBackStackChangedListener) {
        ArrayList<OnBackStackChangedListener> arrayList = this.f7524m;
        if (arrayList != null) {
            arrayList.remove(onBackStackChangedListener);
        }
    }

    public void restoreBackStack(@NonNull String str) {
        m4685X(new C1110o(str), false);
    }

    /* renamed from: s */
    public final void m4733s() {
        FragmentHostCallback<?> fragmentHostCallback = this.f7533v;
        if (fragmentHostCallback instanceof ViewModelStoreOwner ? this.f7514c.m53834q().m57884n() : fragmentHostCallback.m4623b() instanceof Activity ? !((Activity) this.f7533v.m4623b()).isChangingConfigurations() : true) {
            Iterator<BackStackState> it2 = this.f7521j.values().iterator();
            while (it2.hasNext()) {
                Iterator<String> it3 = it2.next().mFragments.iterator();
                while (it3.hasNext()) {
                    this.f7514c.m53834q().m57877f(it3.next(), false);
                }
            }
        }
    }

    @NonNull
    /* renamed from: s0 */
    public C1125d m4734s0() {
        return this.f7525n;
    }

    public void saveBackStack(@NonNull String str) {
        m4685X(new C1111p(str), false);
    }

    @Nullable
    public Fragment.SavedState saveFragmentInstanceState(@NonNull Fragment fragment) {
        C1126e m53832o = this.f7514c.m53832o(fragment.f7404j);
        if (m53832o == null || !m53832o.m4835k().equals(fragment)) {
            m4729q1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        return m53832o.m4841q();
    }

    public void setFragmentFactory(@NonNull FragmentFactory fragmentFactory) {
        this.f7537z = fragmentFactory;
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void setFragmentResult(@NonNull String str, @NonNull Bundle bundle) {
        C1107l c1107l = this.f7523l.get(str);
        if (c1107l == null || !c1107l.m4755a(Lifecycle.State.STARTED)) {
            this.f7522k.put(str, bundle);
        } else {
            c1107l.onFragmentResult(str, bundle);
        }
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Setting fragment result with key " + str + " and result " + bundle);
        }
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    @SuppressLint({"SyntheticAccessor"})
    public final void setFragmentResultListener(@NonNull final String str, @NonNull LifecycleOwner lifecycleOwner, @NonNull final FragmentResultListener fragmentResultListener) {
        final Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.fragment.app.FragmentManager.6
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner2, @NonNull Lifecycle.Event event) {
                Bundle bundle;
                if (event == Lifecycle.Event.ON_START && (bundle = (Bundle) FragmentManager.this.f7522k.get(str)) != null) {
                    fragmentResultListener.onFragmentResult(str, bundle);
                    FragmentManager.this.clearFragmentResult(str);
                }
                if (event == Lifecycle.Event.ON_DESTROY) {
                    lifecycle.removeObserver(this);
                    FragmentManager.this.f7523l.remove(str);
                }
            }
        };
        C1107l put = this.f7523l.put(str, new C1107l(lifecycle, fragmentResultListener, lifecycleEventObserver));
        if (put != null) {
            put.m4756b();
        }
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Setting FragmentResultListener with key " + str + " lifecycleOwner " + lifecycle + " and listener " + fragmentResultListener);
        }
        lifecycle.addObserver(lifecycleEventObserver);
    }

    public void setStrictModePolicy(@Nullable FragmentStrictMode.Policy policy) {
        this.f7510Q = policy;
    }

    /* renamed from: t */
    public final Set<SpecialEffectsController> m4735t() {
        HashSet hashSet = new HashSet();
        Iterator<C1126e> it2 = this.f7514c.m53829l().iterator();
        while (it2.hasNext()) {
            ViewGroup viewGroup = it2.next().m4835k().f7427y0;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.getOrCreateController(viewGroup, m4738u0()));
            }
        }
        return hashSet;
    }

    @Nullable
    /* renamed from: t0 */
    public Fragment m4736t0() {
        return this.f7535x;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(CloudStorageConstants.OPERATION_IN);
        Fragment fragment = this.f7535x;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f7535x)));
            sb.append("}");
        } else {
            FragmentHostCallback<?> fragmentHostCallback = this.f7533v;
            if (fragmentHostCallback != null) {
                sb.append(fragmentHostCallback.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f7533v)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u */
    public final Set<SpecialEffectsController> m4737u(@NonNull ArrayList<C1122a> arrayList, int i, int i2) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i < i2) {
            Iterator<FragmentTransaction.C1117a> it2 = arrayList.get(i).f7610c.iterator();
            while (it2.hasNext()) {
                Fragment fragment = it2.next().f7628b;
                if (fragment != null && (viewGroup = fragment.f7427y0) != null) {
                    hashSet.add(SpecialEffectsController.getOrCreateController(viewGroup, this));
                }
            }
            i++;
        }
        return hashSet;
    }

    @NonNull
    /* renamed from: u0 */
    public fwm m4738u0() {
        fwm fwmVar = this.f7495B;
        if (fwmVar != null) {
            return fwmVar;
        }
        Fragment fragment = this.f7535x;
        return fragment != null ? fragment.f7424x.m4738u0() : this.f7496C;
    }

    public void unregisterFragmentLifecycleCallbacks(@NonNull FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        this.f7525n.m4824p(fragmentLifecycleCallbacks);
    }

    @NonNull
    /* renamed from: v */
    public C1126e m4739v(@NonNull Fragment fragment) {
        C1126e m53832o = this.f7514c.m53832o(fragment.f7404j);
        if (m53832o != null) {
            return m53832o;
        }
        C1126e c1126e = new C1126e(this.f7525n, this.f7514c, fragment);
        c1126e.m4839o(this.f7533v.m4623b().getClassLoader());
        c1126e.m4844t(this.f7532u);
        return c1126e;
    }

    /* renamed from: w */
    public void m4740w(@NonNull Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (fragment.f7413q0) {
            return;
        }
        fragment.f7413q0 = true;
        if (fragment.f7411p) {
            if (isLoggingEnabled(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            this.f7514c.m53839v(fragment);
            if (m4645A0(fragment)) {
                this.f7501H = true;
            }
            m4720n1(fragment);
        }
    }

    @NonNull
    /* renamed from: w0 */
    public ViewModelStore m4741w0(@NonNull Fragment fragment) {
        return this.f7509P.m57883m(fragment);
    }

    /* renamed from: x */
    public void m4742x() {
        this.f7502I = false;
        this.f7503J = false;
        this.f7509P.m57887q(false);
        m4675S(4);
    }

    /* renamed from: x0 */
    public void m4743x0() {
        m4689Z(true);
        if (this.f7519h.getIsEnabled()) {
            popBackStackImmediate();
        } else {
            this.f7518g.onBackPressed();
        }
    }

    /* renamed from: y */
    public void m4744y() {
        this.f7502I = false;
        this.f7503J = false;
        this.f7509P.m57887q(false);
        m4675S(0);
    }

    /* renamed from: y0 */
    public void m4745y0(@NonNull Fragment fragment) {
        if (isLoggingEnabled(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (fragment.f7406k0) {
            return;
        }
        fragment.f7406k0 = true;
        fragment.f7382F0 = true ^ fragment.f7382F0;
        m4720n1(fragment);
    }

    /* renamed from: z */
    public void m4746z(@NonNull Configuration configuration, boolean z) {
        if (z && (this.f7533v instanceof OnConfigurationChangedProvider)) {
            m4729q1(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
        }
        for (Fragment fragment : this.f7514c.m53833p()) {
            if (fragment != null) {
                fragment.m4544D(configuration);
                if (z) {
                    fragment.f7428z.m4746z(configuration, true);
                }
            }
        }
    }

    /* renamed from: z0 */
    public void m4747z0(@NonNull Fragment fragment) {
        if (fragment.f7411p && m4645A0(fragment)) {
            this.f7501H = true;
        }
    }

    public void popBackStack(@Nullable String str, int i) {
        m4685X(new C1109n(str, -1, i), false);
    }

    @MainThread
    public boolean popBackStackImmediate(@Nullable String str, int i) {
        return m4678T0(str, -1, i);
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes3.dex */
    public static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new C1095a();
        int mRequestCode;
        String mWho;

        /* renamed from: androidx.fragment.app.FragmentManager$LaunchedFragmentInfo$a */
        /* loaded from: classes3.dex */
        public class C1095a implements Parcelable.Creator<LaunchedFragmentInfo> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public LaunchedFragmentInfo[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        }

        public LaunchedFragmentInfo(@NonNull String str, int i) {
            this.mWho = str;
            this.mRequestCode = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mWho);
            parcel.writeInt(this.mRequestCode);
        }

        public LaunchedFragmentInfo(@NonNull Parcel parcel) {
            this.mWho = parcel.readString();
            this.mRequestCode = parcel.readInt();
        }
    }

    public void popBackStack(int i, int i2) {
        m4676S0(i, i2, false);
    }

    public boolean popBackStackImmediate(int i, int i2) {
        if (i >= 0) {
            return m4678T0(null, i, i2);
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }
}
