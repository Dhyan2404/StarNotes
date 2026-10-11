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
public abstract class PopupGuideTextBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView closeButton;

    @NonNull
    public final TextView confirmButton;

    @NonNull
    public final NotificationRichTextView contentText;

    @NonNull
    public final TintLinearLayout dialogRoot;

    @NonNull
    public final TintTextView titleText;

    public PopupGuideTextBinding(Object obj, View view, int i, TintImageView tintImageView, TextView textView, NotificationRichTextView notificationRichTextView, TintLinearLayout tintLinearLayout, TintTextView tintTextView) {
        super(obj, view, i);
        this.closeButton = tintImageView;
        this.confirmButton = textView;
        this.contentText = notificationRichTextView;
        this.dialogRoot = tintLinearLayout;
        this.titleText = tintTextView;
    }

    public static PopupGuideTextBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupGuideTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupGuideTextBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupGuideTextBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_guide_text);
    }

    @NonNull
    @Deprecated
    public static PopupGuideTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupGuideTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_guide_text, viewGroup, z, obj);
    }

    @NonNull
    public static PopupGuideTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupGuideTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupGuideTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_guide_text, null, false, obj);
    }
}
