package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupMagnifierBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final FrameLayout flContentLayout;

    @NonNull
    public final FrameLayout flHeight;

    @NonNull
    public final TintSwitchCompat switchAutoForwardMove;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupMagnifierBinding(Object obj, View view, int i, TintView tintView, FrameLayout frameLayout, FrameLayout frameLayout2, TintSwitchCompat tintSwitchCompat, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.divider = tintView;
        this.flContentLayout = frameLayout;
        this.flHeight = frameLayout2;
        this.switchAutoForwardMove = tintSwitchCompat;
        this.tvTitle = mediumTextView;
    }

    public static PopupMagnifierBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupMagnifierBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupMagnifierBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupMagnifierBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_magnifier);
    }

    @NonNull
    @Deprecated
    public static PopupMagnifierBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupMagnifierBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_magnifier, viewGroup, z, obj);
    }

    @NonNull
    public static PopupMagnifierBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupMagnifierBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupMagnifierBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_magnifier, null, false, obj);
    }
}
