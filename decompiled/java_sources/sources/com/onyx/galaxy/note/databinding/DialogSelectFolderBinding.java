package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintCardView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogSelectFolderBinding extends ViewDataBinding {

    @NonNull
    public final TintCardView cardList;

    @NonNull
    public final TintFrameLayout flList;

    @NonNull
    public final TintFrameLayout flUnClassified;

    @NonNull
    public final Group groupUnClassified;

    @NonNull
    public final EmptyViewManageFolderBinding includeEmptyView;

    @NonNull
    public final TintImageView ivNoteTreeFolder;

    @NonNull
    public final TintImageView ivNoteTreeFolderBottom;

    @NonNull
    public final TintImageView ivUnClassifyChecked;

    /* renamed from: rv */
    @NonNull
    public final RecyclerView f56510rv;

    @NonNull
    public final TintTextView textView4;

    @NonNull
    public final TintTextView textView6;

    @NonNull
    public final TintTextView textView7;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvCreate;

    @NonNull
    public final TintTextView tvItemName;

    @NonNull
    public final TintTextView tvManagerFolder;

    @NonNull
    public final TintTextView tvOk;

    @NonNull
    public final TintTextView tvUnClassify;

    public DialogSelectFolderBinding(Object obj, View view, int i, TintCardView tintCardView, TintFrameLayout tintFrameLayout, TintFrameLayout tintFrameLayout2, Group group, EmptyViewManageFolderBinding emptyViewManageFolderBinding, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, RecyclerView recyclerView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8, TintTextView tintTextView9) {
        super(obj, view, i);
        this.cardList = tintCardView;
        this.flList = tintFrameLayout;
        this.flUnClassified = tintFrameLayout2;
        this.groupUnClassified = group;
        this.includeEmptyView = emptyViewManageFolderBinding;
        this.ivNoteTreeFolder = tintImageView;
        this.ivNoteTreeFolderBottom = tintImageView2;
        this.ivUnClassifyChecked = tintImageView3;
        this.f56510rv = recyclerView;
        this.textView4 = tintTextView;
        this.textView6 = tintTextView2;
        this.textView7 = tintTextView3;
        this.tvCancel = tintTextView4;
        this.tvCreate = tintTextView5;
        this.tvItemName = tintTextView6;
        this.tvManagerFolder = tintTextView7;
        this.tvOk = tintTextView8;
        this.tvUnClassify = tintTextView9;
    }

    public static DialogSelectFolderBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogSelectFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogSelectFolderBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogSelectFolderBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_select_folder);
    }

    @NonNull
    @Deprecated
    public static DialogSelectFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogSelectFolderBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_select_folder, viewGroup, z, obj);
    }

    @NonNull
    public static DialogSelectFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogSelectFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogSelectFolderBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_select_folder, null, false, obj);
    }
}
