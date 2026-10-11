package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.NotificationRichTextView;

/* loaded from: classes9.dex */
public abstract class PopupUpgradeTextBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView cancelButton;

    @NonNull
    public final TextView confirmButton;

    @NonNull
    public final NotificationRichTextView contentText;

    @NonNull
    public final TintLinearLayout dialogRoot;

    @NonNull
    public final View dialogTop;

    @NonNull
    public final TintTextView titleText;

    public PopupUpgradeTextBinding(Object obj, View view, int i, TintTextView tintTextView, TextView textView, NotificationRichTextView notificationRichTextView, TintLinearLayout tintLinearLayout, View view2, TintTextView tintTextView2) {
        super(obj, view, i);
        this.cancelButton = tintTextView;
        this.confirmButton = textView;
        this.contentText = notificationRichTextView;
        this.dialogRoot = tintLinearLayout;
        this.dialogTop = view2;
        this.titleText = tintTextView2;
    }

    public static PopupUpgradeTextBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupUpgradeTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupUpgradeTextBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupUpgradeTextBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_upgrade_text);
    }

    @NonNull
    @Deprecated
    public static PopupUpgradeTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupUpgradeTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_upgrade_text, viewGroup, z, obj);
    }

    @NonNull
    public static PopupUpgradeTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupUpgradeTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupUpgradeTextBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_upgrade_text, null, false, obj);
    }
}
