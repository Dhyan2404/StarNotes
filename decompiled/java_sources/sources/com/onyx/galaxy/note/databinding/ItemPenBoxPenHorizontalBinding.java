package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView;

/* loaded from: classes9.dex */
public abstract class ItemPenBoxPenHorizontalBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout clContent;

    @NonNull
    public final PhysicalShapeIconView iconView;

    @NonNull
    public final TintImageView ivSelectedArrow;

    @Bindable
    protected PenArgs mModel;

    @NonNull
    public final TintView vSelectedHorizontal;

    @NonNull
    public final TintTextView value;

    public ItemPenBoxPenHorizontalBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, PhysicalShapeIconView physicalShapeIconView, TintImageView tintImageView, TintView tintView, TintTextView tintTextView) {
        super(obj, view, i);
        this.clContent = tintConstraintLayout;
        this.iconView = physicalShapeIconView;
        this.ivSelectedArrow = tintImageView;
        this.vSelectedHorizontal = tintView;
        this.value = tintTextView;
    }

    public static ItemPenBoxPenHorizontalBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemPenBoxPenHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public PenArgs getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable PenArgs penArgs);

    @Deprecated
    public static ItemPenBoxPenHorizontalBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemPenBoxPenHorizontalBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_pen_box_pen_horizontal);
    }

    @NonNull
    @Deprecated
    public static ItemPenBoxPenHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemPenBoxPenHorizontalBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_pen_box_pen_horizontal, viewGroup, z, obj);
    }

    @NonNull
    public static ItemPenBoxPenHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemPenBoxPenHorizontalBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemPenBoxPenHorizontalBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_pen_box_pen_horizontal, null, false, obj);
    }
}
