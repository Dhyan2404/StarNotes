package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupShapeToolbarCustomBinding extends ViewDataBinding {

    @NonNull
    public final TintRecycleView disabledList;

    @NonNull
    public final TintRecycleView enabledList;

    @NonNull
    public final TintLinearLayout llLayout;

    @NonNull
    public final MediumTextView tvApply;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvResetConfig;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupShapeToolbarCustomBinding(Object obj, View view, int i, TintRecycleView tintRecycleView, TintRecycleView tintRecycleView2, TintLinearLayout tintLinearLayout, MediumTextView mediumTextView, TintTextView tintTextView, TintTextView tintTextView2, MediumTextView mediumTextView2) {
        super(obj, view, i);
        this.disabledList = tintRecycleView;
        this.enabledList = tintRecycleView2;
        this.llLayout = tintLinearLayout;
        this.tvApply = mediumTextView;
        this.tvCancel = tintTextView;
        this.tvResetConfig = tintTextView2;
        this.tvTitle = mediumTextView2;
    }

    public static PopupShapeToolbarCustomBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupShapeToolbarCustomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupShapeToolbarCustomBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupShapeToolbarCustomBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_shape_toolbar_custom);
    }

    @NonNull
    @Deprecated
    public static PopupShapeToolbarCustomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupShapeToolbarCustomBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shape_toolbar_custom, viewGroup, z, obj);
    }

    @NonNull
    public static PopupShapeToolbarCustomBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupShapeToolbarCustomBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupShapeToolbarCustomBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shape_toolbar_custom, null, false, obj);
    }
}
