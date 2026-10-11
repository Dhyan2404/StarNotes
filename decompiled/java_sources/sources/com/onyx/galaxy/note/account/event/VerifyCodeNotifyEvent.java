package com.onyx.galaxy.note.account.event;

import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000b\u001a\u00020\nHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/event/VerifyCodeNotifyEvent;", "", "", "component1", "", "component2", "key", "leftTime", "copy", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getKey", "()Ljava/lang/String;", "b", "J", "getLeftTime", "()J", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;J)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final /* data */ class VerifyCodeNotifyEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final String key;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    public final long leftTime;

    public VerifyCodeNotifyEvent(@NotNull String key, long j) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.key = key;
        this.leftTime = j;
    }

    public static /* synthetic */ VerifyCodeNotifyEvent copy$default(VerifyCodeNotifyEvent verifyCodeNotifyEvent, String str, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = verifyCodeNotifyEvent.key;
        }
        if ((i & 2) != 0) {
            j = verifyCodeNotifyEvent.leftTime;
        }
        return verifyCodeNotifyEvent.copy(str, j);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    /* renamed from: component2, reason: from getter */
    public final long getLeftTime() {
        return this.leftTime;
    }

    @NotNull
    public final VerifyCodeNotifyEvent copy(@NotNull String key, long leftTime) {
        Intrinsics.checkNotNullParameter(key, "key");
        return new VerifyCodeNotifyEvent(key, leftTime);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VerifyCodeNotifyEvent)) {
            return false;
        }
        VerifyCodeNotifyEvent verifyCodeNotifyEvent = (VerifyCodeNotifyEvent) other;
        return Intrinsics.areEqual(this.key, verifyCodeNotifyEvent.key) && this.leftTime == verifyCodeNotifyEvent.leftTime;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final long getLeftTime() {
        return this.leftTime;
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + Long.hashCode(this.leftTime);
    }

    @NotNull
    public String toString() {
        return "VerifyCodeNotifyEvent(key=" + this.key + ", leftTime=" + this.leftTime + ')';
    }
}
