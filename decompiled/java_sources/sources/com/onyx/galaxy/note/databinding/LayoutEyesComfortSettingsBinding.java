package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.textbox.widget.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarView;

/* loaded from: classes9.dex */
public final class LayoutEyesComfortSettingsBinding implements ViewBinding {

    @NonNull
    public final TintImageView barAdd;

    @NonNull
    public final TintImageView barMinus;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57353e;

    @NonNull
    public final RecyclerView rvSettings;

    @NonNull
    public final StickSeekBarView seekBarIntensity;

    @NonNull
    public final TintTextView tvIntensity;

    public LayoutEyesComfortSettingsBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull RecyclerView recyclerView, @NonNull StickSeekBarView stickSeekBarView, @NonNull TintTextView tintTextView) {
        this.f57353e = tintLinearLayout;
        this.barAdd = tintImageView;
        this.barMinus = tintImageView2;
        this.rvSettings = recyclerView;
        this.seekBarIntensity = stickSeekBarView;
        this.tvIntensity = tintTextView;
    }

    @NonNull
    public static LayoutEyesComfortSettingsBinding bind(@NonNull View view) {
        int i = C10651R.id.bar_add;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.bar_minus;
            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView2 != null) {
                i = C10651R.id.rv_settings;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                if (recyclerView != null) {
                    i = C10651R.id.seek_bar_intensity;
                    StickSeekBarView stickSeekBarView = (StickSeekBarView) ViewBindings.findChildViewById(view, i);
                    if (stickSeekBarView != null) {
                        i = C10651R.id.tv_intensity;
                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView != null) {
                            return new LayoutEyesComfortSettingsBinding((TintLinearLayout) view, tintImageView, tintImageView2, recyclerView, stickSeekBarView, tintTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static LayoutEyesComfortSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutEyesComfortSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_eyes_comfort_settings, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57353e;
    }
}
