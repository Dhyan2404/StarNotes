package androidx.core.content;

import android.content.LocusId;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public final class LocusIdCompat {

    /* renamed from: a */
    public final String f5273a;

    /* renamed from: b */
    public final LocusId f5274b;

    @RequiresApi(29)
    /* renamed from: androidx.core.content.LocusIdCompat$a */
    /* loaded from: classes3.dex */
    public static class C0637a {
        @NonNull
        /* renamed from: a */
        public static LocusId m2799a(@NonNull String str) {
            return new LocusId(str);
        }

        @NonNull
        /* renamed from: b */
        public static String m2800b(@NonNull LocusId locusId) {
            return locusId.getId();
        }
    }

    public LocusIdCompat(@NonNull String str) {
        this.f5273a = (String) Preconditions.checkStringNotEmpty(str, "id cannot be empty");
        this.f5274b = C0637a.m2799a(str);
    }

    @NonNull
    @RequiresApi(29)
    public static LocusIdCompat toLocusIdCompat(@NonNull LocusId locusId) {
        Preconditions.checkNotNull(locusId, "locusId cannot be null");
        return new LocusIdCompat((String) Preconditions.checkStringNotEmpty(C0637a.m2800b(locusId), "id cannot be empty"));
    }

    @NonNull
    /* renamed from: a */
    public final String m2798a() {
        return this.f5273a.length() + "_chars";
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocusIdCompat.class != obj.getClass()) {
            return false;
        }
        LocusIdCompat locusIdCompat = (LocusIdCompat) obj;
        String str = this.f5273a;
        return str == null ? locusIdCompat.f5273a == null : str.equals(locusIdCompat.f5273a);
    }

    @NonNull
    public String getId() {
        return this.f5273a;
    }

    public int hashCode() {
        String str = this.f5273a;
        return 31 + (str == null ? 0 : str.hashCode());
    }

    @NonNull
    @RequiresApi(29)
    public LocusId toLocusId() {
        return this.f5274b;
    }

    @NonNull
    public String toString() {
        return "LocusIdCompat[" + m2798a() + IteratorUtils.f104924b;
    }
}
