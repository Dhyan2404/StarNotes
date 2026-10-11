package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ActivityLoginBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FragmentContainerView f56275e;

    @NonNull
    public final FragmentContainerView navHost;

    public ActivityLoginBinding(@NonNull FragmentContainerView fragmentContainerView, @NonNull FragmentContainerView fragmentContainerView2) {
        this.f56275e = fragmentContainerView;
        this.navHost = fragmentContainerView2;
    }

    @NonNull
    public static ActivityLoginBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FragmentContainerView fragmentContainerView = (FragmentContainerView) view;
        return new ActivityLoginBinding(fragmentContainerView, fragmentContainerView);
    }

    @NonNull
    public static ActivityLoginBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ActivityLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.activity_login, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FragmentContainerView getRoot() {
        return this.f56275e;
    }
}
