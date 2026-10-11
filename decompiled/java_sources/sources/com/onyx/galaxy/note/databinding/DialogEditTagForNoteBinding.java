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
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthInputTextEdit;
import com.onyx.android.sdk.theme.widgets.TintCardView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogEditTagForNoteBinding extends ViewDataBinding {

    @NonNull
    public final TintCardView cardList;

    @NonNull
    public final TintFrameLayout flList;

    @NonNull
    public final Group groupList;

    @NonNull
    public final Group groupSearchList;

    @NonNull
    public final EmptyViewManageTagBinding includeEmptyView;

    @NonNull
    public final TintImageView ivSearch;

    /* renamed from: rv */
    @NonNull
    public final SwipeMenuRecyclerView f56392rv;

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
    public final TouchModeMaxLengthInputTextEdit tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvCreateTag;

    @NonNull
    public final TintTextView tvManagerTag;

    @NonNull
    public final MediumTextView tvOk;

    public DialogEditTagForNoteBinding(Object obj, View view, int i, TintCardView tintCardView, TintFrameLayout tintFrameLayout, Group group, Group group2, EmptyViewManageTagBinding emptyViewManageTagBinding, TintImageView tintImageView, SwipeMenuRecyclerView swipeMenuRecyclerView, RecyclerView recyclerView, MediumTextView mediumTextView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TouchModeMaxLengthInputTextEdit touchModeMaxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, MediumTextView mediumTextView2) {
        super(obj, view, i);
        this.cardList = tintCardView;
        this.flList = tintFrameLayout;
        this.groupList = group;
        this.groupSearchList = group2;
        this.includeEmptyView = emptyViewManageTagBinding;
        this.ivSearch = tintImageView;
        this.f56392rv = swipeMenuRecyclerView;
        this.rvSearch = recyclerView;
        this.textView4 = mediumTextView;
        this.textView6 = tintTextView;
        this.textView7 = tintTextView2;
        this.textView9 = tintTextView3;
        this.tieName = touchModeMaxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView4;
        this.tvCreateTag = tintTextView5;
        this.tvManagerTag = tintTextView6;
        this.tvOk = mediumTextView2;
    }

    public static DialogEditTagForNoteBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogEditTagForNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogEditTagForNoteBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogEditTagForNoteBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_edit_tag_for_note);
    }

    @NonNull
    @Deprecated
    public static DialogEditTagForNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogEditTagForNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_edit_tag_for_note, viewGroup, z, obj);
    }

    @NonNull
    public static DialogEditTagForNoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogEditTagForNoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogEditTagForNoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_edit_tag_for_note, null, false, obj);
    }
}
