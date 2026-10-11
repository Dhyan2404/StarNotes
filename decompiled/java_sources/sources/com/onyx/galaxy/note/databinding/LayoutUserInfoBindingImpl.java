package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.data.account.model.OnyxAccountModel;
import com.onyx.android.sdk.theme.widgets.TintCardView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountCenterViewModel;
import de.hdodenhof.circleimageview.CircleImageView;

/* loaded from: classes9.dex */
public class LayoutUserInfoBindingImpl extends LayoutUserInfoBinding {

    /* renamed from: C0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57515C0 = null;

    /* renamed from: D0 */
    @Nullable
    public static final SparseIntArray f57516D0;

    /* renamed from: A0 */
    public OnClickListenerImpl7 f57517A0;

    /* renamed from: B0 */
    public long f57518B0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57519q0;

    /* renamed from: t0 */
    public OnClickListenerImpl f57520t0;

    /* renamed from: u0 */
    public OnClickListenerImpl1 f57521u0;

    /* renamed from: v0 */
    public OnClickListenerImpl2 f57522v0;

    /* renamed from: w0 */
    public OnClickListenerImpl3 f57523w0;

    /* renamed from: x0 */
    public OnClickListenerImpl4 f57524x0;

    /* renamed from: y0 */
    public OnClickListenerImpl5 f57525y0;

    /* renamed from: z0 */
    public OnClickListenerImpl6 f57526z0;

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f57527e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57527e.bindOrUnbindHuawei(view);
        }

        public OnClickListenerImpl setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f57527e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl1 implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f57528e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57528e.changeAvatar(view);
        }

        public OnClickListenerImpl1 setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f57528e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl2 implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f57529e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57529e.bindOrUnbindWechat(view);
        }

        public OnClickListenerImpl2 setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f57529e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl3 implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f57530e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57530e.resetPassword(view);
        }

        public OnClickListenerImpl3 setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f57530e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl4 implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f57531e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57531e.copyAccountId(view);
        }

        public OnClickListenerImpl4 setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f57531e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl5 implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f57532e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57532e.bindOrUnbindEmail(view);
        }

        public OnClickListenerImpl5 setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f57532e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl6 implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f57533e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57533e.modifyNickname(view);
        }

        public OnClickListenerImpl6 setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f57533e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    /* loaded from: classes9.dex */
    public static class OnClickListenerImpl7 implements View.OnClickListener {

        /* renamed from: e */
        public AccountCenterViewModel f57534e;

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f57534e.bindOrUnbindPhone(view);
        }

        public OnClickListenerImpl7 setValue(AccountCenterViewModel accountCenterViewModel) {
            this.f57534e = accountCenterViewModel;
            if (accountCenterViewModel == null) {
                return null;
            }
            return this;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57516D0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.personal_info_text, 16);
        sparseIntArray.put(C10651R.id.personal_layout, 17);
        sparseIntArray.put(C10651R.id.copy_button, 18);
        sparseIntArray.put(C10651R.id.account_info_text, 19);
        sparseIntArray.put(C10651R.id.card_list, 20);
        sparseIntArray.put(C10651R.id.account_layout, 21);
        sparseIntArray.put(C10651R.id.v_phone_divider, 22);
        sparseIntArray.put(C10651R.id.v_email_divider, 23);
        sparseIntArray.put(C10651R.id.v_wechat_divider, 24);
        sparseIntArray.put(C10651R.id.password_set_layout, 25);
        sparseIntArray.put(C10651R.id.password_text, 26);
    }

    public LayoutUserInfoBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 27, f57515C0, f57516D0));
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.LayoutUserInfoBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57518B0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57518B0 = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45362s((MutableLiveData) obj, i2);
        }
        if (i != 1) {
            return false;
        }
        return m45361r((AccountCenterViewModel) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45361r(AccountCenterViewModel accountCenterViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57518B0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45362s(MutableLiveData<OnyxAccountModel> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57518B0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (16 != i) {
            return false;
        }
        setViewModel((AccountCenterViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutUserInfoBinding
    public void setViewModel(@Nullable AccountCenterViewModel accountCenterViewModel) {
        updateRegistration(1, accountCenterViewModel);
        this.mViewModel = accountCenterViewModel;
        synchronized (this) {
            this.f57518B0 |= 2;
        }
        notifyPropertyChanged(16);
        super.requestRebind();
    }

    public LayoutUserInfoBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 2, (TintLinearLayout) objArr[5], (TintTextView) objArr[6], (TintTextView) objArr[19], (TintLinearLayout) objArr[21], (CircleImageView) objArr[2], (TintLinearLayout) objArr[1], (TintCardView) objArr[20], (TintImageView) objArr[18], (TintLinearLayout) objArr[9], (TintTextView) objArr[10], (TintLinearLayout) objArr[13], (TintTextView) objArr[14], (TintLinearLayout) objArr[3], (TintTextView) objArr[4], (TintLinearLayout) objArr[15], (TintLinearLayout) objArr[25], (TintTextView) objArr[26], (TintTextView) objArr[16], (TintLinearLayout) objArr[17], (TintLinearLayout) objArr[7], (TintTextView) objArr[8], (TintView) objArr[23], (TintView) objArr[22], (TintView) objArr[24], (TintLinearLayout) objArr[11], (TintTextView) objArr[12]);
        this.f57518B0 = -1L;
        this.accountIdLayout.setTag(null);
        this.accountIdText.setTag(null);
        this.avatarImage.setTag(null);
        this.avatarLayout.setTag(null);
        this.emailLayout.setTag(null);
        this.emailText.setTag(null);
        this.huaweiLayout.setTag(null);
        this.huaweiText.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57519q0 = linearLayout;
        linearLayout.setTag(null);
        this.nicknameLayout.setTag(null);
        this.nicknameText.setTag(null);
        this.passwordLayout.setTag(null);
        this.phoneLayout.setTag(null);
        this.phoneText.setTag(null);
        this.wechatLayout.setTag(null);
        this.wechatText.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
