package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupUpgradeImageBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView cancelButton;

    @NonNull
    public final TextView confirmButton;

    @NonNull
    public final TintLinearLayout dialogRoot;

    @NonNull
    public final ImageView image;

    @NonNull
    public final TintTextView titleText;

    public PopupUpgradeImageBinding(Object obj, View view, int i, TintTextView tintTextView, TextView textView, TintLinearLayout tintLinearLayout, ImageView imageView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.cancelButton = tintTextView;
        this.confirmButton = textView;
        this.dialogRoot = tintLinearLayout;
        this.image = imageView;
        this.titleText = tintTextView2;
    }

    public static PopupUpgradeImageBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupUpgradeImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupUpgradeImageBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupUpgradeImageBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_upgrade_image);
    }

    @NonNull
    @Deprecated
    public static PopupUpgradeImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupUpgradeImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_upgrade_image, viewGroup, z, obj);
    }

    @NonNull
    public static PopupUpgradeImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupUpgradeImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupUpgradeImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_upgrade_image, null, false, obj);
    }
}
