package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView;
import com.onyx.galaxy.note.editor.view.SelectionActionLayout;
import com.scwang.smart.refresh.layout.SmartRefreshLayout;

/* loaded from: classes9.dex */
public abstract class FragmentDocTocBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addChildToc;

    @NonNull
    public final TintTextView addToc;

    @NonNull
    public final FrameLayout buttonLayout;

    @NonNull
    public final TintTextView deleteChildToc;

    @NonNull
    public final TintTextView editChildToc;

    @NonNull
    public final CommonEmptyView emptyView;

    @NonNull
    public final LayoutDocSearchBinding layoutSearch;

    @NonNull
    public final SmartRefreshLayout refreshLayout;

    @NonNull
    public final CustomScrollBarRecycleView rvTocContainer;

    @NonNull
    public final CommonEmptyView searchView;

    @NonNull
    public final SelectionActionLayout selectionActionLayout;

    public FragmentDocTocBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, FrameLayout frameLayout, TintTextView tintTextView3, TintTextView tintTextView4, CommonEmptyView commonEmptyView, LayoutDocSearchBinding layoutDocSearchBinding, SmartRefreshLayout smartRefreshLayout, CustomScrollBarRecycleView customScrollBarRecycleView, CommonEmptyView commonEmptyView2, SelectionActionLayout selectionActionLayout) {
        super(obj, view, i);
        this.addChildToc = tintTextView;
        this.addToc = tintTextView2;
        this.buttonLayout = frameLayout;
        this.deleteChildToc = tintTextView3;
        this.editChildToc = tintTextView4;
        this.emptyView = commonEmptyView;
        this.layoutSearch = layoutDocSearchBinding;
        this.refreshLayout = smartRefreshLayout;
        this.rvTocContainer = customScrollBarRecycleView;
        this.searchView = commonEmptyView2;
        this.selectionActionLayout = selectionActionLayout;
    }

    public static FragmentDocTocBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentDocTocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDocTocBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentDocTocBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_doc_toc);
    }

    @NonNull
    @Deprecated
    public static FragmentDocTocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentDocTocBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_doc_toc, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentDocTocBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentDocTocBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentDocTocBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_doc_toc, null, false, obj);
    }
}
