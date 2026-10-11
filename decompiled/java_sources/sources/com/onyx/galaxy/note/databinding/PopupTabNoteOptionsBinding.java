package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupTabNoteOptionsBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvCloseNote;

    @NonNull
    public final TintTextView tvLeftRightSplit;

    @NonNull
    public final TintTextView tvUpDownSplit;

    public PopupTabNoteOptionsBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.tvCloseNote = tintTextView;
        this.tvLeftRightSplit = tintTextView2;
        this.tvUpDownSplit = tintTextView3;
    }

    public static PopupTabNoteOptionsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupTabNoteOptionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupTabNoteOptionsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupTabNoteOptionsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_tab_note_options);
    }

    @NonNull
    @Deprecated
    public static PopupTabNoteOptionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupTabNoteOptionsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tab_note_options, viewGroup, z, obj);
    }

    @NonNull
    public static PopupTabNoteOptionsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupTabNoteOptionsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupTabNoteOptionsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tab_note_options, null, false, obj);
    }
}
