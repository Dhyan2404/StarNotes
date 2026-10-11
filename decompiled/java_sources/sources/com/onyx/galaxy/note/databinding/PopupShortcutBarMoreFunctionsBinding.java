package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupShortcutBarMoreFunctionsBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout clsCustomShortcut;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final TintImageView ivIcon;

    @NonNull
    public final TintRecycleView list;

    @NonNull
    public final TintTextView tvTitle;

    public PopupShortcutBarMoreFunctionsBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, TintImageView tintImageView, TintImageView tintImageView2, TintRecycleView tintRecycleView, TintTextView tintTextView) {
        super(obj, view, i);
        this.clsCustomShortcut = tintConstraintLayout;
        this.ivClose = tintImageView;
        this.ivIcon = tintImageView2;
        this.list = tintRecycleView;
        this.tvTitle = tintTextView;
    }

    public static PopupShortcutBarMoreFunctionsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupShortcutBarMoreFunctionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupShortcutBarMoreFunctionsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupShortcutBarMoreFunctionsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_shortcut_bar_more_functions);
    }

    @NonNull
    @Deprecated
    public static PopupShortcutBarMoreFunctionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupShortcutBarMoreFunctionsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shortcut_bar_more_functions, viewGroup, z, obj);
    }

    @NonNull
    public static PopupShortcutBarMoreFunctionsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupShortcutBarMoreFunctionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupShortcutBarMoreFunctionsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shortcut_bar_more_functions, null, false, obj);
    }
}
