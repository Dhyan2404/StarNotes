package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutNoteCommonSettingsBinding extends ViewDataBinding {

    @NonNull
    public final TintSwitchCompat adaptStrokeWidth;

    @NonNull
    public final TintFrameLayout changeTheme;

    @NonNull
    public final ConstraintLayout itemAdaptStrokeWidth;

    @NonNull
    public final ConstraintLayout itemSinglePaging;

    @NonNull
    public final ConstraintLayout itemTwoPageBrowsing;

    @NonNull
    public final TintImageView ivAdaptStrokeWidthGuide;

    @NonNull
    public final TintImageView layoutTypeHorizontal;

    @NonNull
    public final TintImageView layoutTypeVertical;

    @NonNull
    public final TintFrameLayout moreSettings;

    @NonNull
    public final ConstraintLayout pageNumberPanelDirection;

    @NonNull
    public final TintImageView pageNumberPanelDirectionEnd;

    @NonNull
    public final TintImageView pageNumberPanelDirectionStart;

    @NonNull
    public final ConstraintLayout pageOrientation;

    @NonNull
    public final TintSwitchCompat singlePaging;

    @NonNull
    public final ConstraintLayout toolbar;

    @NonNull
    public final TintImageView toolbarBottom;

    @NonNull
    public final TintImageView toolbarLeft;

    @NonNull
    public final TintImageView toolbarRight;

    @NonNull
    public final TintImageView toolbarTop;

    @NonNull
    public final TintTextView tvAdaptStrokeWidth;

    @NonNull
    public final TintTextView tvCommonSettingsSubTitle;

    @NonNull
    public final TintTextView tvCommonSettingsTitle;

    @NonNull
    public final TintSwitchCompat twoPageBrowsing;

    public LayoutNoteCommonSettingsBinding(Object obj, View view, int i, TintSwitchCompat tintSwitchCompat, TintFrameLayout tintFrameLayout, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintFrameLayout tintFrameLayout2, ConstraintLayout constraintLayout4, TintImageView tintImageView4, TintImageView tintImageView5, ConstraintLayout constraintLayout5, TintSwitchCompat tintSwitchCompat2, ConstraintLayout constraintLayout6, TintImageView tintImageView6, TintImageView tintImageView7, TintImageView tintImageView8, TintImageView tintImageView9, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintSwitchCompat tintSwitchCompat3) {
        super(obj, view, i);
        this.adaptStrokeWidth = tintSwitchCompat;
        this.changeTheme = tintFrameLayout;
        this.itemAdaptStrokeWidth = constraintLayout;
        this.itemSinglePaging = constraintLayout2;
        this.itemTwoPageBrowsing = constraintLayout3;
        this.ivAdaptStrokeWidthGuide = tintImageView;
        this.layoutTypeHorizontal = tintImageView2;
        this.layoutTypeVertical = tintImageView3;
        this.moreSettings = tintFrameLayout2;
        this.pageNumberPanelDirection = constraintLayout4;
        this.pageNumberPanelDirectionEnd = tintImageView4;
        this.pageNumberPanelDirectionStart = tintImageView5;
        this.pageOrientation = constraintLayout5;
        this.singlePaging = tintSwitchCompat2;
        this.toolbar = constraintLayout6;
        this.toolbarBottom = tintImageView6;
        this.toolbarLeft = tintImageView7;
        this.toolbarRight = tintImageView8;
        this.toolbarTop = tintImageView9;
        this.tvAdaptStrokeWidth = tintTextView;
        this.tvCommonSettingsSubTitle = tintTextView2;
        this.tvCommonSettingsTitle = tintTextView3;
        this.twoPageBrowsing = tintSwitchCompat3;
    }

    public static LayoutNoteCommonSettingsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutNoteCommonSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutNoteCommonSettingsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutNoteCommonSettingsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_note_common_settings);
    }

    @NonNull
    @Deprecated
    public static LayoutNoteCommonSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutNoteCommonSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_note_common_settings, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutNoteCommonSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutNoteCommonSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutNoteCommonSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_note_common_settings, null, false, obj);
    }
}
