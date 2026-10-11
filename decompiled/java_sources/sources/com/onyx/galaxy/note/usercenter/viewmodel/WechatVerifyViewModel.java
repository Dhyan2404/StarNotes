package com.onyx.galaxy.note.usercenter.viewmodel;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.bean.AccountVerifyPurpose;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.base.BaseViewModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b,\u0010-R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR$\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0004\u001a\u0004\b\u0017\u0010\u0006\"\u0004\b\u0018\u0010\bR%\u0010 \u001a\u0010\u0012\f\u0012\n \u001b*\u0004\u0018\u00010\u00020\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR%\u0010#\u001a\u0010\u0012\f\u0012\n \u001b*\u0004\u0018\u00010!0!0\u001a8\u0006¢\u0006\f\n\u0004\b\"\u0010\u001d\u001a\u0004\b#\u0010\u001fR\u001d\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00020$8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020!0$8\u0006¢\u0006\f\n\u0004\b*\u0010&\u001a\u0004\b+\u0010(¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/usercenter/viewmodel/WechatVerifyViewModel;", "Lcom/onyx/galaxy/note/common/base/BaseViewModel;", "", "i", Constants.STRING_SIG, "getVerifyType", "()Ljava/lang/String;", "setVerifyType", "(Ljava/lang/String;)V", "verifyType", "j", "getCode", "setCode", "code", C4921e.f26537n, "getState", "setState", "state", "l", "getOpenId", "setOpenId", "openId", "m", "getAccessToken", "setAccessToken", "accessToken", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", GoogleApiAvailabilityLight.f29016b, "Landroidx/lifecycle/MutableLiveData;", "getPurpose", "()Landroidx/lifecycle/MutableLiveData;", AccountVerifyPurpose.KEY_PURPOSE, "", C4921e.f26528e, "isVerifyFinished", "Landroidx/lifecycle/LiveData;", "p", "Landroidx/lifecycle/LiveData;", "getFragmentTitle", "()Landroidx/lifecycle/LiveData;", "fragmentTitle", "q", "isNextButtonEnable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class WechatVerifyViewModel extends BaseViewModel {

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public String verifyType;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public String code;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public String state;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public String openId;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public String accessToken;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<String> purpose;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final MutableLiveData<Boolean> isVerifyFinished;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final LiveData<String> fragmentTitle;

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final LiveData<Boolean> isNextButtonEnable;

    public WechatVerifyViewModel() {
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>("none");
        this.purpose = mutableLiveData;
        MutableLiveData<Boolean> mutableLiveData2 = new MutableLiveData<>(Boolean.FALSE);
        this.isVerifyFinished = mutableLiveData2;
        this.fragmentTitle = Transformations.map(mutableLiveData, new Function1<String, String>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.WechatVerifyViewModel$fragmentTitle$1
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(String str) {
                if (str != null) {
                    switch (str.hashCode()) {
                        case -840745386:
                            if (str.equals("unbind")) {
                                return ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_wechat_unbind);
                            }
                            break;
                        case 3023933:
                            if (str.equals("bind")) {
                                return ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_wechat_bind);
                            }
                            break;
                        case 949122880:
                            if (str.equals("security")) {
                                return ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_wechat_security);
                            }
                            break;
                        case 1557372922:
                            if (str.equals("destroy")) {
                                return ResManager.INSTANCE.getStringSafely(C10651R.string.user_title_wechat_logoff);
                            }
                            break;
                    }
                }
                return "";
            }
        });
        this.isNextButtonEnable = Transformations.map(mutableLiveData2, new Function1<Boolean, Boolean>() { // from class: com.onyx.galaxy.note.usercenter.viewmodel.WechatVerifyViewModel$isNextButtonEnable$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(Boolean bool) {
                return Boolean.valueOf(!bool.booleanValue());
            }
        });
    }

    @Nullable
    public final String getAccessToken() {
        return this.accessToken;
    }

    @Nullable
    public final String getCode() {
        return this.code;
    }

    @NotNull
    public final LiveData<String> getFragmentTitle() {
        return this.fragmentTitle;
    }

    @Nullable
    public final String getOpenId() {
        return this.openId;
    }

    @NotNull
    public final MutableLiveData<String> getPurpose() {
        return this.purpose;
    }

    @Nullable
    public final String getState() {
        return this.state;
    }

    @Nullable
    public final String getVerifyType() {
        return this.verifyType;
    }

    @NotNull
    public final LiveData<Boolean> isNextButtonEnable() {
        return this.isNextButtonEnable;
    }

    @NotNull
    public final MutableLiveData<Boolean> isVerifyFinished() {
        return this.isVerifyFinished;
    }

    public final void setAccessToken(@Nullable String str) {
        this.accessToken = str;
    }

    public final void setCode(@Nullable String str) {
        this.code = str;
    }

    public final void setOpenId(@Nullable String str) {
        this.openId = str;
    }

    public final void setState(@Nullable String str) {
        this.state = str;
    }

    public final void setVerifyType(@Nullable String str) {
        this.verifyType = str;
    }
}
