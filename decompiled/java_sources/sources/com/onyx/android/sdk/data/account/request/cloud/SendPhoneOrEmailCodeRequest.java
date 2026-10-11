package com.onyx.android.sdk.data.account.request.cloud;

import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.account.CloudAccountService;
import com.onyx.android.sdk.data.account.bean.ResultData;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.common.error.ErrorType;
import com.onyx.android.sdk.data.utils.JSONUtils;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\bH\u0016J$\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b0\nj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b`\fH\u0002J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/request/cloud/SendPhoneOrEmailCodeRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "phoneOrEmail", "", "areaCode", "(Ljava/lang/String;Ljava/lang/String;)V", "verifyData", "execute", "Lcom/onyx/android/sdk/data/account/bean/ResultData;", "generateParams", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "setVerifyData", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SendPhoneOrEmailCodeRequest extends BaseCloudRequest {

    @NotNull
    private final String areaCode;

    @NotNull
    private final String phoneOrEmail;

    @Nullable
    private String verifyData;

    public SendPhoneOrEmailCodeRequest(@NotNull String phoneOrEmail, @NotNull String areaCode) {
        Intrinsics.checkNotNullParameter(phoneOrEmail, "phoneOrEmail");
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        this.phoneOrEmail = phoneOrEmail;
        this.areaCode = areaCode;
    }

    private final HashMap<String, Object> generateParams() {
        boolean contains;
        HashMap<String, Object> hashMap = new HashMap<>();
        contains = StringsKt__StringsKt.contains((CharSequence) this.phoneOrEmail, '@', true);
        if (contains) {
            hashMap.put("email", this.phoneOrEmail);
        } else {
            hashMap.put("areaCode", this.areaCode);
            hashMap.put("phone", this.phoneOrEmail);
        }
        hashMap.put("scene", "nc_register_h5");
        hashMap.put("verify", JSONUtils.INSTANCE.parseObject(this.verifyData));
        return hashMap;
    }

    @NotNull
    public final SendPhoneOrEmailCodeRequest setVerifyData(@Nullable String verifyData) {
        this.verifyData = verifyData;
        return this;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Object execute() throws Exception {
        ResultData resultData = (ResultData) executeCall(((CloudAccountService) ServiceFactory.INSTANCE.getOnyxApiV2Service(CloudAccountService.class)).sendVerifyCode(generateParams())).body();
        if (!resultData.isSuccessful()) {
            Debug.INSTANCE.m32059w(SendPhoneOrEmailCodeRequest.class, "send code fail with security verify data:" + resultData, new Object[0]);
            OnyxException.Companion companion = OnyxException.INSTANCE;
            String message = resultData.getMessage();
            if (message == null) {
                message = "";
            }
            throw companion.m31893of(ErrorType.REQUEST_FAIL, message, resultData.getCode());
        }
        Debug.INSTANCE.m32052i(SendPhoneOrEmailCodeRequest.class, "execute success", new Object[0]);
        Intrinsics.checkNotNull(resultData);
        return resultData;
    }
}
