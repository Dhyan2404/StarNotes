package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class PopupThemeBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final MaxHeightRecyclerView rlThemeList;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupThemeBinding(Object obj, View view, int i, TintView tintView, MaxHeightRecyclerView maxHeightRecyclerView, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.divider = tintView;
        this.rlThemeList = maxHeightRecyclerView;
        this.tvTitle = mediumTextView;
    }

    public static PopupThemeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupThemeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupThemeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_theme);
    }

    @NonNull
    @Deprecated
    public static PopupThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupThemeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_theme, viewGroup, z, obj);
    }

    @NonNull
    public static PopupThemeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupThemeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_theme, null, false, obj);
    }
}
