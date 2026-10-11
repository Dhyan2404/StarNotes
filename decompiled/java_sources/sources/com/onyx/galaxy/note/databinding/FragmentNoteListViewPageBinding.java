package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentNoteListViewPageBinding extends ViewDataBinding {

    @Bindable
    protected NoteListViewModel mViewModel;

    @NonNull
    public final TintTabLayoutView tabLayout;

    @NonNull
    public final ViewPager2 viewPager;

    public FragmentNoteListViewPageBinding(Object obj, View view, int i, TintTabLayoutView tintTabLayoutView, ViewPager2 viewPager2) {
        super(obj, view, i);
        this.tabLayout = tintTabLayoutView;
        this.viewPager = viewPager2;
    }

    public static FragmentNoteListViewPageBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentNoteListViewPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteListViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable NoteListViewModel noteListViewModel);

    @Deprecated
    public static FragmentNoteListViewPageBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentNoteListViewPageBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_note_list_view_page);
    }

    @NonNull
    @Deprecated
    public static FragmentNoteListViewPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentNoteListViewPageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_list_view_page, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentNoteListViewPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentNoteListViewPageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentNoteListViewPageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_list_view_page, null, false, obj);
    }
}
