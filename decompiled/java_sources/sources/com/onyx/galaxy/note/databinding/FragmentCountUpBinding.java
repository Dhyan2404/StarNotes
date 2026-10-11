package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.CountingTextView;

/* loaded from: classes9.dex */
public abstract class FragmentCountUpBinding extends ViewDataBinding {

    @NonNull
    public final TintEditText edtCounterName;

    @NonNull
    public final TintImageView ivNewRecordIndicator;

    @NonNull
    public final TintLinearLayout llMenu;

    @NonNull
    public final TintRelativeLayout rlTimerHistoryRecord;

    @NonNull
    public final CountingTextView tvCounter;

    @NonNull
    public final TintTextView tvLabelCounterName;

    @NonNull
    public final TintTextView tvLastCount;

    @NonNull
    public final TintTextView tvStart;

    @NonNull
    public final TintTextView tvTimerHistoryRecord;

    public FragmentCountUpBinding(Object obj, View view, int i, TintEditText tintEditText, TintImageView tintImageView, TintLinearLayout tintLinearLayout, TintRelativeLayout tintRelativeLayout, CountingTextView countingTextView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4) {
        super(obj, view, i);
        this.edtCounterName = tintEditText;
        this.ivNewRecordIndicator = tintImageView;
        this.llMenu = tintLinearLayout;
        this.rlTimerHistoryRecord = tintRelativeLayout;
        this.tvCounter = countingTextView;
        this.tvLabelCounterName = tintTextView;
        this.tvLastCount = tintTextView2;
        this.tvStart = tintTextView3;
        this.tvTimerHistoryRecord = tintTextView4;
    }

    public static FragmentCountUpBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentCountUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCountUpBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentCountUpBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_count_up);
    }

    @NonNull
    @Deprecated
    public static FragmentCountUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentCountUpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_count_up, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentCountUpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentCountUpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentCountUpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_count_up, null, false, obj);
    }
}
