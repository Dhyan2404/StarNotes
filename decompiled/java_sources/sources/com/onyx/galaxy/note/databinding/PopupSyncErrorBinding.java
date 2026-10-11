package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupSyncErrorBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView arrowView;

    @NonNull
    public final TintTextView content;

    @NonNull
    public final TintTextView tvErrorCode;

    @NonNull
    public final TextView tvRetry;

    @NonNull
    public final LinearLayout wrapper;

    public PopupSyncErrorBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView, TintTextView tintTextView2, TextView textView, LinearLayout linearLayout) {
        super(obj, view, i);
        this.arrowView = tintImageView;
        this.content = tintTextView;
        this.tvErrorCode = tintTextView2;
        this.tvRetry = textView;
        this.wrapper = linearLayout;
    }

    public static PopupSyncErrorBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupSyncErrorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupSyncErrorBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupSyncErrorBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_sync_error);
    }

    @NonNull
    @Deprecated
    public static PopupSyncErrorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupSyncErrorBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_sync_error, viewGroup, z, obj);
    }

    @NonNull
    public static PopupSyncErrorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupSyncErrorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupSyncErrorBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_sync_error, null, false, obj);
    }
}
