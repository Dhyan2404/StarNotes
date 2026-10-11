package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemShortcutBarMoreFunctionNormalBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivIcon;

    @NonNull
    public final TintTextView tvTitle;

    public ItemShortcutBarMoreFunctionNormalBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.ivIcon = tintImageView;
        this.tvTitle = tintTextView;
    }

    public static ItemShortcutBarMoreFunctionNormalBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemShortcutBarMoreFunctionNormalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemShortcutBarMoreFunctionNormalBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemShortcutBarMoreFunctionNormalBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_shortcut_bar_more_function_normal);
    }

    @NonNull
    @Deprecated
    public static ItemShortcutBarMoreFunctionNormalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemShortcutBarMoreFunctionNormalBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_shortcut_bar_more_function_normal, viewGroup, z, obj);
    }

    @NonNull
    public static ItemShortcutBarMoreFunctionNormalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemShortcutBarMoreFunctionNormalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemShortcutBarMoreFunctionNormalBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_shortcut_bar_more_function_normal, null, false, obj);
    }
}
