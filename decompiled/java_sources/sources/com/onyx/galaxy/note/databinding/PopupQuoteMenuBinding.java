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
public abstract class PopupQuoteMenuBinding extends ViewDataBinding {

    @NonNull
    public final TextView tvDelete;

    @NonNull
    public final TextView tvJumpSource;

    @NonNull
    public final View viewDivider;

    public PopupQuoteMenuBinding(Object obj, View view, int i, TextView textView, TextView textView2, View view2) {
        super(obj, view, i);
        this.tvDelete = textView;
        this.tvJumpSource = textView2;
        this.viewDivider = view2;
    }

    public static PopupQuoteMenuBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupQuoteMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupQuoteMenuBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupQuoteMenuBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_quote_menu);
    }

    @NonNull
    @Deprecated
    public static PopupQuoteMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupQuoteMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_quote_menu, viewGroup, z, obj);
    }

    @NonNull
    public static PopupQuoteMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupQuoteMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupQuoteMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_quote_menu, null, false, obj);
    }
}
