package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ActivityUserCenterBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintFrameLayout f56287e;

    @NonNull
    public final FragmentContainerView navHost;

    public ActivityUserCenterBinding(@NonNull TintFrameLayout tintFrameLayout, @NonNull FragmentContainerView fragmentContainerView) {
        this.f56287e = tintFrameLayout;
        this.navHost = fragmentContainerView;
    }

    @NonNull
    public static ActivityUserCenterBinding bind(@NonNull View view) {
        int i = C10651R.id.nav_host;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, i);
        if (fragmentContainerView != null) {
            return new ActivityUserCenterBinding((TintFrameLayout) view, fragmentContainerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ActivityUserCenterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityUserCenterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.activity_user_center, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintFrameLayout getRoot() {
        return this.f56287e;
    }
}
