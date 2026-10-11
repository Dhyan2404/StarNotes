package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.viewmodel.NoteListViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentNoteListFunctionBinding extends ViewDataBinding {

    @Bindable
    protected NoteListViewModel mViewModel;

    @NonNull
    public final ItemNoteShadowViewLayoutBinding noteShadowView;

    @NonNull
    public final TintRecycleView rvFilter;

    @NonNull
    public final LayoutSidebarNotificationBinding sidebarNotificationBinding;

    @NonNull
    public final ItemTagShadowViewLayoutBinding tagShadowView;

    @NonNull
    public final View vScrollDown;

    @NonNull
    public final View vScrollUp;

    public FragmentNoteListFunctionBinding(Object obj, View view, int i, ItemNoteShadowViewLayoutBinding itemNoteShadowViewLayoutBinding, TintRecycleView tintRecycleView, LayoutSidebarNotificationBinding layoutSidebarNotificationBinding, ItemTagShadowViewLayoutBinding itemTagShadowViewLayoutBinding, View view2, View view3) {
        super(obj, view, i);
        this.noteShadowView = itemNoteShadowViewLayoutBinding;
        this.rvFilter = tintRecycleView;
        this.sidebarNotificationBinding = layoutSidebarNotificationBinding;
        this.tagShadowView = itemTagShadowViewLayoutBinding;
        this.vScrollDown = view2;
        this.vScrollUp = view3;
    }

    public static FragmentNoteListFunctionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentNoteListFunctionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public NoteListViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable NoteListViewModel noteListViewModel);

    @Deprecated
    public static FragmentNoteListFunctionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentNoteListFunctionBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_note_list_function);
    }

    @NonNull
    @Deprecated
    public static FragmentNoteListFunctionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentNoteListFunctionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_list_function, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentNoteListFunctionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentNoteListFunctionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentNoteListFunctionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_list_function, null, false, obj);
    }
}
