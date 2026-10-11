package com.onyx.android.sdk.cloudstorage.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.cloudstorage.C7153R;

/* loaded from: classes7.dex */
public abstract class DialogMicrosoftAuthSelectionBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout liveSignin;

    @NonNull
    public final LinearLayout officeSignin;

    public DialogMicrosoftAuthSelectionBinding(Object obj, View view, int i, LinearLayout linearLayout, LinearLayout linearLayout2) {
        super(obj, view, i);
        this.liveSignin = linearLayout;
        this.officeSignin = linearLayout2;
    }

    public static DialogMicrosoftAuthSelectionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogMicrosoftAuthSelectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogMicrosoftAuthSelectionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogMicrosoftAuthSelectionBinding) ViewDataBinding.bind(obj, view, C7153R.layout.dialog_microsoft_auth_selection);
    }

    @NonNull
    @Deprecated
    public static DialogMicrosoftAuthSelectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogMicrosoftAuthSelectionBinding) ViewDataBinding.inflateInternal(layoutInflater, C7153R.layout.dialog_microsoft_auth_selection, viewGroup, z, obj);
    }

    @NonNull
    public static DialogMicrosoftAuthSelectionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogMicrosoftAuthSelectionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogMicrosoftAuthSelectionBinding) ViewDataBinding.inflateInternal(layoutInflater, C7153R.layout.dialog_microsoft_auth_selection, null, false, obj);
    }
}
