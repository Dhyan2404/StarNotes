package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupExcerptPenMenuBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivGuide;

    @NonNull
    public final TintFrameLayout rectExcerptLayout;

    @NonNull
    public final TintSwitchCompat switchIndicator;

    @NonNull
    public final TintFrameLayout textExcerptLayout;

    public PopupExcerptPenMenuBinding(Object obj, View view, int i, TintImageView tintImageView, TintFrameLayout tintFrameLayout, TintSwitchCompat tintSwitchCompat, TintFrameLayout tintFrameLayout2) {
        super(obj, view, i);
        this.ivGuide = tintImageView;
        this.rectExcerptLayout = tintFrameLayout;
        this.switchIndicator = tintSwitchCompat;
        this.textExcerptLayout = tintFrameLayout2;
    }

    public static PopupExcerptPenMenuBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupExcerptPenMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupExcerptPenMenuBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupExcerptPenMenuBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_excerpt_pen_menu);
    }

    @NonNull
    @Deprecated
    public static PopupExcerptPenMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupExcerptPenMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_excerpt_pen_menu, viewGroup, z, obj);
    }

    @NonNull
    public static PopupExcerptPenMenuBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupExcerptPenMenuBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupExcerptPenMenuBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_excerpt_pen_menu, null, false, obj);
    }
}
