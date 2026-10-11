package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class IncludeSpecialDeviceStylusBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayoutCompat f56926e;

    @NonNull
    public final TintTextView longPressTitle;

    @NonNull
    public final LinearLayoutCompat stylusContainer;

    @NonNull
    public final TintSwitchCompat switchLongPressEraser;

    public IncludeSpecialDeviceStylusBinding(@NonNull LinearLayoutCompat linearLayoutCompat, @NonNull TintTextView tintTextView, @NonNull LinearLayoutCompat linearLayoutCompat2, @NonNull TintSwitchCompat tintSwitchCompat) {
        this.f56926e = linearLayoutCompat;
        this.longPressTitle = tintTextView;
        this.stylusContainer = linearLayoutCompat2;
        this.switchLongPressEraser = tintSwitchCompat;
    }

    @NonNull
    public static IncludeSpecialDeviceStylusBinding bind(@NonNull View view) {
        int i = C10651R.id.long_press_title;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) view;
            int i2 = C10651R.id.switch_long_press_eraser;
            TintSwitchCompat tintSwitchCompat = (TintSwitchCompat) ViewBindings.findChildViewById(view, i2);
            if (tintSwitchCompat != null) {
                return new IncludeSpecialDeviceStylusBinding(linearLayoutCompat, tintTextView, linearLayoutCompat, tintSwitchCompat);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static IncludeSpecialDeviceStylusBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static IncludeSpecialDeviceStylusBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.include_special_device_stylus, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayoutCompat getRoot() {
        return this.f56926e;
    }
}
