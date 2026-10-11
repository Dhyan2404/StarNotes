package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupPenListBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView batch;

    @NonNull
    public final ConstraintLayout batchActionView;

    @NonNull
    public final TintImageView createPenBox;

    @NonNull
    public final TintTextView deletePenBox;

    @NonNull
    public final TintTextView penBoxFinish;

    @NonNull
    public final RecyclerView penBoxList;

    @NonNull
    public final TintTextView penBoxSelectAll;

    @NonNull
    public final TintTextView renamePenBox;

    public PopupPenListBinding(Object obj, View view, int i, TintImageView tintImageView, ConstraintLayout constraintLayout, TintImageView tintImageView2, TintTextView tintTextView, TintTextView tintTextView2, RecyclerView recyclerView, TintTextView tintTextView3, TintTextView tintTextView4) {
        super(obj, view, i);
        this.batch = tintImageView;
        this.batchActionView = constraintLayout;
        this.createPenBox = tintImageView2;
        this.deletePenBox = tintTextView;
        this.penBoxFinish = tintTextView2;
        this.penBoxList = recyclerView;
        this.penBoxSelectAll = tintTextView3;
        this.renamePenBox = tintTextView4;
    }

    public static PopupPenListBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupPenListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupPenListBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupPenListBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_pen_list);
    }

    @NonNull
    @Deprecated
    public static PopupPenListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupPenListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_pen_list, viewGroup, z, obj);
    }

    @NonNull
    public static PopupPenListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupPenListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupPenListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_pen_list, null, false, obj);
    }
}
