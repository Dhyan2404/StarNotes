package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ActivityNoteDetailBinding extends ViewDataBinding {

    @NonNull
    public final FrameLayout flNoteContent;

    public ActivityNoteDetailBinding(Object obj, View view, int i, FrameLayout frameLayout) {
        super(obj, view, i);
        this.flNoteContent = frameLayout;
    }

    public static ActivityNoteDetailBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ActivityNoteDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ActivityNoteDetailBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ActivityNoteDetailBinding) ViewDataBinding.bind(obj, view, C10651R.layout.activity_note_detail);
    }

    @NonNull
    @Deprecated
    public static ActivityNoteDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ActivityNoteDetailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.activity_note_detail, viewGroup, z, obj);
    }

    @NonNull
    public static ActivityNoteDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ActivityNoteDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ActivityNoteDetailBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.activity_note_detail, null, false, obj);
    }
}
