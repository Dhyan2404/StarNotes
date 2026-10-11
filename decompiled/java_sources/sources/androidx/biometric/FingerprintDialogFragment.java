package androidx.biometric;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.Observer;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class FingerprintDialogFragment extends DialogFragment {

    /* renamed from: G1 */
    public static final String f2264G1 = "FingerprintFragment";

    /* renamed from: H1 */
    public static final String f2265H1 = "host_activity";

    /* renamed from: I1 */
    public static final int f2266I1 = 0;

    /* renamed from: J1 */
    public static final int f2267J1 = 1;

    /* renamed from: K1 */
    public static final int f2268K1 = 2;

    /* renamed from: L1 */
    public static final int f2269L1 = 3;

    /* renamed from: M1 */
    public static final int f2270M1 = 2000;

    /* renamed from: B1 */
    public BiometricViewModel f2272B1;

    /* renamed from: C1 */
    public int f2273C1;

    /* renamed from: D1 */
    public int f2274D1;

    /* renamed from: E1 */
    @Nullable
    public ImageView f2275E1;

    /* renamed from: F1 */
    @Nullable
    public TextView f2276F1;

    /* renamed from: z1 */
    public final Handler f2277z1 = new Handler(Looper.getMainLooper());

    /* renamed from: A1 */
    public final Runnable f2271A1 = new RunnableC0336a();

    /* renamed from: androidx.biometric.FingerprintDialogFragment$a */
    /* loaded from: classes3.dex */
    public class RunnableC0336a implements Runnable {
        public RunnableC0336a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FingerprintDialogFragment.this.m1164w0();
        }
    }

    /* renamed from: androidx.biometric.FingerprintDialogFragment$b */
    /* loaded from: classes3.dex */
    public class DialogInterfaceOnClickListenerC0337b implements DialogInterface.OnClickListener {
        public DialogInterfaceOnClickListenerC0337b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            FingerprintDialogFragment.this.f2272B1.m1126a0(true);
        }
    }

    /* renamed from: androidx.biometric.FingerprintDialogFragment$c */
    /* loaded from: classes3.dex */
    public class C0338c implements Observer<Integer> {
        public C0338c() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(Integer num) {
            FingerprintDialogFragment fingerprintDialogFragment = FingerprintDialogFragment.this;
            fingerprintDialogFragment.f2277z1.removeCallbacks(fingerprintDialogFragment.f2271A1);
            FingerprintDialogFragment.this.m1166y0(num.intValue());
            FingerprintDialogFragment.this.m1167z0(num.intValue());
            FingerprintDialogFragment fingerprintDialogFragment2 = FingerprintDialogFragment.this;
            fingerprintDialogFragment2.f2277z1.postDelayed(fingerprintDialogFragment2.f2271A1, 2000L);
        }
    }

    /* renamed from: androidx.biometric.FingerprintDialogFragment$d */
    /* loaded from: classes3.dex */
    public class C0339d implements Observer<CharSequence> {
        public C0339d() {
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(CharSequence charSequence) {
            FingerprintDialogFragment fingerprintDialogFragment = FingerprintDialogFragment.this;
            fingerprintDialogFragment.f2277z1.removeCallbacks(fingerprintDialogFragment.f2271A1);
            FingerprintDialogFragment.this.m1159A0(charSequence);
            FingerprintDialogFragment fingerprintDialogFragment2 = FingerprintDialogFragment.this;
            fingerprintDialogFragment2.f2277z1.postDelayed(fingerprintDialogFragment2.f2271A1, 2000L);
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.biometric.FingerprintDialogFragment$e */
    /* loaded from: classes3.dex */
    public static class C0340e {
        private C0340e() {
        }

        /* renamed from: a */
        public static void m1170a(@NonNull Drawable drawable) {
            if (drawable instanceof AnimatedVectorDrawable) {
                ((AnimatedVectorDrawable) drawable).start();
            }
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.biometric.FingerprintDialogFragment$f */
    /* loaded from: classes3.dex */
    public static class C0341f {
        private C0341f() {
        }

        /* renamed from: a */
        public static int m1171a() {
            return C0118R.attr.colorError;
        }
    }

    @NonNull
    @RequiresApi(19)
    /* renamed from: v0 */
    public static FingerprintDialogFragment m1158v0(boolean z) {
        FingerprintDialogFragment fingerprintDialogFragment = new FingerprintDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("host_activity", z);
        fingerprintDialogFragment.setArguments(bundle);
        return fingerprintDialogFragment;
    }

    /* renamed from: A0 */
    public void m1159A0(@Nullable CharSequence charSequence) {
        TextView textView = this.f2276F1;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@NonNull DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        this.f2272B1.m1120U(true);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        m1160r0();
        this.f2273C1 = m1162t0(C0341f.m1171a());
        this.f2274D1 = m1162t0(android.R.attr.textColorSecondary);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
        builder.setTitle(this.f2272B1.m1149v());
        View inflate = LayoutInflater.from(builder.getContext()).inflate(C0342R.layout.fingerprint_dialog_layout, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(C0342R.id.fingerprint_subtitle);
        if (textView != null) {
            CharSequence m1148u = this.f2272B1.m1148u();
            if (TextUtils.isEmpty(m1148u)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
                textView.setText(m1148u);
            }
        }
        TextView textView2 = (TextView) inflate.findViewById(C0342R.id.fingerprint_description);
        if (textView2 != null) {
            CharSequence m1141n = this.f2272B1.m1141n();
            if (TextUtils.isEmpty(m1141n)) {
                textView2.setVisibility(8);
            } else {
                textView2.setVisibility(0);
                textView2.setText(m1141n);
            }
        }
        this.f2275E1 = (ImageView) inflate.findViewById(C0342R.id.fingerprint_icon);
        this.f2276F1 = (TextView) inflate.findViewById(C0342R.id.fingerprint_error);
        builder.setNegativeButton(C0344b.m1191d(this.f2272B1.m1129d()) ? getString(C0342R.string.confirm_device_credential_password) : this.f2272B1.m1147t(), new DialogInterfaceOnClickListenerC0337b());
        builder.setView(inflate);
        AlertDialog create = builder.create();
        create.setCanceledOnTouchOutside(false);
        return create;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.f2277z1.removeCallbacksAndMessages(null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.f2272B1.m1123X(0);
        this.f2272B1.m1124Y(1);
        this.f2272B1.m1122W(getString(C0342R.string.fingerprint_dialog_touch_sensor));
    }

    /* renamed from: r0 */
    public final void m1160r0() {
        BiometricViewModel m1095e = BiometricPrompt.m1095e(this, m1163u0());
        this.f2272B1 = m1095e;
        m1095e.m1144q().observe(this, new C0338c());
        this.f2272B1.m1142o().observe(this, new C0339d());
    }

    /* renamed from: s0 */
    public final Drawable m1161s0(int i, int i2) {
        int i3;
        Context context = getContext();
        if (context == null) {
            Log.w(f2264G1, "Unable to get asset. Context is null.");
            return null;
        }
        if (i == 0 && i2 == 1) {
            i3 = C0342R.drawable.fingerprint_dialog_fp_icon;
        } else if (i == 1 && i2 == 2) {
            i3 = C0342R.drawable.fingerprint_dialog_error;
        } else if (i == 2 && i2 == 1) {
            i3 = C0342R.drawable.fingerprint_dialog_fp_icon;
        } else {
            if (i != 1 || i2 != 3) {
                return null;
            }
            i3 = C0342R.drawable.fingerprint_dialog_fp_icon;
        }
        return ContextCompat.getDrawable(context, i3);
    }

    /* renamed from: t0 */
    public final int m1162t0(int i) {
        Context context = getContext();
        if (context == null) {
            Log.w(f2264G1, "Unable to get themed color. Context or activity is null.");
            return 0;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(typedValue.data, new int[]{i});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        return color;
    }

    /* renamed from: u0 */
    public final boolean m1163u0() {
        return getArguments().getBoolean("host_activity", true);
    }

    /* renamed from: w0 */
    public void m1164w0() {
        Context context = getContext();
        if (context == null) {
            Log.w(f2264G1, "Not resetting the dialog. Context is null.");
        } else {
            this.f2272B1.m1124Y(1);
            this.f2272B1.m1122W(context.getString(C0342R.string.fingerprint_dialog_touch_sensor));
        }
    }

    /* renamed from: x0 */
    public final boolean m1165x0(int i, int i2) {
        if (i == 0 && i2 == 1) {
            return false;
        }
        if (i == 1 && i2 == 2) {
            return true;
        }
        return i == 2 && i2 == 1;
    }

    /* renamed from: y0 */
    public void m1166y0(int i) {
        int m1143p;
        Drawable m1161s0;
        if (this.f2275E1 == null || (m1161s0 = m1161s0((m1143p = this.f2272B1.m1143p()), i)) == null) {
            return;
        }
        this.f2275E1.setImageDrawable(m1161s0);
        if (m1165x0(m1143p, i)) {
            C0340e.m1170a(m1161s0);
        }
        this.f2272B1.m1123X(i);
    }

    /* renamed from: z0 */
    public void m1167z0(int i) {
        TextView textView = this.f2276F1;
        if (textView != null) {
            textView.setTextColor(i == 2 ? this.f2273C1 : this.f2274D1);
        }
    }
}
