package com.permissionx.guolindev.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes9.dex */
public abstract class RationaleDialog extends Dialog {
    public RationaleDialog(@NonNull Context context) {
        super(context);
    }

    @Nullable
    public abstract View getNegativeButton();

    @NonNull
    public abstract List<String> getPermissionsToRequest();

    @NonNull
    public abstract View getPositiveButton();

    public RationaleDialog(@NonNull Context context, int i) {
        super(context, i);
    }

    public RationaleDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
    }
}
