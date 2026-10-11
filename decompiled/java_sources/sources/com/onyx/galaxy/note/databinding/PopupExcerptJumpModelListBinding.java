package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupExcerptJumpModelListBinding extends ViewDataBinding {

    @NonNull
    public final TintRecycleView recyclerView;

    @NonNull
    public final TintTextView tvJumpQuote;

    @NonNull
    public final TintView viewDivider;

    public PopupExcerptJumpModelListBinding(Object obj, View view, int i, TintRecycleView tintRecycleView, TintTextView tintTextView, TintView tintView) {
        super(obj, view, i);
        this.recyclerView = tintRecycleView;
        this.tvJumpQuote = tintTextView;
        this.viewDivider = tintView;
    }

    public static PopupExcerptJumpModelListBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupExcerptJumpModelListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupExcerptJumpModelListBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupExcerptJumpModelListBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_excerpt_jump_model_list);
    }

    @NonNull
    @Deprecated
    public static PopupExcerptJumpModelListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupExcerptJumpModelListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_excerpt_jump_model_list, viewGroup, z, obj);
    }

    @NonNull
    public static PopupExcerptJumpModelListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupExcerptJumpModelListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupExcerptJumpModelListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_excerpt_jump_model_list, null, false, obj);
    }
}
