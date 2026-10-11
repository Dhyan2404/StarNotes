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
public abstract class PopupNoteListSortBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnCreateAsc;

    @NonNull
    public final TintTextView btnCreateDesc;

    @NonNull
    public final TintTextView btnCustom;

    @NonNull
    public final TintTextView btnNameAsc;

    @NonNull
    public final TintTextView btnNameDesc;

    @NonNull
    public final TintTextView btnUpdateAsc;

    @NonNull
    public final TintTextView btnUpdateDesc;

    @NonNull
    public final TintView view12;

    @NonNull
    public final TintView view2;

    @NonNull
    public final TintView view3;

    @NonNull
    public final TintView view4;

    @NonNull
    public final TintView view5;

    @NonNull
    public final TintView view6;

    public PopupNoteListSortBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintView tintView, TintView tintView2, TintView tintView3, TintView tintView4, TintView tintView5, TintView tintView6) {
        super(obj, view, i);
        this.btnCreateAsc = tintTextView;
        this.btnCreateDesc = tintTextView2;
        this.btnCustom = tintTextView3;
        this.btnNameAsc = tintTextView4;
        this.btnNameDesc = tintTextView5;
        this.btnUpdateAsc = tintTextView6;
        this.btnUpdateDesc = tintTextView7;
        this.view12 = tintView;
        this.view2 = tintView2;
        this.view3 = tintView3;
        this.view4 = tintView4;
        this.view5 = tintView5;
        this.view6 = tintView6;
    }

    public static PopupNoteListSortBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupNoteListSortBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupNoteListSortBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupNoteListSortBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_note_list_sort);
    }

    @NonNull
    @Deprecated
    public static PopupNoteListSortBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupNoteListSortBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_list_sort, viewGroup, z, obj);
    }

    @NonNull
    public static PopupNoteListSortBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupNoteListSortBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupNoteListSortBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_list_sort, null, false, obj);
    }
}
