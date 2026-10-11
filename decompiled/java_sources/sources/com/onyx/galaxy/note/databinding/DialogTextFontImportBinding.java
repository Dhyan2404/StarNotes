package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TouchModeTintTextInputEditTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogTextFontImportBinding extends ViewDataBinding {

    @NonNull
    public final RecyclerView list;

    @NonNull
    public final TouchModeTintTextInputEditTextView tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvImport;

    public DialogTextFontImportBinding(Object obj, View view, int i, RecyclerView recyclerView, TouchModeTintTextInputEditTextView touchModeTintTextInputEditTextView, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.list = recyclerView;
        this.tieName = touchModeTintTextInputEditTextView;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView;
        this.tvImport = tintTextView2;
    }

    public static DialogTextFontImportBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogTextFontImportBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogTextFontImportBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogTextFontImportBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_text_font_import);
    }

    @NonNull
    @Deprecated
    public static DialogTextFontImportBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogTextFontImportBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_text_font_import, viewGroup, z, obj);
    }

    @NonNull
    public static DialogTextFontImportBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogTextFontImportBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogTextFontImportBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_text_font_import, null, false, obj);
    }
}
