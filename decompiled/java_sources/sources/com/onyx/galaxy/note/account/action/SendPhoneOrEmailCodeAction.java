package com.onyx.galaxy.note.account.action;

import android.content.Context;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.account.request.cloud.SendPhoneOrEmailCodeRequest;
import com.onyx.galaxy.note.C10651R;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/action/SendPhoneOrEmailCodeAction;", "Lcom/onyx/galaxy/note/account/action/SendVerifyCodeAction;", "", "verifiedData", "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "sendVerifyCode", "", "onNext", "", "j", "I", "loginType", "Landroid/content/Context;", "activityContext", "phoneOrEmail", "areaCode", "", "checkCurrentAccount", Constants.CONSTRUCTOR_NAME, "(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SendPhoneOrEmailCodeAction extends SendVerifyCodeAction {

    /* renamed from: j, reason: from kotlin metadata */
    public final int loginType;

    public /* synthetic */ SendPhoneOrEmailCodeAction(int i, Context context, String str, String str2, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, context, str, str2, (i2 & 16) != 0 ? false : z);
    }

    @Override // com.onyx.galaxy.note.account.action.SendVerifyCodeAction
    public void onNext() {
        if (this.loginType == 1) {
            super.onNext();
        } else {
            ToastUtils.show$default(ToastUtils.INSTANCE, C10651R.string.send_email_code_success, false, 2, (Object) null);
        }
    }

    @Override // com.onyx.galaxy.note.account.action.SendVerifyCodeAction
    @NotNull
    public ResultData<String> sendVerifyCode(@NotNull String verifiedData) throws Exception {
        Intrinsics.checkNotNullParameter(verifiedData, "verifiedData");
        SendPhoneOrEmailCodeRequest verifyData = new SendPhoneOrEmailCodeRequest(getPhoneOrEmail(), getAreaCode()).setVerifyData(verifiedData);
        verifyData.setClusterInfo(getClusterInfo());
        return verifyData.execute();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SendPhoneOrEmailCodeAction(int i, @NotNull Context activityContext, @NotNull String phoneOrEmail, @NotNull String areaCode, boolean z) {
        super(phoneOrEmail, areaCode, z);
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
        Intrinsics.checkNotNullParameter(phoneOrEmail, "phoneOrEmail");
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        this.loginType = i;
        setActivityContext(activityContext);
    }
}
