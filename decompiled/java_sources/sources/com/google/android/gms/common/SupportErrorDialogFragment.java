package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes5.dex */
public class SupportErrorDialogFragment extends DialogFragment {

    /* renamed from: A1 */
    public DialogInterface.OnCancelListener f29038A1;

    /* renamed from: B1 */
    @Nullable
    public Dialog f29039B1;

    /* renamed from: z1 */
    public Dialog f29040z1;

    @NonNull
    public static SupportErrorDialogFragment newInstance(@NonNull Dialog dialog) {
        return newInstance(dialog, null);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@NonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f29038A1;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f29040z1;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f29039B1 == null) {
            this.f29039B1 = new AlertDialog.Builder((Context) Preconditions.checkNotNull(getContext())).create();
        }
        return this.f29039B1;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        super.show(fragmentManager, str);
    }

    @NonNull
    public static SupportErrorDialogFragment newInstance(@NonNull Dialog dialog, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        SupportErrorDialogFragment supportErrorDialogFragment = new SupportErrorDialogFragment();
        Dialog dialog2 = (Dialog) Preconditions.checkNotNull(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        supportErrorDialogFragment.f29040z1 = dialog2;
        if (onCancelListener != null) {
            supportErrorDialogFragment.f29038A1 = onCancelListener;
        }
        return supportErrorDialogFragment;
    }
}
