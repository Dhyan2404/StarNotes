package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.NotificationRichTextView;

/* loaded from: classes9.dex */
public abstract class PopupUpgradeMixBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView cancelButton;

    @NonNull
    public final TextView confirmButton;

    @NonNull
    public final NotificationRichTextView contentText;

    @NonNull
    public final TintLinearLayout dialogRoot;

    @NonNull
    public final TintImageView image;

    @NonNull
    public final TintTextView titleText;

    public PopupUpgradeMixBinding(Object obj, View view, int i, TintTextView tintTextView, TextView textView, NotificationRichTextView notificationRichTextView, TintLinearLayout tintLinearLayout, TintImageView tintImageView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.cancelButton = tintTextView;
        this.confirmButton = textView;
        this.contentText = notificationRichTextView;
        this.dialogRoot = tintLinearLayout;
        this.image = tintImageView;
        this.titleText = tintTextView2;
    }

    public static PopupUpgradeMixBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupUpgradeMixBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupUpgradeMixBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupUpgradeMixBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_upgrade_mix);
    }

    @NonNull
    @Deprecated
    public static PopupUpgradeMixBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupUpgradeMixBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_upgrade_mix, viewGroup, z, obj);
    }

    @NonNull
    public static PopupUpgradeMixBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupUpgradeMixBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupUpgradeMixBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_upgrade_mix, null, false, obj);
    }
}
