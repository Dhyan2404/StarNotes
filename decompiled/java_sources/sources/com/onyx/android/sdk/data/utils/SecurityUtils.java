package com.onyx.android.sdk.data.utils;

import com.blankj.utilcode.util.DeviceUtils;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/utils/SecurityUtils;", "", "()V", "KEY_USER_AGREE", "", "SP_KEY_ANDROID_ID", "androidIDOption", "Lcom/onyx/android/sdk/data/utils/StringOption;", "userAgreeOption", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "getAndroidId", "isUserAgreementPassed", "", "setUserAgreementPassed", "", "passed", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class SecurityUtils {

    @NotNull
    public static final SecurityUtils INSTANCE = new SecurityUtils();

    @NotNull
    private static final String KEY_USER_AGREE = "key_user_agree";

    @NotNull
    private static final String SP_KEY_ANDROID_ID = "sp_key_android_id";

    @NotNull
    private static final StringOption androidIDOption;

    @NotNull
    private static final BooleanOption userAgreeOption;

    static {
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        userAgreeOption = mMKVUtils.booleanOption(KEY_USER_AGREE, false);
        androidIDOption = mMKVUtils.stringOption(SP_KEY_ANDROID_ID, "");
    }

    private SecurityUtils() {
    }

    @NotNull
    public final String getAndroidId() {
        if (!isUserAgreementPassed()) {
            return "";
        }
        StringOption stringOption = androidIDOption;
        String str = stringOption.get();
        if (str == null || str.length() == 0) {
            str = DeviceUtils.getAndroidID();
            stringOption.put(str);
        }
        return str == null ? "" : str;
    }

    public final boolean isUserAgreementPassed() {
        return userAgreeOption.get();
    }

    public final void setUserAgreementPassed(boolean passed) {
        userAgreeOption.put(passed);
    }
}
