package com.onyx.android.sdk.data.common.data;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/common/data/EncryptionType;", "", "()V", "FINGERPRINT", "", "GLOBAL_PASSWORD", "KEYGUARD", "KEYGUARD_FINGERPRINT", "NONE", "PRIVATE_PASSWORD", "isEncrypted", "", "type", "isGlobalPasswordType", "isPrivatePasswordType", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class EncryptionType {
    public static final int FINGERPRINT = 1;
    public static final int GLOBAL_PASSWORD = 4;

    @NotNull
    public static final EncryptionType INSTANCE = new EncryptionType();
    public static final int KEYGUARD = 2;
    public static final int KEYGUARD_FINGERPRINT = 5;
    public static final int NONE = 0;
    public static final int PRIVATE_PASSWORD = 3;

    private EncryptionType() {
    }

    public final boolean isEncrypted(int type) {
        return type != 0;
    }

    public final boolean isGlobalPasswordType(int type) {
        return type == 4;
    }

    public final boolean isPrivatePasswordType(int type) {
        return type == 3;
    }
}
