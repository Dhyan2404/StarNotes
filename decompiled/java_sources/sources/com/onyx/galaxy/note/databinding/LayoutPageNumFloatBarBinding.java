package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutPageNumFloatBarBinding extends ViewDataBinding {

    @NonNull
    public final FrameLayout pageScrollerContainer;

    @NonNull
    public final TintImageView pageScrollerHorizon;

    @NonNull
    public final TintImageView pageScrollerVertical;

    public LayoutPageNumFloatBarBinding(Object obj, View view, int i, FrameLayout frameLayout, TintImageView tintImageView, TintImageView tintImageView2) {
        super(obj, view, i);
        this.pageScrollerContainer = frameLayout;
        this.pageScrollerHorizon = tintImageView;
        this.pageScrollerVertical = tintImageView2;
    }

    public static LayoutPageNumFloatBarBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutPageNumFloatBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutPageNumFloatBarBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutPageNumFloatBarBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_page_num_float_bar);
    }

    @NonNull
    @Deprecated
    public static LayoutPageNumFloatBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutPageNumFloatBarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_page_num_float_bar, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutPageNumFloatBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutPageNumFloatBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutPageNumFloatBarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_page_num_float_bar, null, false, obj);
    }
}
