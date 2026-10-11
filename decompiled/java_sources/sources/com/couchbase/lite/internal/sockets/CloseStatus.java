package com.couchbase.lite.internal.sockets;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.utils.ClassUtils;

/* loaded from: classes4.dex */
public class CloseStatus {
    public final int code;
    public final int domain;

    @Nullable
    public final String message;

    public CloseStatus(int i, @Nullable String str) {
        this(0, i, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CloseStatus)) {
            return false;
        }
        CloseStatus closeStatus = (CloseStatus) obj;
        return this.domain == closeStatus.domain && this.code == closeStatus.code && ClassUtils.isEqual(this.message, closeStatus.message);
    }

    public int hashCode() {
        return ClassUtils.hash(Integer.valueOf(this.domain), Integer.valueOf(this.code), this.message);
    }

    @NonNull
    public String toString() {
        return "CloseStatus{" + this.domain + ":" + this.code + ", " + this.message + "}";
    }

    public CloseStatus(int i, int i2, @Nullable String str) {
        this.domain = i;
        this.code = i2;
        this.message = str;
    }
}
