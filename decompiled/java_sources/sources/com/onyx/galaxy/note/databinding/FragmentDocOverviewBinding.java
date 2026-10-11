package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;
import com.onyx.galaxy.note.editor.view.HideTextView;
import com.onyx.galaxy.note.editor.view.SelectionActionLayout;

/* loaded from: classes9.dex */
public abstract class FragmentDocOverviewBinding extends ViewDataBinding {

    @NonNull
    public final HideTextView addPageAfterCurrentPage;

    @NonNull
    public final HideTextView addToCustomPaper;

    @NonNull
    public final HideTextView addToToc;

    @NonNull
    public final HideTextView clone;

    @NonNull
    public final HideTextView copy;

    @NonNull
    public final HideTextView delete;

    @NonNull
    public final HideTextView export;

    @NonNull
    public final LayoutDocSearchBinding layoutSearch;

    @NonNull
    public final HideTextView paste;

    @NonNull
    public final HideTextView rotate;

    @NonNull
    public final CommonEmptyView searchEmptyView;

    @NonNull
    public final SelectionActionLayout selectionActionLayout;

    @NonNull
    public final SwipeRecycleViewContainer swipeContainer;

    public FragmentDocOverviewBinding(Object obj, View view, int i, HideTextView hideTextView, HideTextView hideTextView2, HideTextView hideTextView3, HideTextView hideTextView4, HideTextView hideTextView5, HideTextView hideTextView6, HideTextView hideTextView7, LayoutDocSearchBinding layoutDocSearchBinding, HideTextView hideTextView8, HideTextView hideTextView9, CommonEmptyView commonEmptyView, SelectionActionLayout selectionActionLayout, SwipeRecycleViewContainer swipeRecycleViewContainer) {
        super(obj, view, i);
        this.addPageAfterCurrentPage = hideTextView;
        this.addToCustomPaper = hideTextView2;
        this.addToToc = hideTextView3;
        this.clone = hideTextView4;
        this.copy = hideTextView5;
        this.delete = hideTextView6;
        this.export = hideTextView7;
        this.layoutSearch = layoutDocSearchBinding;
        this.paste = hideTextView8;
        this.rotate = hideTextView9;
        this.searchEmptyView = commonEmptyView;
        this.selectionActionLayout = selectionActionLayout;
        this.swipeContainer = swipeRecycleViewContainer;
    }

    public static FragmentDocOverviewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentDocOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentDocOverviewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentDocOverviewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_doc_overview);
    }

    @NonNull
    @Deprecated
    public static FragmentDocOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentDocOverviewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_doc_overview, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentDocOverviewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentDocOverviewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentDocOverviewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_doc_overview, null, false, obj);
    }
}
