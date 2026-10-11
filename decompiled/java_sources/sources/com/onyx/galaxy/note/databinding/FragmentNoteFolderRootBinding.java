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
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class FragmentNoteFolderRootBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout flRoot;

    @NonNull
    public final CommonEmptyView includeEmptyView;

    @Bindable
    protected NoteListViewModel mViewModel;

    /* renamed from: rv */
    @NonNull
    public final RecyclerView f56746rv;

    @NonNull
    public final ShadowLayout slGoTop;

    @NonNull
    public final View vScrollDown;

    @NonNull
    public final View vScrollUp;

    public FragmentNoteFolderRootBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, CommonEmptyView commonEmptyView, RecyclerView recyclerView, ShadowLayout shadowLayout, View view2, View view3) {
        super(obj, view, i);
        this.flRoot = tintFrameLayout;
        this.includeEmptyView = commonEmptyView;
        this.f56746rv = recyclerView;
        this.slGoTop = shadowLayout;
        this.vScrollDown = view2;
        this.vScrollUp = view3;
    }

    public static FragmentNoteFolderRootBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentNoteFolderRootBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteListViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable NoteListViewModel noteListViewModel);

    @Deprecated
    public static FragmentNoteFolderRootBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentNoteFolderRootBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_note_folder_root);
    }

    @NonNull
    @Deprecated
    public static FragmentNoteFolderRootBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentNoteFolderRootBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_folder_root, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentNoteFolderRootBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentNoteFolderRootBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentNoteFolderRootBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_folder_root, null, false, obj);
    }
}
