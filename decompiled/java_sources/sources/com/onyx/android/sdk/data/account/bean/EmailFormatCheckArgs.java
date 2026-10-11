package com.onyx.android.sdk.data.account.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\u0004¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/bean/EmailFormatCheckArgs;", "", "email", "", "(Ljava/lang/String;)V", "getEmail", "()Ljava/lang/String;", "setEmail", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class EmailFormatCheckArgs {

    @NotNull
    private String email;

    public EmailFormatCheckArgs(@NotNull String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        this.email = email;
    }

    public static /* synthetic */ EmailFormatCheckArgs copy$default(EmailFormatCheckArgs emailFormatCheckArgs, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = emailFormatCheckArgs.email;
        }
        return emailFormatCheckArgs.copy(str);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    @NotNull
    public final EmailFormatCheckArgs copy(@NotNull String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        return new EmailFormatCheckArgs(email);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof EmailFormatCheckArgs) && Intrinsics.areEqual(this.email, ((EmailFormatCheckArgs) other).email);
    }

    @NotNull
    public final String getEmail() {
        return this.email;
    }

    public int hashCode() {
        return this.email.hashCode();
    }

    public final void setEmail(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.email = str;
    }

    @NotNull
    public String toString() {
        return "EmailFormatCheckArgs(email=" + this.email + ')';
    }
}
