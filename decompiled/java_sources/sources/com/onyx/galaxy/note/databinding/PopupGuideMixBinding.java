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
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.NotificationRichTextView;

/* loaded from: classes9.dex */
public abstract class PopupGuideMixBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView closeButton;

    @NonNull
    public final TextView confirmButton;

    @NonNull
    public final NotificationRichTextView contentText;

    @NonNull
    public final TintLinearLayout dialogRoot;

    @NonNull
    public final ImageView image;

    @NonNull
    public final TintTextView titleText;

    public PopupGuideMixBinding(Object obj, View view, int i, TintImageView tintImageView, TextView textView, NotificationRichTextView notificationRichTextView, TintLinearLayout tintLinearLayout, ImageView imageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.closeButton = tintImageView;
        this.confirmButton = textView;
        this.contentText = notificationRichTextView;
        this.dialogRoot = tintLinearLayout;
        this.image = imageView;
        this.titleText = tintTextView;
    }

    public static PopupGuideMixBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupGuideMixBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupGuideMixBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupGuideMixBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_guide_mix);
    }

    @NonNull
    @Deprecated
    public static PopupGuideMixBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupGuideMixBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_guide_mix, viewGroup, z, obj);
    }

    @NonNull
    public static PopupGuideMixBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupGuideMixBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupGuideMixBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_guide_mix, null, false, obj);
    }
}
