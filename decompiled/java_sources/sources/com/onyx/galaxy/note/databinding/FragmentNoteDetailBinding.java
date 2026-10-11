package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeAndToolContainer;

/* loaded from: classes9.dex */
public abstract class FragmentNoteDetailBinding extends ViewDataBinding {

    @NonNull
    public final ShapeAndToolContainer shapeAndTool;

    public FragmentNoteDetailBinding(Object obj, View view, int i, ShapeAndToolContainer shapeAndToolContainer) {
        super(obj, view, i);
        this.shapeAndTool = shapeAndToolContainer;
    }

    public static FragmentNoteDetailBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentNoteDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentNoteDetailBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentNoteDetailBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_note_detail);
    }

    @NonNull
    @Deprecated
    public static FragmentNoteDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentNoteDetailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_detail, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentNoteDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentNoteDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentNoteDetailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_note_detail, null, false, obj);
    }
}
