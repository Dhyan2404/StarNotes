package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemUniversalShapeColorBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final ImageView image;

    public ItemUniversalShapeColorBinding(Object obj, View view, int i, LinearLayout linearLayout, ImageView imageView) {
        super(obj, view, i);
        this.content = linearLayout;
        this.image = imageView;
    }

    public static ItemUniversalShapeColorBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemUniversalShapeColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemUniversalShapeColorBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemUniversalShapeColorBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_universal_shape_color);
    }

    @NonNull
    @Deprecated
    public static ItemUniversalShapeColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemUniversalShapeColorBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_universal_shape_color, viewGroup, z, obj);
    }

    @NonNull
    public static ItemUniversalShapeColorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemUniversalShapeColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemUniversalShapeColorBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_universal_shape_color, null, false, obj);
    }
}
