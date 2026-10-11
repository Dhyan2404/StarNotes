package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentNoteListDrawerFunctionBinding extends ViewDataBinding {

    @NonNull
    public final ItemNoteShadowViewLayoutBinding noteShadowView;

    @NonNull
    public final TintRecycleView rvFilter;

    @NonNull
    public final ItemTagShadowViewLayoutBinding tagShadowView;

    @NonNull
    public final View vScrollDown;

    @NonNull
    public final View vScrollUp;

    public FragmentNoteListDrawerFunctionBinding(Object obj, View view, int i, ItemNoteShadowViewLayoutBinding itemNoteShadowViewLayoutBinding, TintRecycleView tintRecycleView, ItemTagShadowViewLayoutBinding itemTagShadowViewLayoutBinding, View view2, View view3) {
        super(obj, view, i);
        this.noteShadowView = itemNoteShadowViewLayoutBinding;
        this.rvFilter = tintRecycleView;
        this.tagShadowView = itemTagShadowViewLayoutBinding;
        this.vScrollDown = view2;
        this.vScrollUp = view3;
    }

    public static FragmentNoteListDrawerFunctionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentNoteListDrawerFunctionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentNoteListDrawerFunctionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentNoteListDrawerFunctionBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_note_list_drawer_function);
    }

    @NonNull
    @Deprecated
    public static FragmentNoteListDrawerFunctionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentNoteListDrawerFunctionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_list_drawer_function, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentNoteListDrawerFunctionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentNoteListDrawerFunctionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentNoteListDrawerFunctionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_list_drawer_function, null, false, obj);
    }
}
