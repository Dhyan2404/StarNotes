package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupNoteListDustBinOpBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnDelete;

    @NonNull
    public final TintTextView btnRestore;

    @NonNull
    public final TintView view2;

    public PopupNoteListDustBinOpBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintView tintView) {
        super(obj, view, i);
        this.btnDelete = tintTextView;
        this.btnRestore = tintTextView2;
        this.view2 = tintView;
    }

    public static PopupNoteListDustBinOpBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupNoteListDustBinOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupNoteListDustBinOpBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupNoteListDustBinOpBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_note_list_dust_bin_op);
    }

    @NonNull
    @Deprecated
    public static PopupNoteListDustBinOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupNoteListDustBinOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_list_dust_bin_op, viewGroup, z, obj);
    }

    @NonNull
    public static PopupNoteListDustBinOpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupNoteListDustBinOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupNoteListDustBinOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_list_dust_bin_op, null, false, obj);
    }
}
