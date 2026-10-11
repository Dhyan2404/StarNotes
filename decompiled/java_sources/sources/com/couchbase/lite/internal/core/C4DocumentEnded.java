package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.motion.MotionUtils;
import kotlinx.coroutines.CoroutineContextKt;

/* loaded from: classes4.dex */
public final class C4DocumentEnded {

    @Nullable
    public final String collection;

    @Nullable
    public final String docId;
    public final int errorCode;
    public final int errorDomain;
    public final int errorInternalInfo;
    public final boolean errorIsTransient;
    public final int flags;

    @Nullable
    public final String revId;

    @Nullable
    public final String scope;
    public final long sequence;
    public final long token;

    public C4DocumentEnded(long j, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, int i, long j2, int i2, int i3, int i4, boolean z) {
        this.token = j;
        this.scope = str;
        this.collection = str2;
        this.docId = str3;
        this.revId = str4;
        this.flags = i;
        this.sequence = j2;
        this.errorDomain = i2;
        this.errorCode = i3;
        this.errorInternalInfo = i4;
        this.errorIsTransient = z;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public int getErrorDomain() {
        return this.errorDomain;
    }

    public int getErrorInfo() {
        return this.errorInternalInfo;
    }

    @NonNull
    public String toString() {
        return "C4DocumentEnded{" + this.token + ", " + this.docId + ", " + this.revId + ", 0x" + Integer.toHexString(this.flags) + CoroutineContextKt.f98133a + this.errorDomain + "#" + this.errorCode + MotionUtils.f31761c + this.errorInternalInfo + "):" + this.errorIsTransient + "}";
    }
}
