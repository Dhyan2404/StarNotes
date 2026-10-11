package com.onyx.android.sdk.data.account.event;

import androidx.core.app.NotificationCompat;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/data/account/event/LocalAccountExpired;", "", "reason", "", NotificationCompat.CATEGORY_MESSAGE, "", "(ILjava/lang/String;)V", "getMsg", "()Ljava/lang/String;", "getReason", "()I", "component1", "component2", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final /* data */ class LocalAccountExpired {

    @NotNull
    private final String msg;
    private final int reason;

    /* JADX WARN: Multi-variable type inference failed */
    public LocalAccountExpired() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ LocalAccountExpired copy$default(LocalAccountExpired localAccountExpired, int i, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = localAccountExpired.reason;
        }
        if ((i2 & 2) != 0) {
            str = localAccountExpired.msg;
        }
        return localAccountExpired.copy(i, str);
    }

    /* renamed from: component1, reason: from getter */
    public final int getReason() {
        return this.reason;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final String getMsg() {
        return this.msg;
    }

    @NotNull
    public final LocalAccountExpired copy(int reason, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return new LocalAccountExpired(reason, msg);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LocalAccountExpired)) {
            return false;
        }
        LocalAccountExpired localAccountExpired = (LocalAccountExpired) other;
        return this.reason == localAccountExpired.reason && Intrinsics.areEqual(this.msg, localAccountExpired.msg);
    }

    @NotNull
    public final String getMsg() {
        return this.msg;
    }

    public final int getReason() {
        return this.reason;
    }

    public int hashCode() {
        return (Integer.hashCode(this.reason) * 31) + this.msg.hashCode();
    }

    @NotNull
    public String toString() {
        return "LocalAccountExpired(reason=" + this.reason + ", msg=" + this.msg + ')';
    }

    public LocalAccountExpired(int i, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.reason = i;
        this.msg = msg;
    }

    public /* synthetic */ LocalAccountExpired(int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? "" : str);
    }
}
