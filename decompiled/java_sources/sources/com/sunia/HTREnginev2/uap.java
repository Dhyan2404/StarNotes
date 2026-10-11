package com.sunia.HTREnginev2;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes5.dex */
public final class uap {

    /* renamed from: a */
    public final Uri f86303a;

    public uap(Uri uri) {
        this.f86303a = uri;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof uap) {
            return Objects.equal(((uap) obj).f86303a, this.f86303a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f86303a);
    }
}
