package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupNoteListOpBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnAddTags;

    @NonNull
    public final TintTextView btnChangeTemplate;

    @NonNull
    public final TintTextView btnCopy;

    @NonNull
    public final TintTextView btnEdit;

    @NonNull
    public final TintTextView btnExport;

    @NonNull
    public final TintTextView btnLock;

    @NonNull
    public final TintTextView btnMove;

    @NonNull
    public final TintTextView btnMoveTrash;

    @NonNull
    public final LinearLayout llAddTags;

    @NonNull
    public final LinearLayout llChangeTemplate;

    @NonNull
    public final LinearLayout llExport;

    @NonNull
    public final LinearLayout llLock;

    @NonNull
    public final TintView view2;

    @NonNull
    public final TintView view3;

    @NonNull
    public final TintView view5;

    public PopupNoteListOpBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TintView tintView, TintView tintView2, TintView tintView3) {
        super(obj, view, i);
        this.btnAddTags = tintTextView;
        this.btnChangeTemplate = tintTextView2;
        this.btnCopy = tintTextView3;
        this.btnEdit = tintTextView4;
        this.btnExport = tintTextView5;
        this.btnLock = tintTextView6;
        this.btnMove = tintTextView7;
        this.btnMoveTrash = tintTextView8;
        this.llAddTags = linearLayout;
        this.llChangeTemplate = linearLayout2;
        this.llExport = linearLayout3;
        this.llLock = linearLayout4;
        this.view2 = tintView;
        this.view3 = tintView2;
        this.view5 = tintView3;
    }

    public static PopupNoteListOpBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupNoteListOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupNoteListOpBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupNoteListOpBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_note_list_op);
    }

    @NonNull
    @Deprecated
    public static PopupNoteListOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupNoteListOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_list_op, viewGroup, z, obj);
    }

    @NonNull
    public static PopupNoteListOpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupNoteListOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupNoteListOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_list_op, null, false, obj);
    }
}
