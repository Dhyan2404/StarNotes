package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView;
import com.onyx.galaxy.note.editor.view.SelectionActionLayout;

/* loaded from: classes9.dex */
public abstract class FragmentDocBookmarkBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayoutCompat contentContainer;

    @NonNull
    public final TintTextView delete;

    @NonNull
    public final TintTextView edit;

    @NonNull
    public final CommonEmptyView emptyView;

    @NonNull
    public final LayoutDocSearchBinding layoutSearch;

    @NonNull
    public final CustomScrollBarRecycleView recyclerViewContainer;

    @NonNull
    public final CommonEmptyView searchEmptyView;

    @NonNull
    public final SelectionActionLayout selectionActionLayout;

    public FragmentDocBookmarkBinding(Object obj, View view, int i, LinearLayoutCompat linearLayoutCompat, TintTextView tintTextView, TintTextView tintTextView2, CommonEmptyView commonEmptyView, LayoutDocSearchBinding layoutDocSearchBinding, CustomScrollBarRecycleView customScrollBarRecycleView, CommonEmptyView commonEmptyView2, SelectionActionLayout selectionActionLayout) {
        super(obj, view, i);
        this.contentContainer = linearLayoutCompat;
        this.delete = tintTextView;
        this.edit = tintTextView2;
        this.emptyView = commonEmptyView;
        this.layoutSearch = layoutDocSearchBinding;
        this.recyclerViewContainer = customScrollBarRecycleView;
        this.searchEmptyView = commonEmptyView2;
        this.selectionActionLayout = selectionActionLayout;
    }

    public static FragmentDocBookmarkBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentDocBookmarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDocBookmarkBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentDocBookmarkBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_doc_bookmark);
    }

    @NonNull
    @Deprecated
    public static FragmentDocBookmarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentDocBookmarkBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_doc_bookmark, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentDocBookmarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentDocBookmarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentDocBookmarkBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_doc_bookmark, null, false, obj);
    }
}
