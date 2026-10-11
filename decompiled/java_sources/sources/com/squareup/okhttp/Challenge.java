package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;

/* loaded from: classes9.dex */
public final class Challenge {

    /* renamed from: a */
    public final String f63484a;

    /* renamed from: b */
    public final String f63485b;

    public Challenge(String str, String str2) {
        this.f63484a = str;
        this.f63485b = str2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Challenge) {
            Challenge challenge = (Challenge) obj;
            if (Util.equal(this.f63484a, challenge.f63484a) && Util.equal(this.f63485b, challenge.f63485b)) {
                return true;
            }
        }
        return false;
    }

    public String getRealm() {
        return this.f63485b;
    }

    public String getScheme() {
        return this.f63484a;
    }

    public int hashCode() {
        String str = this.f63485b;
        int hashCode = (899 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f63484a;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return this.f63484a + " realm=\"" + this.f63485b + "\"";
    }
}
