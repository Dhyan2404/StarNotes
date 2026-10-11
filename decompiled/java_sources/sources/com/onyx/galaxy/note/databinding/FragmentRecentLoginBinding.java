package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import de.hdodenhof.circleimageview.CircleImageView;

/* loaded from: classes9.dex */
public abstract class FragmentRecentLoginBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout clAccount;

    @NonNull
    public final TintConstraintLayout clTitle;

    @NonNull
    public final ImageView ivLoginType;

    @NonNull
    public final ImageView ivLogo;

    @NonNull
    public final CircleImageView ivUserAvatar;

    @NonNull
    public final ImageView ivUserRole;

    @NonNull
    public final TintLinearLayout llyAccountList;

    @NonNull
    public final TintLinearLayout llyDataTips;

    @NonNull
    public final TintLinearLayout llyFeedback;

    @NonNull
    public final TintTextView tvAccount;

    @NonNull
    public final TintTextView tvDataTips;

    @NonNull
    public final TintTextView tvHelpAndFeedback;

    @NonNull
    public final TintTextView tvLastLoginAt;

    @NonNull
    public final TintTextView tvLogin;

    @NonNull
    public final TintTextView tvLoginOther;

    @NonNull
    public final TintTextView tvTips;

    @NonNull
    public final TintTextView tvWelcome;

    public FragmentRecentLoginBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, TintConstraintLayout tintConstraintLayout2, ImageView imageView, ImageView imageView2, CircleImageView circleImageView, ImageView imageView3, TintLinearLayout tintLinearLayout, TintLinearLayout tintLinearLayout2, TintLinearLayout tintLinearLayout3, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8) {
        super(obj, view, i);
        this.clAccount = tintConstraintLayout;
        this.clTitle = tintConstraintLayout2;
        this.ivLoginType = imageView;
        this.ivLogo = imageView2;
        this.ivUserAvatar = circleImageView;
        this.ivUserRole = imageView3;
        this.llyAccountList = tintLinearLayout;
        this.llyDataTips = tintLinearLayout2;
        this.llyFeedback = tintLinearLayout3;
        this.tvAccount = tintTextView;
        this.tvDataTips = tintTextView2;
        this.tvHelpAndFeedback = tintTextView3;
        this.tvLastLoginAt = tintTextView4;
        this.tvLogin = tintTextView5;
        this.tvLoginOther = tintTextView6;
        this.tvTips = tintTextView7;
        this.tvWelcome = tintTextView8;
    }

    public static FragmentRecentLoginBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentRecentLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentRecentLoginBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentRecentLoginBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_recent_login);
    }

    @NonNull
    @Deprecated
    public static FragmentRecentLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentRecentLoginBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_recent_login, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentRecentLoginBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentRecentLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentRecentLoginBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_recent_login, null, false, obj);
    }
}
