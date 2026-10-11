package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.CounterTimeListView;
import com.onyx.galaxy.note.editor.view.CountingTextView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class LayoutCounterViewBinding extends ViewDataBinding {

    @NonNull
    public final CounterTimeListView counterTimeList;

    @NonNull
    public final TintConstraintLayout ctlExpand;

    @NonNull
    public final TintView dividerIcon;

    @NonNull
    public final TintFrameLayout flCollapse;

    @NonNull
    public final FrameLayout flControl;

    @NonNull
    public final ShadowLayout icon;

    @NonNull
    public final TintImageView ivCollapse;

    @NonNull
    public final CountingTextView tvCollapseCounting;

    @NonNull
    public final TextView tvControl;

    @NonNull
    public final TintTextView tvCountName;

    @NonNull
    public final CountingTextView tvExpandCounting;

    @NonNull
    public final TintTextView tvReset;

    @NonNull
    public final TintTextView tvShutdown;

    @NonNull
    public final TintTextView tvSplitTime;

    public LayoutCounterViewBinding(Object obj, View view, int i, CounterTimeListView counterTimeListView, TintConstraintLayout tintConstraintLayout, TintView tintView, TintFrameLayout tintFrameLayout, FrameLayout frameLayout, ShadowLayout shadowLayout, TintImageView tintImageView, CountingTextView countingTextView, TextView textView, TintTextView tintTextView, CountingTextView countingTextView2, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4) {
        super(obj, view, i);
        this.counterTimeList = counterTimeListView;
        this.ctlExpand = tintConstraintLayout;
        this.dividerIcon = tintView;
        this.flCollapse = tintFrameLayout;
        this.flControl = frameLayout;
        this.icon = shadowLayout;
        this.ivCollapse = tintImageView;
        this.tvCollapseCounting = countingTextView;
        this.tvControl = textView;
        this.tvCountName = tintTextView;
        this.tvExpandCounting = countingTextView2;
        this.tvReset = tintTextView2;
        this.tvShutdown = tintTextView3;
        this.tvSplitTime = tintTextView4;
    }

    public static LayoutCounterViewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutCounterViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutCounterViewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutCounterViewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_counter_view);
    }

    @NonNull
    @Deprecated
    public static LayoutCounterViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutCounterViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_counter_view, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutCounterViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutCounterViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutCounterViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_counter_view, null, false, obj);
    }
}
