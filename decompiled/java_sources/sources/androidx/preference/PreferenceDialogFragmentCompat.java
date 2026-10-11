package androidx.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCaller;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.DialogPreference;

/* loaded from: classes3.dex */
public abstract class PreferenceDialogFragmentCompat extends DialogFragment implements DialogInterface.OnClickListener {
    protected static final String ARG_KEY = "key";

    /* renamed from: H1 */
    public static final String f8821H1 = "PreferenceDialogFragment.title";

    /* renamed from: I1 */
    public static final String f8822I1 = "PreferenceDialogFragment.positiveText";

    /* renamed from: J1 */
    public static final String f8823J1 = "PreferenceDialogFragment.negativeText";

    /* renamed from: K1 */
    public static final String f8824K1 = "PreferenceDialogFragment.message";

    /* renamed from: L1 */
    public static final String f8825L1 = "PreferenceDialogFragment.layout";

    /* renamed from: M1 */
    public static final String f8826M1 = "PreferenceDialogFragment.icon";

    /* renamed from: A1 */
    public CharSequence f8827A1;

    /* renamed from: B1 */
    public CharSequence f8828B1;

    /* renamed from: C1 */
    public CharSequence f8829C1;

    /* renamed from: D1 */
    public CharSequence f8830D1;

    /* renamed from: E1 */
    @LayoutRes
    public int f8831E1;

    /* renamed from: F1 */
    public BitmapDrawable f8832F1;

    /* renamed from: G1 */
    public int f8833G1;

    /* renamed from: z1 */
    public DialogPreference f8834z1;

    public DialogPreference getPreference() {
        if (this.f8834z1 == null) {
            this.f8834z1 = (DialogPreference) ((DialogPreference.TargetFragment) getTargetFragment()).findPreference(getArguments().getString("key"));
        }
        return this.f8834z1;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean needInputMethod() {
        return false;
    }

    public void onBindDialogView(View view) {
        int i;
        View findViewById = view.findViewById(android.R.id.message);
        if (findViewById != null) {
            CharSequence charSequence = this.f8830D1;
            if (TextUtils.isEmpty(charSequence)) {
                i = 8;
            } else {
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setText(charSequence);
                }
                i = 0;
            }
            if (findViewById.getVisibility() != i) {
                findViewById.setVisibility(i);
            }
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f8833G1 = i;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityResultCaller targetFragment = getTargetFragment();
        if (!(targetFragment instanceof DialogPreference.TargetFragment)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        DialogPreference.TargetFragment targetFragment2 = (DialogPreference.TargetFragment) targetFragment;
        String string = getArguments().getString("key");
        if (bundle != null) {
            this.f8827A1 = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f8828B1 = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f8829C1 = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f8830D1 = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f8831E1 = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f8832F1 = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) targetFragment2.findPreference(string);
        this.f8834z1 = dialogPreference;
        this.f8827A1 = dialogPreference.getDialogTitle();
        this.f8828B1 = this.f8834z1.getPositiveButtonText();
        this.f8829C1 = this.f8834z1.getNegativeButtonText();
        this.f8830D1 = this.f8834z1.getDialogMessage();
        this.f8831E1 = this.f8834z1.getDialogLayoutResource();
        Drawable dialogIcon = this.f8834z1.getDialogIcon();
        if (dialogIcon == null || (dialogIcon instanceof BitmapDrawable)) {
            this.f8832F1 = (BitmapDrawable) dialogIcon;
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(dialogIcon.getIntrinsicWidth(), dialogIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        dialogIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        dialogIcon.draw(canvas);
        this.f8832F1 = new BitmapDrawable(getResources(), createBitmap);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        FragmentActivity activity = getActivity();
        this.f8833G1 = -2;
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(activity).setTitle(this.f8827A1).setIcon(this.f8832F1).setPositiveButton(this.f8828B1, this).setNegativeButton(this.f8829C1, this);
        View onCreateDialogView = onCreateDialogView(activity);
        if (onCreateDialogView != null) {
            onBindDialogView(onCreateDialogView);
            negativeButton.setView(onCreateDialogView);
        } else {
            negativeButton.setMessage(this.f8830D1);
        }
        onPrepareDialogBuilder(negativeButton);
        AlertDialog create = negativeButton.create();
        if (needInputMethod()) {
            m5298r0(create);
        }
        return create;
    }

    public View onCreateDialogView(Context context) {
        int i = this.f8831E1;
        if (i == 0) {
            return null;
        }
        return getLayoutInflater().inflate(i, (ViewGroup) null);
    }

    public abstract void onDialogClosed(boolean z);

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NonNull DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        onDialogClosed(this.f8833G1 == -1);
    }

    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f8827A1);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f8828B1);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f8829C1);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f8830D1);
        bundle.putInt("PreferenceDialogFragment.layout", this.f8831E1);
        BitmapDrawable bitmapDrawable = this.f8832F1;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    /* renamed from: r0 */
    public final void m5298r0(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(5);
    }
}
