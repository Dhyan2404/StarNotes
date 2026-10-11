package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.VerifyCodeViewModel;

/* loaded from: classes9.dex */
public class FragmentLogoffByPhoneBindingImpl extends FragmentLogoffByPhoneBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56719v0 = null;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56720w0;

    /* renamed from: q0 */
    public InverseBindingListener f56721q0;

    /* renamed from: t0 */
    public InverseBindingListener f56722t0;

    /* renamed from: u0 */
    public long f56723u0;

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentLogoffByPhoneBindingImpl$a */
    /* loaded from: classes9.dex */
    public class C11679a implements InverseBindingListener {
        public C11679a() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentLogoffByPhoneBindingImpl.this.phoneEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentLogoffByPhoneBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> socialAccount = verifyCodeViewModel.getSocialAccount();
                if (socialAccount != null) {
                    socialAccount.setValue(textString);
                }
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.databinding.FragmentLogoffByPhoneBindingImpl$b */
    /* loaded from: classes9.dex */
    public class C11680b implements InverseBindingListener {
        public C11680b() {
        }

        @Override // androidx.databinding.InverseBindingListener
        public void onChange() {
            String textString = TextViewBindingAdapter.getTextString(FragmentLogoffByPhoneBindingImpl.this.verifyCodeEdit);
            VerifyCodeViewModel verifyCodeViewModel = FragmentLogoffByPhoneBindingImpl.this.mVerifyCodeViewModel;
            if (verifyCodeViewModel != null) {
                MutableLiveData<String> verifyCode = verifyCodeViewModel.getVerifyCode();
                if (verifyCode != null) {
                    verifyCode.setValue(textString);
                }
            }
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56720w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_bar, 6);
        sparseIntArray.put(C10651R.id.back_button, 7);
        sparseIntArray.put(C10651R.id.title_text, 8);
        sparseIntArray.put(C10651R.id.verify_layout, 9);
        sparseIntArray.put(C10651R.id.tab_layout, 10);
    }

    public FragmentLogoffByPhoneBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56719v0, f56720w0));
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00e5  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.databinding.FragmentLogoffByPhoneBindingImpl.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56723u0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56723u0 = 256L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return m45253x((LiveData) obj, i2);
            case 1:
                return m45247r((VerifyCodeViewModel) obj, i2);
            case 2:
                return m45251v((MutableLiveData) obj, i2);
            case 3:
                return m45252w((LiveData) obj, i2);
            case 4:
                return m45249t((LiveData) obj, i2);
            case 5:
                return m45250u((MutableLiveData) obj, i2);
            case 6:
                return m45248s((LiveData) obj, i2);
            case 7:
                return m45254y((MutableLiveData) obj, i2);
            default:
                return false;
        }
    }

    /* renamed from: r */
    public final boolean m45247r(VerifyCodeViewModel verifyCodeViewModel, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56723u0 |= 2;
        }
        return true;
    }

    /* renamed from: s */
    public final boolean m45248s(LiveData<Integer> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56723u0 |= 64;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (14 != i) {
            return false;
        }
        setVerifyCodeViewModel((VerifyCodeViewModel) obj);
        return true;
    }

    @Override // com.onyx.galaxy.note.databinding.FragmentLogoffByPhoneBinding
    public void setVerifyCodeViewModel(@Nullable VerifyCodeViewModel verifyCodeViewModel) {
        updateRegistration(1, verifyCodeViewModel);
        this.mVerifyCodeViewModel = verifyCodeViewModel;
        synchronized (this) {
            this.f56723u0 |= 2;
        }
        notifyPropertyChanged(14);
        super.requestRebind();
    }

    /* renamed from: t */
    public final boolean m45249t(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56723u0 |= 16;
        }
        return true;
    }

    /* renamed from: u */
    public final boolean m45250u(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56723u0 |= 32;
        }
        return true;
    }

    /* renamed from: v */
    public final boolean m45251v(MutableLiveData<String> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56723u0 |= 4;
        }
        return true;
    }

    /* renamed from: w */
    public final boolean m45252w(LiveData<Boolean> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56723u0 |= 8;
        }
        return true;
    }

    /* renamed from: x */
    public final boolean m45253x(LiveData<String> liveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56723u0 |= 1;
        }
        return true;
    }

    /* renamed from: y */
    public final boolean m45254y(MutableLiveData<Integer> mutableLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56723u0 |= 128;
        }
        return true;
    }

    public FragmentLogoffByPhoneBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 8, (TextView) objArr[1], (TintImageView) objArr[7], (TintTextView) objArr[5], (AppCompatEditText) objArr[2], (TintConstraintLayout) objArr[0], (TintTabLayoutView) objArr[10], (FrameLayout) objArr[6], (TintTextView) objArr[8], (TintTextView) objArr[4], (TintEditText) objArr[3], (LinearLayout) objArr[9]);
        this.f56721q0 = new C11679a();
        this.f56722t0 = new C11680b();
        this.f56723u0 = -1L;
        this.areaCodeText.setTag(null);
        this.nextButton.setTag(null);
        this.phoneEdit.setTag(null);
        this.rootLayout.setTag(null);
        this.verifyCodeButton.setTag(null);
        this.verifyCodeEdit.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
