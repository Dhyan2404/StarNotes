package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/PhoneBindStateCheckArgs;", "", "phone", "", "(Ljava/lang/String;)V", "getPhone", "()Ljava/lang/String;", "setPhone", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class PhoneBindStateCheckArgs {

    @NotNull
    private String phone;

    public PhoneBindStateCheckArgs(@NotNull String phone) {
        Intrinsics.checkNotNullParameter(phone, "phone");
        this.phone = phone;
    }

    public static /* synthetic */ PhoneBindStateCheckArgs copy$default(PhoneBindStateCheckArgs phoneBindStateCheckArgs, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = phoneBindStateCheckArgs.phone;
        }
        return phoneBindStateCheckArgs.copy(str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getPhone() {
        return this.phone;
    }

    @NotNull
    public final PhoneBindStateCheckArgs copy(@NotNull String phone) {
        Intrinsics.checkNotNullParameter(phone, "phone");
        return new PhoneBindStateCheckArgs(phone);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PhoneBindStateCheckArgs) && Intrinsics.areEqual(this.phone, ((PhoneBindStateCheckArgs) other).phone);
    }

    @NotNull
    public final String getPhone() {
        return this.phone;
    }

    public int hashCode() {
        return this.phone.hashCode();
    }

    public final void setPhone(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.phone = str;
    }

    @NotNull
    public String toString() {
        return "PhoneBindStateCheckArgs(phone=" + this.phone + ')';
    }
}
