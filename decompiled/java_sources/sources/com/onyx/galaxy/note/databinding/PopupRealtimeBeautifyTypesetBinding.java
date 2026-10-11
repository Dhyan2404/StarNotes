package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;

/* loaded from: classes9.dex */
public final class PopupRealtimeBeautifyTypesetBinding implements ViewBinding {

    @NonNull
    public final TintImageView arrowButton;

    @NonNull
    public final TintImageView betaAiIcon;

    @NonNull
    public final StickSeekBarContainer charSpacingSeekbar;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57791e;

    @NonNull
    public final TintLinearLayout followScribbleLayout;

    @NonNull
    public final TintSwitchCompat followScribbleSwitch;

    @NonNull
    public final TintTextView followScribbleText;

    @NonNull
    public final TintLinearLayout fontSelectLayout;

    @NonNull
    public final TintTextView fontSelectTitle;

    @NonNull
    public final TintLinearLayout fontSelectTitleLayout;

    @NonNull
    public final StickSeekBarContainer fontSizeSeekbar;

    @NonNull
    public final TintImageView hintButton;

    @NonNull
    public final StickSeekBarContainer lineSpacingSeekbar;

    @NonNull
    public final TintLinearLayout rootLayout;

    @NonNull
    public final TintImageView thumbnail;

    @NonNull
    public final MediumTextView titleText;

    public PopupRealtimeBeautifyTypesetBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull StickSeekBarContainer stickSeekBarContainer, @NonNull TintLinearLayout tintLinearLayout2, @NonNull TintSwitchCompat tintSwitchCompat, @NonNull TintTextView tintTextView, @NonNull TintLinearLayout tintLinearLayout3, @NonNull TintTextView tintTextView2, @NonNull TintLinearLayout tintLinearLayout4, @NonNull StickSeekBarContainer stickSeekBarContainer2, @NonNull TintImageView tintImageView3, @NonNull StickSeekBarContainer stickSeekBarContainer3, @NonNull TintLinearLayout tintLinearLayout5, @NonNull TintImageView tintImageView4, @NonNull MediumTextView mediumTextView) {
        this.f57791e = tintLinearLayout;
        this.arrowButton = tintImageView;
        this.betaAiIcon = tintImageView2;
        this.charSpacingSeekbar = stickSeekBarContainer;
        this.followScribbleLayout = tintLinearLayout2;
        this.followScribbleSwitch = tintSwitchCompat;
        this.followScribbleText = tintTextView;
        this.fontSelectLayout = tintLinearLayout3;
        this.fontSelectTitle = tintTextView2;
        this.fontSelectTitleLayout = tintLinearLayout4;
        this.fontSizeSeekbar = stickSeekBarContainer2;
        this.hintButton = tintImageView3;
        this.lineSpacingSeekbar = stickSeekBarContainer3;
        this.rootLayout = tintLinearLayout5;
        this.thumbnail = tintImageView4;
        this.titleText = mediumTextView;
    }

    @NonNull
    public static PopupRealtimeBeautifyTypesetBinding bind(@NonNull View view) {
        int i = C10651R.id.arrowButton;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.betaAiIcon;
            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView2 != null) {
                i = C10651R.id.charSpacingSeekbar;
                StickSeekBarContainer stickSeekBarContainer = (StickSeekBarContainer) ViewBindings.findChildViewById(view, i);
                if (stickSeekBarContainer != null) {
                    i = C10651R.id.followScribbleLayout;
                    TintLinearLayout tintLinearLayout = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                    if (tintLinearLayout != null) {
                        i = C10651R.id.followScribbleSwitch;
                        TintSwitchCompat tintSwitchCompat = (TintSwitchCompat) ViewBindings.findChildViewById(view, i);
                        if (tintSwitchCompat != null) {
                            i = C10651R.id.followScribbleText;
                            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView != null) {
                                i = C10651R.id.fontSelectLayout;
                                TintLinearLayout tintLinearLayout2 = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                                if (tintLinearLayout2 != null) {
                                    i = C10651R.id.fontSelectTitle;
                                    TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                    if (tintTextView2 != null) {
                                        i = C10651R.id.fontSelectTitleLayout;
                                        TintLinearLayout tintLinearLayout3 = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (tintLinearLayout3 != null) {
                                            i = C10651R.id.fontSizeSeekbar;
                                            StickSeekBarContainer stickSeekBarContainer2 = (StickSeekBarContainer) ViewBindings.findChildViewById(view, i);
                                            if (stickSeekBarContainer2 != null) {
                                                i = C10651R.id.hintButton;
                                                TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                                                if (tintImageView3 != null) {
                                                    i = C10651R.id.lineSpacingSeekbar;
                                                    StickSeekBarContainer stickSeekBarContainer3 = (StickSeekBarContainer) ViewBindings.findChildViewById(view, i);
                                                    if (stickSeekBarContainer3 != null) {
                                                        TintLinearLayout tintLinearLayout4 = (TintLinearLayout) view;
                                                        i = C10651R.id.thumbnail;
                                                        TintImageView tintImageView4 = (TintImageView) ViewBindings.findChildViewById(view, i);
                                                        if (tintImageView4 != null) {
                                                            i = C10651R.id.titleText;
                                                            MediumTextView mediumTextView = (MediumTextView) ViewBindings.findChildViewById(view, i);
                                                            if (mediumTextView != null) {
                                                                return new PopupRealtimeBeautifyTypesetBinding(tintLinearLayout4, tintImageView, tintImageView2, stickSeekBarContainer, tintLinearLayout, tintSwitchCompat, tintTextView, tintLinearLayout2, tintTextView2, tintLinearLayout3, stickSeekBarContainer2, tintImageView3, stickSeekBarContainer3, tintLinearLayout4, tintImageView4, mediumTextView);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PopupRealtimeBeautifyTypesetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupRealtimeBeautifyTypesetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_realtime_beautify_typeset, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57791e;
    }
}
