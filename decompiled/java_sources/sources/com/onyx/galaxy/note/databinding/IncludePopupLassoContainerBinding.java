package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class IncludePopupLassoContainerBinding extends ViewDataBinding {

    @NonNull
    public final TintView elementDivider;

    @NonNull
    public final TintImageView freeLassoType;

    @NonNull
    public final RecyclerView lassoElementList;

    @NonNull
    public final LinearLayout llLassoTypeContainer;

    @NonNull
    public final TintImageView rectangleLassoType;

    @NonNull
    public final TintTextView tvSelectElementTitle;

    public IncludePopupLassoContainerBinding(Object obj, View view, int i, TintView tintView, TintImageView tintImageView, RecyclerView recyclerView, LinearLayout linearLayout, TintImageView tintImageView2, TintTextView tintTextView) {
        super(obj, view, i);
        this.elementDivider = tintView;
        this.freeLassoType = tintImageView;
        this.lassoElementList = recyclerView;
        this.llLassoTypeContainer = linearLayout;
        this.rectangleLassoType = tintImageView2;
        this.tvSelectElementTitle = tintTextView;
    }

    public static IncludePopupLassoContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static IncludePopupLassoContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static IncludePopupLassoContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (IncludePopupLassoContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.include_popup_lasso_container);
    }

    @NonNull
    @Deprecated
    public static IncludePopupLassoContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (IncludePopupLassoContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_popup_lasso_container, viewGroup, z, obj);
    }

    @NonNull
    public static IncludePopupLassoContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static IncludePopupLassoContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (IncludePopupLassoContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.include_popup_lasso_container, null, false, obj);
    }
}
