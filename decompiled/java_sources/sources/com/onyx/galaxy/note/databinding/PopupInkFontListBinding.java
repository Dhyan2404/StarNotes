package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class PopupInkFontListBinding extends ViewDataBinding {

    @NonNull
    public final MaxHeightRecyclerView fontListView;

    @NonNull
    public final TintLinearLayout rootLayout;

    public PopupInkFontListBinding(Object obj, View view, int i, MaxHeightRecyclerView maxHeightRecyclerView, TintLinearLayout tintLinearLayout) {
        super(obj, view, i);
        this.fontListView = maxHeightRecyclerView;
        this.rootLayout = tintLinearLayout;
    }

    public static PopupInkFontListBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupInkFontListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupInkFontListBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupInkFontListBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_ink_font_list);
    }

    @NonNull
    @Deprecated
    public static PopupInkFontListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupInkFontListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ink_font_list, viewGroup, z, obj);
    }

    @NonNull
    public static PopupInkFontListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupInkFontListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupInkFontListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ink_font_list, null, false, obj);
    }
}
