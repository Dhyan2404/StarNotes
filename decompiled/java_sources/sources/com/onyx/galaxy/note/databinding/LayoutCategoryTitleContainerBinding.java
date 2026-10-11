package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.p039ui.EllipsizingTextView;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutCategoryTitleContainerBinding extends ViewDataBinding {

    @NonNull
    public final TintCheckBox applyAll;

    @NonNull
    public final TintConstraintLayout clCategoryContainer;

    @NonNull
    public final RecyclerView clColorList;

    @NonNull
    public final TintView colorDivider;

    @NonNull
    public final TintView dividerCategory;

    @NonNull
    public final LinearLayout llArgsContainer;

    @NonNull
    public final LinearLayout llColorArgs;

    @NonNull
    public final LinearLayout llCustomSelectedContainer;

    @NonNull
    public final LinearLayout llSpaceArgs;

    @NonNull
    public final RecyclerView rlCategoryTitle;

    @NonNull
    public final FrameLayout rlChangeOrientationContainer;

    @NonNull
    public final MediumTextView tvCategoryTitle;

    @NonNull
    public final TintTextView tvChangeTemplateSizeOrientation;

    @NonNull
    public final TintTextView tvDelete;

    @NonNull
    public final TintTextView tvDone;

    @NonNull
    public final EllipsizingTextView tvGotoMaterialCenter;

    @NonNull
    public final TintTextView tvLineSpace;

    @NonNull
    public final TintTextView tvRename;

    @NonNull
    public final TintTextView tvSelect;

    public LayoutCategoryTitleContainerBinding(Object obj, View view, int i, TintCheckBox tintCheckBox, TintConstraintLayout tintConstraintLayout, RecyclerView recyclerView, TintView tintView, TintView tintView2, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, RecyclerView recyclerView2, FrameLayout frameLayout, MediumTextView mediumTextView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, EllipsizingTextView ellipsizingTextView, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6) {
        super(obj, view, i);
        this.applyAll = tintCheckBox;
        this.clCategoryContainer = tintConstraintLayout;
        this.clColorList = recyclerView;
        this.colorDivider = tintView;
        this.dividerCategory = tintView2;
        this.llArgsContainer = linearLayout;
        this.llColorArgs = linearLayout2;
        this.llCustomSelectedContainer = linearLayout3;
        this.llSpaceArgs = linearLayout4;
        this.rlCategoryTitle = recyclerView2;
        this.rlChangeOrientationContainer = frameLayout;
        this.tvCategoryTitle = mediumTextView;
        this.tvChangeTemplateSizeOrientation = tintTextView;
        this.tvDelete = tintTextView2;
        this.tvDone = tintTextView3;
        this.tvGotoMaterialCenter = ellipsizingTextView;
        this.tvLineSpace = tintTextView4;
        this.tvRename = tintTextView5;
        this.tvSelect = tintTextView6;
    }

    public static LayoutCategoryTitleContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutCategoryTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutCategoryTitleContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutCategoryTitleContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_category_title_container);
    }

    @NonNull
    @Deprecated
    public static LayoutCategoryTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutCategoryTitleContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_category_title_container, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutCategoryTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutCategoryTitleContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutCategoryTitleContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_category_title_container, null, false, obj);
    }
}
