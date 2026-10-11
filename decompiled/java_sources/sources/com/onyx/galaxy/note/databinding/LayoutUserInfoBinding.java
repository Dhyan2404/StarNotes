package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCardView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;
import de.hdodenhof.circleimageview.CircleImageView;

/* loaded from: classes9.dex */
public abstract class LayoutUserInfoBinding extends ViewDataBinding {

    @NonNull
    public final TintLinearLayout accountIdLayout;

    @NonNull
    public final TintTextView accountIdText;

    @NonNull
    public final TintTextView accountInfoText;

    @NonNull
    public final TintLinearLayout accountLayout;

    @NonNull
    public final CircleImageView avatarImage;

    @NonNull
    public final TintLinearLayout avatarLayout;

    @NonNull
    public final TintCardView cardList;

    @NonNull
    public final TintImageView copyButton;

    @NonNull
    public final TintLinearLayout emailLayout;

    @NonNull
    public final TintTextView emailText;

    @NonNull
    public final TintLinearLayout huaweiLayout;

    @NonNull
    public final TintTextView huaweiText;

    @Bindable
    protected AccountCenterViewModel mViewModel;

    @NonNull
    public final TintLinearLayout nicknameLayout;

    @NonNull
    public final TintTextView nicknameText;

    @NonNull
    public final TintLinearLayout passwordLayout;

    @NonNull
    public final TintLinearLayout passwordSetLayout;

    @NonNull
    public final TintTextView passwordText;

    @NonNull
    public final TintTextView personalInfoText;

    @NonNull
    public final TintLinearLayout personalLayout;

    @NonNull
    public final TintLinearLayout phoneLayout;

    @NonNull
    public final TintTextView phoneText;

    @NonNull
    public final TintView vEmailDivider;

    @NonNull
    public final TintView vPhoneDivider;

    @NonNull
    public final TintView vWechatDivider;

    @NonNull
    public final TintLinearLayout wechatLayout;

    @NonNull
    public final TintTextView wechatText;

    public LayoutUserInfoBinding(Object obj, View view, int i, TintLinearLayout tintLinearLayout, TintTextView tintTextView, TintTextView tintTextView2, TintLinearLayout tintLinearLayout2, CircleImageView circleImageView, TintLinearLayout tintLinearLayout3, TintCardView tintCardView, TintImageView tintImageView, TintLinearLayout tintLinearLayout4, TintTextView tintTextView3, TintLinearLayout tintLinearLayout5, TintTextView tintTextView4, TintLinearLayout tintLinearLayout6, TintTextView tintTextView5, TintLinearLayout tintLinearLayout7, TintLinearLayout tintLinearLayout8, TintTextView tintTextView6, TintTextView tintTextView7, TintLinearLayout tintLinearLayout9, TintLinearLayout tintLinearLayout10, TintTextView tintTextView8, TintView tintView, TintView tintView2, TintView tintView3, TintLinearLayout tintLinearLayout11, TintTextView tintTextView9) {
        super(obj, view, i);
        this.accountIdLayout = tintLinearLayout;
        this.accountIdText = tintTextView;
        this.accountInfoText = tintTextView2;
        this.accountLayout = tintLinearLayout2;
        this.avatarImage = circleImageView;
        this.avatarLayout = tintLinearLayout3;
        this.cardList = tintCardView;
        this.copyButton = tintImageView;
        this.emailLayout = tintLinearLayout4;
        this.emailText = tintTextView3;
        this.huaweiLayout = tintLinearLayout5;
        this.huaweiText = tintTextView4;
        this.nicknameLayout = tintLinearLayout6;
        this.nicknameText = tintTextView5;
        this.passwordLayout = tintLinearLayout7;
        this.passwordSetLayout = tintLinearLayout8;
        this.passwordText = tintTextView6;
        this.personalInfoText = tintTextView7;
        this.personalLayout = tintLinearLayout9;
        this.phoneLayout = tintLinearLayout10;
        this.phoneText = tintTextView8;
        this.vEmailDivider = tintView;
        this.vPhoneDivider = tintView2;
        this.vWechatDivider = tintView3;
        this.wechatLayout = tintLinearLayout11;
        this.wechatText = tintTextView9;
    }

    public static LayoutUserInfoBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AccountCenterViewModel getViewModel() {
        return this.mViewModel;
    }

    public abstract void setViewModel(@Nullable AccountCenterViewModel accountCenterViewModel);

    @Deprecated
    public static LayoutUserInfoBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutUserInfoBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_user_info);
    }

    @NonNull
    @Deprecated
    public static LayoutUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutUserInfoBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_user_info, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutUserInfoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutUserInfoBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_user_info, null, false, obj);
    }
}
