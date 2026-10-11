package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintCardView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogSelectTagBinding extends ViewDataBinding {

    @NonNull
    public final TintCardView cardList;

    @NonNull
    public final TintFrameLayout flList;

    @NonNull
    public final EmptyViewManageTagBinding includeEmptyView;

    /* renamed from: rv */
    @NonNull
    public final RecyclerView f56532rv;

    @NonNull
    public final TintTextView textView4;

    @NonNull
    public final TintTextView textView6;

    @NonNull
    public final TintTextView textView7;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvCreateTag;

    @NonNull
    public final TintTextView tvManagerTag;

    @NonNull
    public final TintTextView tvOk;

    public DialogSelectTagBinding(Object obj, View view, int i, TintCardView tintCardView, TintFrameLayout tintFrameLayout, EmptyViewManageTagBinding emptyViewManageTagBinding, RecyclerView recyclerView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7) {
        super(obj, view, i);
        this.cardList = tintCardView;
        this.flList = tintFrameLayout;
        this.includeEmptyView = emptyViewManageTagBinding;
        this.f56532rv = recyclerView;
        this.textView4 = tintTextView;
        this.textView6 = tintTextView2;
        this.textView7 = tintTextView3;
        this.tvCancel = tintTextView4;
        this.tvCreateTag = tintTextView5;
        this.tvManagerTag = tintTextView6;
        this.tvOk = tintTextView7;
    }

    public static DialogSelectTagBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogSelectTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogSelectTagBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogSelectTagBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_select_tag);
    }

    @NonNull
    @Deprecated
    public static DialogSelectTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogSelectTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_select_tag, viewGroup, z, obj);
    }

    @NonNull
    public static DialogSelectTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogSelectTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogSelectTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_select_tag, null, false, obj);
    }
}
