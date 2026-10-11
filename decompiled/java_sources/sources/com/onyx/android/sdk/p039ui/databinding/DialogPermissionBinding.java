package com.onyx.android.sdk.p039ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public abstract class DialogPermissionBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final TintImageView ivWarning;

    @NonNull
    public final LinearLayout titleContainer;

    @NonNull
    public final TintTextView tvConfirm;

    @NonNull
    public final TintTextView tvMessage;

    @NonNull
    public final MediumTextView tvTitle;

    public DialogPermissionBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, LinearLayout linearLayout, TintTextView tintTextView, TintTextView tintTextView2, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.ivClose = tintImageView;
        this.ivWarning = tintImageView2;
        this.titleContainer = linearLayout;
        this.tvConfirm = tintTextView;
        this.tvMessage = tintTextView2;
        this.tvTitle = mediumTextView;
    }

    public static DialogPermissionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogPermissionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogPermissionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogPermissionBinding) ViewDataBinding.bind(obj, view, C8037R.layout.dialog_permission);
    }

    @NonNull
    @Deprecated
    public static DialogPermissionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, C8037R.layout.dialog_permission, viewGroup, z, obj);
    }

    @NonNull
    public static DialogPermissionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogPermissionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogPermissionBinding) ViewDataBinding.inflateInternal(layoutInflater, C8037R.layout.dialog_permission, null, false, obj);
    }
}
