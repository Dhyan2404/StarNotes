package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupExcerptMenuBinding extends ViewDataBinding {

    @NonNull
    public final TextView tvComment;

    @NonNull
    public final TextView tvDelete;

    @NonNull
    public final TextView tvJumpQuote;

    public PopupExcerptMenuBinding(Object obj, View view, int i, TextView textView, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.tvComment = textView;
        this.tvDelete = textView2;
        this.tvJumpQuote = textView3;
    }

    public static PopupExcerptMenuBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupExcerptMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupExcerptMenuBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupExcerptMenuBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_excerpt_menu);
    }

    @NonNull
    @Deprecated
    public static PopupExcerptMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupExcerptMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_excerpt_menu, viewGroup, z, obj);
    }

    @NonNull
    public static PopupExcerptMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupExcerptMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupExcerptMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_excerpt_menu, null, false, obj);
    }
}
