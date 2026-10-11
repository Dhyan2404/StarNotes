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
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class PopupTextFontListBinding extends ViewDataBinding {

    @NonNull
    public final MaxHeightRecyclerView list;

    @NonNull
    public final TintTextView tvImport;

    public PopupTextFontListBinding(Object obj, View view, int i, MaxHeightRecyclerView maxHeightRecyclerView, TintTextView tintTextView) {
        super(obj, view, i);
        this.list = maxHeightRecyclerView;
        this.tvImport = tintTextView;
    }

    public static PopupTextFontListBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupTextFontListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupTextFontListBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupTextFontListBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_text_font_list);
    }

    @NonNull
    @Deprecated
    public static PopupTextFontListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupTextFontListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_text_font_list, viewGroup, z, obj);
    }

    @NonNull
    public static PopupTextFontListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupTextFontListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupTextFontListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_text_font_list, null, false, obj);
    }
}
