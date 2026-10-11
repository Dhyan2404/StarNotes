package com.onyx.android.sdk.matisse.internal.p030ui.widget;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;
import com.onyx.android.sdk.imagepicker.C7453R;

/* loaded from: classes7.dex */
public class IncapableDialog extends DialogFragment {
    public static final String EXTRA_MESSAGE = "extra_message";
    public static final String EXTRA_TITLE = "extra_title";

    /* renamed from: com.onyx.android.sdk.matisse.internal.ui.widget.IncapableDialog$a */
    /* loaded from: classes7.dex */
    public class DialogInterfaceOnClickListenerC7471a implements DialogInterface.OnClickListener {
        public DialogInterfaceOnClickListenerC7471a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    public static IncapableDialog newInstance(String str, String str2) {
        IncapableDialog incapableDialog = new IncapableDialog();
        Bundle bundle = new Bundle();
        bundle.putString(EXTRA_TITLE, str);
        bundle.putString(EXTRA_MESSAGE, str2);
        incapableDialog.setArguments(bundle);
        return incapableDialog;
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        String string = getArguments().getString(EXTRA_TITLE);
        String string2 = getArguments().getString(EXTRA_MESSAGE);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        if (!TextUtils.isEmpty(string)) {
            builder.setTitle(string);
        }
        if (!TextUtils.isEmpty(string2)) {
            builder.setMessage(string2);
        }
        builder.setPositiveButton(C7453R.string.button_ok, new DialogInterfaceOnClickListenerC7471a());
        return builder.create();
    }
}
