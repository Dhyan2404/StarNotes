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
import com.aitsuki.swipe.SwipeMenuRecyclerView;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintCardView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogManageFolderBinding extends ViewDataBinding {

    @NonNull
    public final TintCardView cardList;

    @NonNull
    public final TintFrameLayout flList;

    @NonNull
    public final Group groupList;

    @NonNull
    public final Group groupSearchList;

    @NonNull
    public final EmptyViewManageFolderBinding includeEmptyView;

    @NonNull
    public final TintImageView ivSearch;

    /* renamed from: rv */
    @NonNull
    public final SwipeMenuRecyclerView f56456rv;

    @NonNull
    public final RecyclerView rvSearch;

    @NonNull
    public final MediumTextView textView4;

    @NonNull
    public final TintTextView textView6;

    @NonNull
    public final TintTextView textView7;

    @NonNull
    public final TintTextView textView9;

    @NonNull
    public final MaxLengthInputTextEdit tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvCreate;

    @NonNull
    public final TintTextView tvOk;

    public DialogManageFolderBinding(Object obj, View view, int i, TintCardView tintCardView, TintFrameLayout tintFrameLayout, Group group, Group group2, EmptyViewManageFolderBinding emptyViewManageFolderBinding, TintImageView tintImageView, SwipeMenuRecyclerView swipeMenuRecyclerView, RecyclerView recyclerView, MediumTextView mediumTextView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6) {
        super(obj, view, i);
        this.cardList = tintCardView;
        this.flList = tintFrameLayout;
        this.groupList = group;
        this.groupSearchList = group2;
        this.includeEmptyView = emptyViewManageFolderBinding;
        this.ivSearch = tintImageView;
        this.f56456rv = swipeMenuRecyclerView;
        this.rvSearch = recyclerView;
        this.textView4 = mediumTextView;
        this.textView6 = tintTextView;
        this.textView7 = tintTextView2;
        this.textView9 = tintTextView3;
        this.tieName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView4;
        this.tvCreate = tintTextView5;
        this.tvOk = tintTextView6;
    }

    public static DialogManageFolderBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogManageFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogManageFolderBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogManageFolderBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_manage_folder);
    }

    @NonNull
    @Deprecated
    public static DialogManageFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogManageFolderBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_manage_folder, viewGroup, z, obj);
    }

    @NonNull
    public static DialogManageFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogManageFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogManageFolderBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_manage_folder, null, false, obj);
    }
}
