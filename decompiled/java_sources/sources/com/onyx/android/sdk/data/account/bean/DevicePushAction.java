package com.onyx.android.sdk.data.account.bean;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/DevicePushAction;", "", "()V", "DEVICE_PASSWORD_RESET", "", "DOCUMENT_PASSWORD_RESET", "LOCK_DEVICE", "NOTE_PASSWORD_RESET", "UNLOCK_DEVICE", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class DevicePushAction {

    @NotNull
    public static final String DEVICE_PASSWORD_RESET = "resetDevicePwd";

    @NotNull
    public static final String DOCUMENT_PASSWORD_RESET = "resetDocPwd";

    @NotNull
    public static final DevicePushAction INSTANCE = new DevicePushAction();

    @NotNull
    public static final String LOCK_DEVICE = "lock";

    @NotNull
    public static final String NOTE_PASSWORD_RESET = "resetNotePwd";

    @NotNull
    public static final String UNLOCK_DEVICE = "unlock";

    private DevicePushAction() {
    }
}
