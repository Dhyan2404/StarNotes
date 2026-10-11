package com.onyx.android.sdk.auth.data;

import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\n\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0013\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0015\u0010\u000bJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R$\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/data/PasswordBean;", "", "", "isResetDeviceType", "", "getResetPwdPushAction", "a", Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "type", "", "b", "I", "getEncryptionType", "()I", "setEncryptionType", "(I)V", "encryptionType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "Companion", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PasswordBean {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    public static final int f40672c = -1;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String type;

    /* renamed from: b, reason: from kotlin metadata */
    public int encryptionType;

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/auth/data/PasswordBean$Companion;", "", "()V", "ALL", "", "getALL", "()I", "sdk-auth_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getALL() {
            return PasswordBean.f40672c;
        }

        public Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PasswordBean() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final int getEncryptionType() {
        return this.encryptionType;
    }

    @NotNull
    public final String getResetPwdPushAction() {
        String str = this.type;
        if (str == null) {
            return DevicePushAction.NOTE_PASSWORD_RESET;
        }
        int hashCode = str.hashCode();
        if (hashCode == -1335157162) {
            return str.equals("device") ? DevicePushAction.DEVICE_PASSWORD_RESET : DevicePushAction.NOTE_PASSWORD_RESET;
        }
        if (hashCode == 99640) {
            return !str.equals("doc") ? DevicePushAction.NOTE_PASSWORD_RESET : DevicePushAction.DOCUMENT_PASSWORD_RESET;
        }
        if (hashCode != 3387378) {
            return DevicePushAction.NOTE_PASSWORD_RESET;
        }
        str.equals("note");
        return DevicePushAction.NOTE_PASSWORD_RESET;
    }

    @Nullable
    public final String getType() {
        return this.type;
    }

    public final boolean isResetDeviceType() {
        return StringKt.safelyEquals(this.type, "device");
    }

    public final void setEncryptionType(int i) {
        this.encryptionType = i;
    }

    public final void setType(@Nullable String str) {
        this.type = str;
    }

    public PasswordBean(@Nullable String str) {
        this.type = str;
        this.encryptionType = f40672c;
    }

    public /* synthetic */ PasswordBean(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }
}
