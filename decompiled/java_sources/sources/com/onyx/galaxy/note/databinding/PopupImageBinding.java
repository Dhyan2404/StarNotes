package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class PopupImageBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final FrameLayout flContentLayout;

    @NonNull
    public final FrameLayout flHeight;

    @NonNull
    public final MaxHeightRecyclerView imageList;

    @NonNull
    public final TintTextView tvBatchInsert;

    @NonNull
    public final TintTextView tvCamera;

    @NonNull
    public final TintTextView tvEmpty;

    @NonNull
    public final TintTextView tvInsertFromGallery;

    @NonNull
    public final TintTextView tvSelect;

    public PopupImageBinding(Object obj, View view, int i, TintView tintView, FrameLayout frameLayout, FrameLayout frameLayout2, MaxHeightRecyclerView maxHeightRecyclerView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5) {
        super(obj, view, i);
        this.divider = tintView;
        this.flContentLayout = frameLayout;
        this.flHeight = frameLayout2;
        this.imageList = maxHeightRecyclerView;
        this.tvBatchInsert = tintTextView;
        this.tvCamera = tintTextView2;
        this.tvEmpty = tintTextView3;
        this.tvInsertFromGallery = tintTextView4;
        this.tvSelect = tintTextView5;
    }

    public static PopupImageBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupImageBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupImageBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_image);
    }

    @NonNull
    @Deprecated
    public static PopupImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_image, viewGroup, z, obj);
    }

    @NonNull
    public static PopupImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_image, null, false, obj);
    }
}
