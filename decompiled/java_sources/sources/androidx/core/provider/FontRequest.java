package androidx.core.provider;

import android.util.Base64;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.util.List;

/* loaded from: classes3.dex */
public final class FontRequest {

    /* renamed from: a */
    public final String f5558a;

    /* renamed from: b */
    public final String f5559b;

    /* renamed from: c */
    public final String f5560c;

    /* renamed from: d */
    public final List<List<byte[]>> f5561d;

    /* renamed from: e */
    public final int f5562e;

    /* renamed from: f */
    public final String f5563f;

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull List<List<byte[]>> list) {
        this.f5558a = (String) Preconditions.checkNotNull(str);
        this.f5559b = (String) Preconditions.checkNotNull(str2);
        this.f5560c = (String) Preconditions.checkNotNull(str3);
        this.f5561d = (List) Preconditions.checkNotNull(list);
        this.f5562e = 0;
        this.f5563f = m3159a(str, str2, str3);
    }

    /* renamed from: a */
    public final String m3159a(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* renamed from: b */
    public String m3160b() {
        return this.f5563f;
    }

    @Nullable
    public List<List<byte[]>> getCertificates() {
        return this.f5561d;
    }

    @ArrayRes
    public int getCertificatesArrayResId() {
        return this.f5562e;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public String getIdentifier() {
        return this.f5563f;
    }

    @NonNull
    public String getProviderAuthority() {
        return this.f5558a;
    }

    @NonNull
    public String getProviderPackage() {
        return this.f5559b;
    }

    @NonNull
    public String getQuery() {
        return this.f5560c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f5558a + ", mProviderPackage: " + this.f5559b + ", mQuery: " + this.f5560c + ", mCertificates:");
        for (int i = 0; i < this.f5561d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f5561d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f5562e);
        return sb.toString();
    }

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @ArrayRes int i) {
        this.f5558a = (String) Preconditions.checkNotNull(str);
        this.f5559b = (String) Preconditions.checkNotNull(str2);
        this.f5560c = (String) Preconditions.checkNotNull(str3);
        this.f5561d = null;
        Preconditions.checkArgument(i != 0);
        this.f5562e = i;
        this.f5563f = m3159a(str, str2, str3);
    }
}
