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
public abstract class ItemHwrResourceBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView downloadIcon;

    @NonNull
    public final TintTextView langText;

    @NonNull
    public final TintImageView loadingIcon;

    @NonNull
    public final TintImageView selectedIcon;

    public ItemHwrResourceBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintImageView tintImageView2, TintImageView tintImageView3) {
        super(obj, view, i);
        this.downloadIcon = tintImageView;
        this.langText = tintTextView;
        this.loadingIcon = tintImageView2;
        this.selectedIcon = tintImageView3;
    }

    public static ItemHwrResourceBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemHwrResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemHwrResourceBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemHwrResourceBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_hwr_resource);
    }

    @NonNull
    @Deprecated
    public static ItemHwrResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemHwrResourceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_hwr_resource, viewGroup, z, obj);
    }

    @NonNull
    public static ItemHwrResourceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemHwrResourceBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemHwrResourceBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_hwr_resource, null, false, obj);
    }
}
