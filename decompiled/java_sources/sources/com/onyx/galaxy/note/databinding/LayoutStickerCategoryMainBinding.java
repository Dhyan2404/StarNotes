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
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;

/* loaded from: classes9.dex */
public abstract class LayoutStickerCategoryMainBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout buttonGroup;

    @NonNull
    public final TintImageView categoryAddButton;

    @NonNull
    public final TintTextView deleteButton;

    @NonNull
    public final TintTextView finishButton;

    @NonNull
    public final LinearLayout headerView;

    @NonNull
    public final TintTextView importButton;

    @NonNull
    public final TintTextView insertButton;

    @NonNull
    public final TintTextView moveButton;

    @NonNull
    public final TintTextView selectButton;

    @NonNull
    public final TintTextView selectCheckBox;

    @NonNull
    public final LinearLayout selectionLayout;

    @NonNull
    public final CommonEmptyView stickerEmptyTipView;

    @NonNull
    public final RecyclerView stickerListView;

    @NonNull
    public final RecyclerView subCategoryListView;

    public LayoutStickerCategoryMainBinding(Object obj, View view, int i, LinearLayout linearLayout, TintImageView tintImageView, TintTextView tintTextView, TintTextView tintTextView2, LinearLayout linearLayout2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, LinearLayout linearLayout3, CommonEmptyView commonEmptyView, RecyclerView recyclerView, RecyclerView recyclerView2) {
        super(obj, view, i);
        this.buttonGroup = linearLayout;
        this.categoryAddButton = tintImageView;
        this.deleteButton = tintTextView;
        this.finishButton = tintTextView2;
        this.headerView = linearLayout2;
        this.importButton = tintTextView3;
        this.insertButton = tintTextView4;
        this.moveButton = tintTextView5;
        this.selectButton = tintTextView6;
        this.selectCheckBox = tintTextView7;
        this.selectionLayout = linearLayout3;
        this.stickerEmptyTipView = commonEmptyView;
        this.stickerListView = recyclerView;
        this.subCategoryListView = recyclerView2;
    }

    public static LayoutStickerCategoryMainBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutStickerCategoryMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutStickerCategoryMainBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutStickerCategoryMainBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_sticker_category_main);
    }

    @NonNull
    @Deprecated
    public static LayoutStickerCategoryMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutStickerCategoryMainBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_sticker_category_main, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutStickerCategoryMainBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutStickerCategoryMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutStickerCategoryMainBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_sticker_category_main, null, false, obj);
    }
}
