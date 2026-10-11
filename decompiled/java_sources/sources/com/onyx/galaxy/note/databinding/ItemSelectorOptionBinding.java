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
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemSelectorOptionBinding extends ViewDataBinding {

    @NonNull
    public final TintView bottomDivider;

    @NonNull
    public final TintTextView displayText;

    @NonNull
    public final TintImageView selectedIcon;

    public ItemSelectorOptionBinding(Object obj, View view, int i, TintView tintView, TintTextView tintTextView, TintImageView tintImageView) {
        super(obj, view, i);
        this.bottomDivider = tintView;
        this.displayText = tintTextView;
        this.selectedIcon = tintImageView;
    }

    public static ItemSelectorOptionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemSelectorOptionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemSelectorOptionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemSelectorOptionBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_selector_option);
    }

    @NonNull
    @Deprecated
    public static ItemSelectorOptionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemSelectorOptionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_selector_option, viewGroup, z, obj);
    }

    @NonNull
    public static ItemSelectorOptionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemSelectorOptionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemSelectorOptionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_selector_option, null, false, obj);
    }
}
