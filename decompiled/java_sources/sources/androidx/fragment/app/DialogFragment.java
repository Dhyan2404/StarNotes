package androidx.fragment.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.ComponentDialog;
import androidx.annotation.CallSuper;
import androidx.annotation.LayoutRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;

/* loaded from: classes3.dex */
public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public static final int STYLE_NORMAL = 0;
    public static final int STYLE_NO_FRAME = 2;
    public static final int STYLE_NO_INPUT = 3;
    public static final int STYLE_NO_TITLE = 1;

    /* renamed from: s1 */
    public static final String f7338s1 = "android:savedDialogState";

    /* renamed from: t1 */
    public static final String f7339t1 = "android:style";

    /* renamed from: u1 */
    public static final String f7340u1 = "android:theme";

    /* renamed from: v1 */
    public static final String f7341v1 = "android:cancelable";

    /* renamed from: w1 */
    public static final String f7342w1 = "android:showsDialog";

    /* renamed from: x1 */
    public static final String f7343x1 = "android:backStackId";

    /* renamed from: y1 */
    public static final String f7344y1 = "android:dialogShowing";

    /* renamed from: c1 */
    public Handler f7345c1;

    /* renamed from: d1 */
    public Runnable f7346d1;

    /* renamed from: e1 */
    public DialogInterface.OnCancelListener f7347e1;

    /* renamed from: f1 */
    public DialogInterface.OnDismissListener f7348f1;

    /* renamed from: g1 */
    public int f7349g1;

    /* renamed from: h1 */
    public int f7350h1;

    /* renamed from: i1 */
    public boolean f7351i1;

    /* renamed from: j1 */
    public boolean f7352j1;

    /* renamed from: k1 */
    public int f7353k1;

    /* renamed from: l1 */
    public boolean f7354l1;

    /* renamed from: m1 */
    public Observer<LifecycleOwner> f7355m1;

    /* renamed from: n1 */
    @Nullable
    public Dialog f7356n1;

    /* renamed from: o1 */
    public boolean f7357o1;

    /* renamed from: p1 */
    public boolean f7358p1;

    /* renamed from: q1 */
    public boolean f7359q1;

    /* renamed from: r1 */
    public boolean f7360r1;

    /* renamed from: androidx.fragment.app.DialogFragment$a */
    /* loaded from: classes3.dex */
    public class RunnableC1074a implements Runnable {
        public RunnableC1074a() {
        }

        @Override // java.lang.Runnable
        @SuppressLint({"SyntheticAccessor"})
        public void run() {
            DialogFragment.this.f7348f1.onDismiss(DialogFragment.this.f7356n1);
        }
    }

    /* renamed from: androidx.fragment.app.DialogFragment$b */
    /* loaded from: classes3.dex */
    public class DialogInterfaceOnCancelListenerC1075b implements DialogInterface.OnCancelListener {
        public DialogInterfaceOnCancelListenerC1075b() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        @SuppressLint({"SyntheticAccessor"})
        public void onCancel(@Nullable DialogInterface dialogInterface) {
            if (DialogFragment.this.f7356n1 != null) {
                DialogFragment dialogFragment = DialogFragment.this;
                dialogFragment.onCancel(dialogFragment.f7356n1);
            }
        }
    }

    /* renamed from: androidx.fragment.app.DialogFragment$c */
    /* loaded from: classes3.dex */
    public class DialogInterfaceOnDismissListenerC1076c implements DialogInterface.OnDismissListener {
        public DialogInterfaceOnDismissListenerC1076c() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        @SuppressLint({"SyntheticAccessor"})
        public void onDismiss(@Nullable DialogInterface dialogInterface) {
            if (DialogFragment.this.f7356n1 != null) {
                DialogFragment dialogFragment = DialogFragment.this;
                dialogFragment.onDismiss(dialogFragment.f7356n1);
            }
        }
    }

    /* renamed from: androidx.fragment.app.DialogFragment$d */
    /* loaded from: classes3.dex */
    public class C1077d implements Observer<LifecycleOwner> {
        public C1077d() {
        }

        @Override // androidx.lifecycle.Observer
        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(LifecycleOwner lifecycleOwner) {
            if (lifecycleOwner == null || !DialogFragment.this.f7352j1) {
                return;
            }
            View requireView = DialogFragment.this.requireView();
            if (requireView.getParent() != null) {
                throw new IllegalStateException("DialogFragment can not be attached to a container view");
            }
            if (DialogFragment.this.f7356n1 != null) {
                if (FragmentManager.isLoggingEnabled(3)) {
                    Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + DialogFragment.this.f7356n1);
                }
                DialogFragment.this.f7356n1.setContentView(requireView);
            }
        }
    }

    /* renamed from: androidx.fragment.app.DialogFragment$e */
    /* loaded from: classes3.dex */
    public class C1078e extends FragmentContainer {

        /* renamed from: e */
        public final /* synthetic */ FragmentContainer f7365e;

        public C1078e(FragmentContainer fragmentContainer) {
            this.f7365e = fragmentContainer;
        }

        @Override // androidx.fragment.app.FragmentContainer
        @Nullable
        public View onFindViewById(int i) {
            return this.f7365e.onHasView() ? this.f7365e.onFindViewById(i) : DialogFragment.this.m4535o0(i);
        }

        @Override // androidx.fragment.app.FragmentContainer
        public boolean onHasView() {
            return this.f7365e.onHasView() || DialogFragment.this.m4536p0();
        }
    }

    public DialogFragment() {
        this.f7346d1 = new RunnableC1074a();
        this.f7347e1 = new DialogInterfaceOnCancelListenerC1075b();
        this.f7348f1 = new DialogInterfaceOnDismissListenerC1076c();
        this.f7349g1 = 0;
        this.f7350h1 = 0;
        this.f7351i1 = true;
        this.f7352j1 = true;
        this.f7353k1 = -1;
        this.f7355m1 = new C1077d();
        this.f7360r1 = false;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H */
    public void mo4532H(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Bundle bundle2;
        super.mo4532H(layoutInflater, viewGroup, bundle);
        if (this.f7429z0 != null || this.f7356n1 == null || bundle == null || (bundle2 = bundle.getBundle(f7338s1)) == null) {
            return;
        }
        this.f7356n1.onRestoreInstanceState(bundle2);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    /* renamed from: c */
    public FragmentContainer mo4533c() {
        return new C1078e(super.mo4533c());
    }

    public void dismiss() {
        m4534n0(false, false, false);
    }

    public void dismissAllowingStateLoss() {
        m4534n0(true, false, false);
    }

    @MainThread
    public void dismissNow() {
        m4534n0(false, false, true);
    }

    @Nullable
    public Dialog getDialog() {
        return this.f7356n1;
    }

    public boolean getShowsDialog() {
        return this.f7352j1;
    }

    @StyleRes
    public int getTheme() {
        return this.f7350h1;
    }

    public boolean isCancelable() {
        return this.f7351i1;
    }

    /* renamed from: n0 */
    public final void m4534n0(boolean z, boolean z2, boolean z3) {
        if (this.f7358p1) {
            return;
        }
        this.f7358p1 = true;
        this.f7359q1 = false;
        Dialog dialog = this.f7356n1;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f7356n1.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.f7345c1.getLooper()) {
                    onDismiss(this.f7356n1);
                } else {
                    this.f7345c1.post(this.f7346d1);
                }
            }
        }
        this.f7357o1 = true;
        if (this.f7353k1 >= 0) {
            if (z3) {
                getParentFragmentManager().popBackStackImmediate(this.f7353k1, 1);
            } else {
                getParentFragmentManager().m4676S0(this.f7353k1, 1, z);
            }
            this.f7353k1 = -1;
            return;
        }
        FragmentTransaction beginTransaction = getParentFragmentManager().beginTransaction();
        beginTransaction.setReorderingAllowed(true);
        beginTransaction.remove(this);
        if (z3) {
            beginTransaction.commitNow();
        } else if (z) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    @Nullable
    /* renamed from: o0 */
    public View m4535o0(int i) {
        Dialog dialog = this.f7356n1;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    @Deprecated
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);
        getViewLifecycleOwnerLiveData().observeForever(this.f7355m1);
        if (this.f7359q1) {
            return;
        }
        this.f7358p1 = false;
    }

    public void onCancel(@NonNull DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.f7345c1 = new Handler();
        this.f7352j1 = this.f7395Q == 0;
        if (bundle != null) {
            this.f7349g1 = bundle.getInt(f7339t1, 0);
            this.f7350h1 = bundle.getInt(f7340u1, 0);
            this.f7351i1 = bundle.getBoolean(f7341v1, true);
            this.f7352j1 = bundle.getBoolean(f7342w1, this.f7352j1);
            this.f7353k1 = bundle.getInt(f7343x1, -1);
        }
    }

    @NonNull
    @MainThread
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new ComponentDialog(requireContext(), getTheme());
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.f7356n1;
        if (dialog != null) {
            this.f7357o1 = true;
            dialog.setOnDismissListener(null);
            this.f7356n1.dismiss();
            if (!this.f7358p1) {
                onDismiss(this.f7356n1);
            }
            this.f7356n1 = null;
            this.f7360r1 = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onDetach() {
        super.onDetach();
        if (!this.f7359q1 && !this.f7358p1) {
            this.f7358p1 = true;
        }
        getViewLifecycleOwnerLiveData().removeObserver(this.f7355m1);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    @CallSuper
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        if (this.f7357o1) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        m4534n0(true, true, false);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public LayoutInflater onGetLayoutInflater(@Nullable Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        if (this.f7352j1 && !this.f7354l1) {
            m4537q0(bundle);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
            }
            Dialog dialog = this.f7356n1;
            return dialog != null ? onGetLayoutInflater.cloneInContext(dialog.getContext()) : onGetLayoutInflater;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            String str = "getting layout inflater for DialogFragment " + this;
            if (this.f7352j1) {
                Log.d("FragmentManager", "mCreatingDialog = true: " + str);
            } else {
                Log.d("FragmentManager", "mShowsDialog = false: " + str);
            }
        }
        return onGetLayoutInflater;
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.f7356n1;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean(f7344y1, false);
            bundle.putBundle(f7338s1, onSaveInstanceState);
        }
        int i = this.f7349g1;
        if (i != 0) {
            bundle.putInt(f7339t1, i);
        }
        int i2 = this.f7350h1;
        if (i2 != 0) {
            bundle.putInt(f7340u1, i2);
        }
        boolean z = this.f7351i1;
        if (!z) {
            bundle.putBoolean(f7341v1, z);
        }
        boolean z2 = this.f7352j1;
        if (!z2) {
            bundle.putBoolean(f7342w1, z2);
        }
        int i3 = this.f7353k1;
        if (i3 != -1) {
            bundle.putInt(f7343x1, i3);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onStart() {
        super.onStart();
        Dialog dialog = this.f7356n1;
        if (dialog != null) {
            this.f7357o1 = false;
            dialog.show();
            View decorView = this.f7356n1.getWindow().getDecorView();
            ViewTreeLifecycleOwner.set(decorView, this);
            ViewTreeViewModelStoreOwner.set(decorView, this);
            ViewTreeSavedStateRegistryOwner.set(decorView, this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onStop() {
        super.onStop();
        Dialog dialog = this.f7356n1;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.Fragment
    @MainThread
    public void onViewStateRestored(@Nullable Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.f7356n1 == null || bundle == null || (bundle2 = bundle.getBundle(f7338s1)) == null) {
            return;
        }
        this.f7356n1.onRestoreInstanceState(bundle2);
    }

    /* renamed from: p0 */
    public boolean m4536p0() {
        return this.f7360r1;
    }

    /* renamed from: q0 */
    public final void m4537q0(@Nullable Bundle bundle) {
        if (this.f7352j1 && !this.f7360r1) {
            try {
                this.f7354l1 = true;
                Dialog onCreateDialog = onCreateDialog(bundle);
                this.f7356n1 = onCreateDialog;
                if (this.f7352j1) {
                    setupDialog(onCreateDialog, this.f7349g1);
                    Context context = getContext();
                    if (context instanceof Activity) {
                        this.f7356n1.setOwnerActivity((Activity) context);
                    }
                    this.f7356n1.setCancelable(this.f7351i1);
                    this.f7356n1.setOnCancelListener(this.f7347e1);
                    this.f7356n1.setOnDismissListener(this.f7348f1);
                    this.f7360r1 = true;
                } else {
                    this.f7356n1 = null;
                }
            } finally {
                this.f7354l1 = false;
            }
        }
    }

    @NonNull
    public final ComponentDialog requireComponentDialog() {
        Dialog requireDialog = requireDialog();
        if (requireDialog instanceof ComponentDialog) {
            return (ComponentDialog) requireDialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " did not return a ComponentDialog instance from requireDialog(). The actual Dialog is " + requireDialog);
    }

    @NonNull
    public final Dialog requireDialog() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    public void setCancelable(boolean z) {
        this.f7351i1 = z;
        Dialog dialog = this.f7356n1;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public void setShowsDialog(boolean z) {
        this.f7352j1 = z;
    }

    public void setStyle(int i, @StyleRes int i2) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.d("FragmentManager", "Setting style and theme for DialogFragment " + this + " to " + i + ", " + i2);
        }
        this.f7349g1 = i;
        if (i == 2 || i == 3) {
            this.f7350h1 = R.style.Theme.Panel;
        }
        if (i2 != 0) {
            this.f7350h1 = i2;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setupDialog(@NonNull Dialog dialog, int i) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            }
            Window window = dialog.getWindow();
            if (window != null) {
                window.addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    public void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        this.f7358p1 = false;
        this.f7359q1 = true;
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.setReorderingAllowed(true);
        beginTransaction.add(this, str);
        beginTransaction.commit();
    }

    public void showNow(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        this.f7358p1 = false;
        this.f7359q1 = true;
        FragmentTransaction beginTransaction = fragmentManager.beginTransaction();
        beginTransaction.setReorderingAllowed(true);
        beginTransaction.add(this, str);
        beginTransaction.commitNow();
    }

    public int show(@NonNull FragmentTransaction fragmentTransaction, @Nullable String str) {
        this.f7358p1 = false;
        this.f7359q1 = true;
        fragmentTransaction.add(this, str);
        this.f7357o1 = false;
        int commit = fragmentTransaction.commit();
        this.f7353k1 = commit;
        return commit;
    }

    public DialogFragment(@LayoutRes int i) {
        super(i);
        this.f7346d1 = new RunnableC1074a();
        this.f7347e1 = new DialogInterfaceOnCancelListenerC1075b();
        this.f7348f1 = new DialogInterfaceOnDismissListenerC1076c();
        this.f7349g1 = 0;
        this.f7350h1 = 0;
        this.f7351i1 = true;
        this.f7352j1 = true;
        this.f7353k1 = -1;
        this.f7355m1 = new C1077d();
        this.f7360r1 = false;
    }
}
