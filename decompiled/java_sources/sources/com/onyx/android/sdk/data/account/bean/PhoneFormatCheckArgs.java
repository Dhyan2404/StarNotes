package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/PhoneFormatCheckArgs;", "", "areaCode", "", "phone", "(Ljava/lang/String;Ljava/lang/String;)V", "getAreaCode", "()Ljava/lang/String;", "setAreaCode", "(Ljava/lang/String;)V", "getPhone", "setPhone", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PhoneFormatCheckArgs {

    @NotNull
    private String areaCode;

    @NotNull
    private String phone;

    public PhoneFormatCheckArgs(@NotNull String areaCode, @NotNull String phone) {
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        Intrinsics.checkNotNullParameter(phone, "phone");
        this.areaCode = areaCode;
        this.phone = phone;
    }

    public static /* synthetic */ PhoneFormatCheckArgs copy$default(PhoneFormatCheckArgs phoneFormatCheckArgs, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = phoneFormatCheckArgs.areaCode;
        }
        if ((i & 2) != 0) {
            str2 = phoneFormatCheckArgs.phone;
        }
        return phoneFormatCheckArgs.copy(str, str2);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getAreaCode() {
        return this.areaCode;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getPhone() {
        return this.phone;
    }

    @NotNull
    public final PhoneFormatCheckArgs copy(@NotNull String areaCode, @NotNull String phone) {
        Intrinsics.checkNotNullParameter(areaCode, "areaCode");
        Intrinsics.checkNotNullParameter(phone, "phone");
        return new PhoneFormatCheckArgs(areaCode, phone);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PhoneFormatCheckArgs)) {
            return false;
        }
        PhoneFormatCheckArgs phoneFormatCheckArgs = (PhoneFormatCheckArgs) other;
        return Intrinsics.areEqual(this.areaCode, phoneFormatCheckArgs.areaCode) && Intrinsics.areEqual(this.phone, phoneFormatCheckArgs.phone);
    }

    @NotNull
    public final String getAreaCode() {
        return this.areaCode;
    }

    @NotNull
    public final String getPhone() {
        return this.phone;
    }

    public int hashCode() {
        return (this.areaCode.hashCode() * 31) + this.phone.hashCode();
    }

    public final void setAreaCode(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.areaCode = str;
    }

    public final void setPhone(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.phone = str;
    }

    @NotNull
    public String toString() {
        return "PhoneFormatCheckArgs(areaCode=" + this.areaCode + ", phone=" + this.phone + ')';
    }
}
