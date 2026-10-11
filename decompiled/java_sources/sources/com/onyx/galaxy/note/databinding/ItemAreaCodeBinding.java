package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.model.AreaCodeModel;

/* loaded from: classes9.dex */
public abstract class ItemAreaCodeBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btn;

    @Bindable
    protected AreaCodeModel mModel;

    @NonNull
    public final TintView vDivider;

    public ItemAreaCodeBinding(Object obj, View view, int i, TintTextView tintTextView, TintView tintView) {
        super(obj, view, i);
        this.btn = tintTextView;
        this.vDivider = tintView;
    }

    public static ItemAreaCodeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemAreaCodeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AreaCodeModel getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable AreaCodeModel areaCodeModel);

    @Deprecated
    public static ItemAreaCodeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemAreaCodeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_area_code);
    }

    @NonNull
    @Deprecated
    public static ItemAreaCodeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemAreaCodeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_area_code, viewGroup, z, obj);
    }

    @NonNull
    public static ItemAreaCodeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemAreaCodeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemAreaCodeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_area_code, null, false, obj);
    }
}
