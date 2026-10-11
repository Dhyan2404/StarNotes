package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemExcerptQuoteBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvTitle;

    public ItemExcerptQuoteBinding(Object obj, View view, int i, TintTextView tintTextView) {
        super(obj, view, i);
        this.tvTitle = tintTextView;
    }

    public static ItemExcerptQuoteBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemExcerptQuoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemExcerptQuoteBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemExcerptQuoteBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_excerpt_quote);
    }

    @NonNull
    @Deprecated
    public static ItemExcerptQuoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemExcerptQuoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_excerpt_quote, viewGroup, z, obj);
    }

    @NonNull
    public static ItemExcerptQuoteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemExcerptQuoteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemExcerptQuoteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_excerpt_quote, null, false, obj);
    }
}
