package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentContainerView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentNoteListContainerBinding extends ViewDataBinding {

    @NonNull
    public final LayoutBannerNotificationBinding bannerLayout;

    @NonNull
    public final TintConstraintLayout bottomList;

    @NonNull
    public final FragmentContainerView fcFolderRoot;

    @NonNull
    public final FragmentContainerView fcViewPage;

    @Bindable
    protected NoteListViewModel mViewModel;

    @NonNull
    public final FragmentContainerView topContainer;

    public FragmentNoteListContainerBinding(Object obj, View view, int i, LayoutBannerNotificationBinding layoutBannerNotificationBinding, TintConstraintLayout tintConstraintLayout, FragmentContainerView fragmentContainerView, FragmentContainerView fragmentContainerView2, FragmentContainerView fragmentContainerView3) {
        super(obj, view, i);
        this.bannerLayout = layoutBannerNotificationBinding;
        this.bottomList = tintConstraintLayout;
        this.fcFolderRoot = fragmentContainerView;
        this.fcViewPage = fragmentContainerView2;
        this.topContainer = fragmentContainerView3;
    }

    public static FragmentNoteListContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentNoteListContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteListViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable NoteListViewModel noteListViewModel);

    @Deprecated
    public static FragmentNoteListContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentNoteListContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_note_list_container);
    }

    @NonNull
    @Deprecated
    public static FragmentNoteListContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentNoteListContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_list_container, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentNoteListContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentNoteListContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentNoteListContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_list_container, null, false, obj);
    }
}
