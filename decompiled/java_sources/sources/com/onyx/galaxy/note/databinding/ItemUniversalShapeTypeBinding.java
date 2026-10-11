package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.UniversalShapeType;

/* loaded from: classes9.dex */
public abstract class ItemUniversalShapeTypeBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout content;

    @Bindable
    protected UniversalShapeType mModel;

    @NonNull
    public final TintImageView title;

    public ItemUniversalShapeTypeBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, TintImageView tintImageView) {
        super(obj, view, i);
        this.content = tintFrameLayout;
        this.title = tintImageView;
    }

    public static ItemUniversalShapeTypeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemUniversalShapeTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public UniversalShapeType getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable UniversalShapeType universalShapeType);

    @Deprecated
    public static ItemUniversalShapeTypeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemUniversalShapeTypeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_universal_shape_type);
    }

    @NonNull
    @Deprecated
    public static ItemUniversalShapeTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemUniversalShapeTypeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_universal_shape_type, viewGroup, z, obj);
    }

    @NonNull
    public static ItemUniversalShapeTypeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemUniversalShapeTypeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemUniversalShapeTypeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_universal_shape_type, null, false, obj);
    }
}
