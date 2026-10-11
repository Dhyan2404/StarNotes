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
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.CommonEmptyView;

/* loaded from: classes9.dex */
public abstract class FragmentDraftDocOverviewBinding extends ViewDataBinding {

    @NonNull
    public final TintView border;

    @NonNull
    public final TintFrameLayout card;

    @NonNull
    public final TintConstraintLayout clSearchContent;

    @NonNull
    public final ImageView image;

    @NonNull
    public final LayoutDocSearchBinding layoutSearch;

    @NonNull
    public final LinearLayout llyNormalContent;

    @NonNull
    public final AutoFitRecycleView recyclerView;

    @NonNull
    public final CommonEmptyView searchEmptyView;

    @NonNull
    public final TintTextView tvDescription;

    @NonNull
    public final TintView viewport;

    public FragmentDraftDocOverviewBinding(Object obj, View view, int i, TintView tintView, TintFrameLayout tintFrameLayout, TintConstraintLayout tintConstraintLayout, ImageView imageView, LayoutDocSearchBinding layoutDocSearchBinding, LinearLayout linearLayout, AutoFitRecycleView autoFitRecycleView, CommonEmptyView commonEmptyView, TintTextView tintTextView, TintView tintView2) {
        super(obj, view, i);
        this.border = tintView;
        this.card = tintFrameLayout;
        this.clSearchContent = tintConstraintLayout;
        this.image = imageView;
        this.layoutSearch = layoutDocSearchBinding;
        this.llyNormalContent = linearLayout;
        this.recyclerView = autoFitRecycleView;
        this.searchEmptyView = commonEmptyView;
        this.tvDescription = tintTextView;
        this.viewport = tintView2;
    }

    public static FragmentDraftDocOverviewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentDraftDocOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDraftDocOverviewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentDraftDocOverviewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_draft_doc_overview);
    }

    @NonNull
    @Deprecated
    public static FragmentDraftDocOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentDraftDocOverviewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_draft_doc_overview, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentDraftDocOverviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentDraftDocOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentDraftDocOverviewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_draft_doc_overview, null, false, obj);
    }
}
