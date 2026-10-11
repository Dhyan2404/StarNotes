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
public abstract class PopupNoteListMoreOperateBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvCloudSync;

    @NonNull
    public final TintTextView tvDisplayType;

    @NonNull
    public final TintTextView tvMultiSelect;

    @NonNull
    public final TintTextView tvSort;

    @NonNull
    public final TintView vDivideSort;

    @NonNull
    public final TintView vDividerSort;

    @NonNull
    public final TintView view2;

    public PopupNoteListMoreOperateBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintView tintView, TintView tintView2, TintView tintView3) {
        super(obj, view, i);
        this.tvCloudSync = tintTextView;
        this.tvDisplayType = tintTextView2;
        this.tvMultiSelect = tintTextView3;
        this.tvSort = tintTextView4;
        this.vDivideSort = tintView;
        this.vDividerSort = tintView2;
        this.view2 = tintView3;
    }

    public static PopupNoteListMoreOperateBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupNoteListMoreOperateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupNoteListMoreOperateBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupNoteListMoreOperateBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_note_list_more_operate);
    }

    @NonNull
    @Deprecated
    public static PopupNoteListMoreOperateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupNoteListMoreOperateBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_list_more_operate, viewGroup, z, obj);
    }

    @NonNull
    public static PopupNoteListMoreOperateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupNoteListMoreOperateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupNoteListMoreOperateBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_list_more_operate, null, false, obj);
    }
}
