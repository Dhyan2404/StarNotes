package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public class LayoutEmailVerifyItemBindingImpl extends LayoutEmailVerifyItemBinding {

    /* renamed from: w0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57336w0 = null;

    /* renamed from: x0 */
    @Nullable
    public static final SparseIntArray f57337x0 = null;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57338q0;

    /* renamed from: t0 */
    public InverseBindingListener f57339t0;

    /* renamed from: u0 */
    public InverseBindingListener f57340u0;

    /* renamed from: v0 */
    public long f57341v0;

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutEmailVerifyItemBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11695a implements InverseBindingListener {
        public C11695a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutEmailVerifyItemBindingImpl.this.emailEdit);
            VerifyCodeViewModel verifyCodeViewModel = LayoutEmailVerifyItemBindingImpl.this.mModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> socialAccount = verifyCodeViewModel.getSocialAccount();
                if (socialAccount != null) {
                    socialAccount.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.LayoutEmailVerifyItemBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11696b implements InverseBindingListener {
        public C11696b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(LayoutEmailVerifyItemBindingImpl.this.verifyCodeEdit);
            VerifyCodeViewModel verifyCodeViewModel = LayoutEmailVerifyItemBindingImpl.this.mModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> verifyCode = verifyCodeViewModel.getVerifyCode();
                if (verifyCode != null) {
                    verifyCode.setValue(textString);
                }
            }
        }
    }

    public LayoutEmailVerifyItemBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57336w0, f57337x0));
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0088  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.LayoutEmailVerifyItemBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57341v0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57341v0 = 64L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m45339r((VerifyCodeViewModel) obj, i2);
        }
        if (i == 1) {
            return m45341t((MutableLiveData) obj, i2);
        }
        if (i == 2) {
            return m45340s((MutableLiveData) obj, i2);
        }
        if (i == 3) {
            return m45342u((LiveData) obj, i2);
        }
        if (i == 4) {
            return m45343v((LiveData) obj, i2);
        }
        if (i != 5) {
            return false;
        }
        return m45344w((MutableLiveData) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45339r(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57341v0 |= 1;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45340s(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57341v0 |= 4;
        }
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.LayoutEmailVerifyItemBinding
    public void setModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(0, verifyCodeViewModel);
        this.mModel = verifyCodeViewModel;
        synchronized (this) {
            this.f57341v0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((VerifyCodeViewModel) obj);
        return true;
    }

    /* renamed from: t */
    public final boolean m45341t(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57341v0 |= 2;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45342u(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57341v0 |= 8;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45343v(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57341v0 |= 16;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45344w(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57341v0 |= 32;
        }
        return true;
    }

    public LayoutEmailVerifyItemBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 6, (TintEditText) objArr[1], (TintTextView) objArr[4], (TintTextView) objArr[3], (TintEditText) objArr[2]);
        this.f57339t0 = new C11695a();
        this.f57340u0 = new C11696b();
        this.f57341v0 = -1L;
        this.emailEdit.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57338q0 = linearLayout;
        linearLayout.setTag(null);
        this.nextButton.setTag(null);
        this.verifyCodeButton.setTag(null);
        this.verifyCodeEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
