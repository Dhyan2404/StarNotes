package com.sunia.HTREnginev2;

import com.google.android.play.integrity.internal.AbstractC5558f;

/* loaded from: classes6.dex */
public final class ryo extends AbstractC5558f {

    /* renamed from: a */
    public final int f83630a;

    /* renamed from: b */
    public final long f83631b;

    public ryo(int i, long j) {
        this.f83630a = i;
        this.f83631b = j;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC5558f
    /* renamed from: a */
    public final int mo25738a() {
        return this.f83630a;
    }

    @Override // com.google.android.play.integrity.internal.AbstractC5558f
    /* renamed from: b */
    public final long mo25739b() {
        return this.f83631b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC5558f) {
            AbstractC5558f abstractC5558f = (AbstractC5558f) obj;
            if (this.f83630a == abstractC5558f.mo25738a() && this.f83631b == abstractC5558f.mo25739b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f83630a ^ 1000003;
        long j = this.f83631b;
        return ((int) (j ^ (j >>> 32))) ^ (i * 1000003);
    }

    public final String toString() {
        return "EventRecord{eventType=" + this.f83630a + ", eventTimestamp=" + this.f83631b + "}";
    }
}
