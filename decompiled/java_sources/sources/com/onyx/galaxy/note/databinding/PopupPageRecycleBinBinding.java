package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;

/* loaded from: classes9.dex */
public abstract class PopupPageRecycleBinBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView close;

    @NonNull
    public final CommonEmptyView emptyView;

    @NonNull
    public final TintTextView finish;

    @NonNull
    public final TintImageView ivDustBinOpDelete;

    @NonNull
    public final TintImageView ivDustBinOpRestore;

    @NonNull
    public final TintLinearLayout llDustBinOpDelete;

    @NonNull
    public final TintLinearLayout llDustBinOpRestore;

    @NonNull
    public final LinearLayout pageLayout;

    @NonNull
    public final TintCheckBox selectAll;

    @NonNull
    public final TintTextView selectedCount;

    @NonNull
    public final TintLinearLayout selectionActionLayout;

    @NonNull
    public final SwipeRecycleViewContainer swipeContainer;

    @NonNull
    public final TintTextView tvDustBinOpDelete;

    @NonNull
    public final TintTextView tvDustBinOpRestore;

    public PopupPageRecycleBinBinding(Object obj, View view, int i, TintTextView tintTextView, CommonEmptyView commonEmptyView, TintTextView tintTextView2, TintImageView tintImageView, TintImageView tintImageView2, TintLinearLayout tintLinearLayout, TintLinearLayout tintLinearLayout2, LinearLayout linearLayout, TintCheckBox tintCheckBox, TintTextView tintTextView3, TintLinearLayout tintLinearLayout3, SwipeRecycleViewContainer swipeRecycleViewContainer, TintTextView tintTextView4, TintTextView tintTextView5) {
        super(obj, view, i);
        this.close = tintTextView;
        this.emptyView = commonEmptyView;
        this.finish = tintTextView2;
        this.ivDustBinOpDelete = tintImageView;
        this.ivDustBinOpRestore = tintImageView2;
        this.llDustBinOpDelete = tintLinearLayout;
        this.llDustBinOpRestore = tintLinearLayout2;
        this.pageLayout = linearLayout;
        this.selectAll = tintCheckBox;
        this.selectedCount = tintTextView3;
        this.selectionActionLayout = tintLinearLayout3;
        this.swipeContainer = swipeRecycleViewContainer;
        this.tvDustBinOpDelete = tintTextView4;
        this.tvDustBinOpRestore = tintTextView5;
    }

    public static PopupPageRecycleBinBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupPageRecycleBinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupPageRecycleBinBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupPageRecycleBinBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_page_recycle_bin);
    }

    @NonNull
    @Deprecated
    public static PopupPageRecycleBinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupPageRecycleBinBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_page_recycle_bin, viewGroup, z, obj);
    }

    @NonNull
    public static PopupPageRecycleBinBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupPageRecycleBinBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupPageRecycleBinBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_page_recycle_bin, null, false, obj);
    }
}
