package androidx.preference;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.preference.DialogPreference;

@Deprecated
/* loaded from: classes3.dex */
public abstract class PreferenceDialogFragment extends DialogFragment implements DialogInterface.OnClickListener {

    @Deprecated
    protected static final String ARG_KEY = "key";

    /* renamed from: m */
    public static final String f8807m = "PreferenceDialogFragment.title";

    /* renamed from: n */
    public static final String f8808n = "PreferenceDialogFragment.positiveText";

    /* renamed from: o */
    public static final String f8809o = "PreferenceDialogFragment.negativeText";

    /* renamed from: p */
    public static final String f8810p = "PreferenceDialogFragment.message";

    /* renamed from: q */
    public static final String f8811q = "PreferenceDialogFragment.layout";

    /* renamed from: r */
    public static final String f8812r = "PreferenceDialogFragment.icon";

    /* renamed from: e */
    public DialogPreference f8813e;

    /* renamed from: f */
    public CharSequence f8814f;

    /* renamed from: g */
    public CharSequence f8815g;

    /* renamed from: h */
    public CharSequence f8816h;

    /* renamed from: i */
    public CharSequence f8817i;

    /* renamed from: j */
    @LayoutRes
    public int f8818j;

    /* renamed from: k */
    public BitmapDrawable f8819k;

    /* renamed from: l */
    public int f8820l;

    @Deprecated
    public PreferenceDialogFragment() {
    }

    /* renamed from: a */
    public final void m5297a(Dialog dialog) {
        dialog.getWindow().setSoftInputMode(5);
    }

    @Deprecated
    public DialogPreference getPreference() {
        if (this.f8813e == null) {
            this.f8813e = (DialogPreference) ((DialogPreference.TargetFragment) getTargetFragment()).findPreference(getArguments().getString("key"));
        }
        return this.f8813e;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean needInputMethod() {
        return false;
    }

    @Deprecated
    public void onBindDialogView(View view) {
        int i;
        View findViewById = view.findViewById(android.R.id.message);
        if (findViewById != null) {
            CharSequence charSequence = this.f8817i;
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
    @Deprecated
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f8820l = i;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ComponentCallbacks2 targetFragment = getTargetFragment();
        if (!(targetFragment instanceof DialogPreference.TargetFragment)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        DialogPreference.TargetFragment targetFragment2 = (DialogPreference.TargetFragment) targetFragment;
        String string = getArguments().getString("key");
        if (bundle != null) {
            this.f8814f = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f8815g = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f8816h = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f8817i = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f8818j = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f8819k = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) targetFragment2.findPreference(string);
        this.f8813e = dialogPreference;
        this.f8814f = dialogPreference.getDialogTitle();
        this.f8815g = this.f8813e.getPositiveButtonText();
        this.f8816h = this.f8813e.getNegativeButtonText();
        this.f8817i = this.f8813e.getDialogMessage();
        this.f8818j = this.f8813e.getDialogLayoutResource();
        Drawable dialogIcon = this.f8813e.getDialogIcon();
        if (dialogIcon == null || (dialogIcon instanceof BitmapDrawable)) {
            this.f8819k = (BitmapDrawable) dialogIcon;
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(dialogIcon.getIntrinsicWidth(), dialogIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        dialogIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        dialogIcon.draw(canvas);
        this.f8819k = new BitmapDrawable(getResources(), createBitmap);
    }

    @Override // android.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        Activity activity = getActivity();
        this.f8820l = -2;
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(activity).setTitle(this.f8814f).setIcon(this.f8819k).setPositiveButton(this.f8815g, this).setNegativeButton(this.f8816h, this);
        View onCreateDialogView = onCreateDialogView(activity);
        if (onCreateDialogView != null) {
            onBindDialogView(onCreateDialogView);
            negativeButton.setView(onCreateDialogView);
        } else {
            negativeButton.setMessage(this.f8817i);
        }
        onPrepareDialogBuilder(negativeButton);
        AlertDialog create = negativeButton.create();
        if (needInputMethod()) {
            m5297a(create);
        }
        return create;
    }

    @Deprecated
    public View onCreateDialogView(Context context) {
        int i = this.f8818j;
        if (i == 0) {
            return null;
        }
        return LayoutInflater.from(context).inflate(i, (ViewGroup) null);
    }

    @Deprecated
    public abstract void onDialogClosed(boolean z);

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        onDialogClosed(this.f8820l == -1);
    }

    @Deprecated
    public void onPrepareDialogBuilder(AlertDialog.Builder builder) {
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f8814f);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f8815g);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f8816h);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f8817i);
        bundle.putInt("PreferenceDialogFragment.layout", this.f8818j);
        BitmapDrawable bitmapDrawable = this.f8819k;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }
}
