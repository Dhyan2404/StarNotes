package com.onyx.android.sdk.data.serverconvert.bean;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertAsyncResult;", "", "code", "", "ticket", "", "(ILjava/lang/String;)V", "getCode", "()I", "setCode", "(I)V", "getTicket", "()Ljava/lang/String;", "setTicket", "(Ljava/lang/String;)V", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class ConvertAsyncResult {
    private int code;

    @NotNull
    private String ticket;

    public ConvertAsyncResult(int i, @NotNull String ticket) {
        Intrinsics.checkNotNullParameter(ticket, "ticket");
        this.code = i;
        this.ticket = ticket;
    }

    public static /* synthetic */ ConvertAsyncResult copy$default(ConvertAsyncResult convertAsyncResult, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = convertAsyncResult.code;
        }
        if ((i2 & 2) != 0) {
            str = convertAsyncResult.ticket;
        }
        return convertAsyncResult.copy(i, str);
    }

    /* renamed from: component1, reason: from getter */
    public final int getCode() {
        return this.code;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getTicket() {
        return this.ticket;
    }

    @NotNull
    public final ConvertAsyncResult copy(int code, @NotNull String ticket) {
        Intrinsics.checkNotNullParameter(ticket, "ticket");
        return new ConvertAsyncResult(code, ticket);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConvertAsyncResult)) {
            return false;
        }
        ConvertAsyncResult convertAsyncResult = (ConvertAsyncResult) other;
        return this.code == convertAsyncResult.code && Intrinsics.areEqual(this.ticket, convertAsyncResult.ticket);
    }

    public final int getCode() {
        return this.code;
    }

    @NotNull
    public final String getTicket() {
        return this.ticket;
    }

    public int hashCode() {
        return (Integer.hashCode(this.code) * 31) + this.ticket.hashCode();
    }

    public final void setCode(int i) {
        this.code = i;
    }

    public final void setTicket(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.ticket = str;
    }

    @NotNull
    public String toString() {
        return "ConvertAsyncResult(code=" + this.code + ", ticket=" + this.ticket + ')';
    }
}
