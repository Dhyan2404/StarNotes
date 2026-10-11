package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.replicator.note.data.pen.PencilBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemPenBoxBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivSelect;

    @Bindable
    protected PencilBox mModel;

    @NonNull
    public final TintTextView name;

    @NonNull
    public final RecyclerView penList;

    @NonNull
    public final TintView vLine;

    public ItemPenBoxBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, RecyclerView recyclerView, TintView tintView) {
        super(obj, view, i);
        this.ivSelect = tintImageView;
        this.name = tintTextView;
        this.penList = recyclerView;
        this.vLine = tintView;
    }

    public static ItemPenBoxBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemPenBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public PencilBox getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable PencilBox pencilBox);

    @Deprecated
    public static ItemPenBoxBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemPenBoxBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_pen_box);
    }

    @NonNull
    @Deprecated
    public static ItemPenBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemPenBoxBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_pen_box, viewGroup, z, obj);
    }

    @NonNull
    public static ItemPenBoxBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemPenBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemPenBoxBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_pen_box, null, false, obj);
    }
}
