package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView;

/* loaded from: classes9.dex */
public abstract class FragmentNoteOverviewBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final LayoutDocSearchBinding layoutSearch;

    @NonNull
    public final TintLinearLayout llyContent;

    @NonNull
    public final TintLinearLayout llyQuickCreate;

    @NonNull
    public final CustomScrollBarRecycleView rvContent;

    @NonNull
    public final CommonEmptyView searchEmptyView;

    public FragmentNoteOverviewBinding(Object obj, View view, int i, TintImageView tintImageView, LayoutDocSearchBinding layoutDocSearchBinding, TintLinearLayout tintLinearLayout, TintLinearLayout tintLinearLayout2, CustomScrollBarRecycleView customScrollBarRecycleView, CommonEmptyView commonEmptyView) {
        super(obj, view, i);
        this.ivClose = tintImageView;
        this.layoutSearch = layoutDocSearchBinding;
        this.llyContent = tintLinearLayout;
        this.llyQuickCreate = tintLinearLayout2;
        this.rvContent = customScrollBarRecycleView;
        this.searchEmptyView = commonEmptyView;
    }

    public static FragmentNoteOverviewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentNoteOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentNoteOverviewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentNoteOverviewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_note_overview);
    }

    @NonNull
    @Deprecated
    public static FragmentNoteOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentNoteOverviewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_overview, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentNoteOverviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentNoteOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentNoteOverviewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_overview, null, false, obj);
    }
}
