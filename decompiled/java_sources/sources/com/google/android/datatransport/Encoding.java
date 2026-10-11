package com.google.android.datatransport;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public final class Encoding {

    /* renamed from: a */
    public final String f21779a;

    public Encoding(@NonNull String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f21779a = str;
    }

    /* renamed from: of */
    public static Encoding m17394of(@NonNull String str) {
        return new Encoding(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Encoding) {
            return this.f21779a.equals(((Encoding) obj).f21779a);
        }
        return false;
    }

    public String getName() {
        return this.f21779a;
    }

    public int hashCode() {
        return this.f21779a.hashCode() ^ 1000003;
    }

    @NonNull
    public String toString() {
        return "Encoding{name=\"" + this.f21779a + "\"}";
    }
}
