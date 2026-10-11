package com.permissionx.guolindev.dialog;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import com.sagittarius.p050v6.C13086AB;
import java.util.List;

/* loaded from: classes17.dex */
public abstract class RationaleDialogFragment extends DialogFragment {
    @Nullable
    public abstract View getNegativeButton();

    @NonNull
    public abstract List<String> getPermissionsToRequest();

    @NonNull
    public abstract View getPositiveButton();

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        C13086AB.m52315v(-1426063238, this, bundle);
    }
}
