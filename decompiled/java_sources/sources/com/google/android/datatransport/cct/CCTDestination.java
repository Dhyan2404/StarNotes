package com.google.android.datatransport.cct;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedDestination;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class CCTDestination implements EncodedDestination {
    public static final CCTDestination INSTANCE;
    public static final CCTDestination LEGACY_INSTANCE;

    /* renamed from: c */
    public static final String f21780c = "cct";

    /* renamed from: d */
    public static final String f21781d;

    /* renamed from: e */
    public static final String f21782e;

    /* renamed from: f */
    public static final String f21783f;

    /* renamed from: g */
    public static final String f21784g = "1$";

    /* renamed from: h */
    public static final String f21785h = "\\";

    /* renamed from: i */
    public static final Set<Encoding> f21786i;

    /* renamed from: a */
    @NonNull
    public final String f21787a;

    /* renamed from: b */
    @Nullable
    public final String f21788b;

    static {
        String m17397a = StringMerger.m17397a("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f21781d = m17397a;
        String m17397a2 = StringMerger.m17397a("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        f21782e = m17397a2;
        String m17397a3 = StringMerger.m17397a("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f21783f = m17397a3;
        f21786i = Collections.unmodifiableSet(new HashSet(Arrays.asList(Encoding.m17394of("proto"), Encoding.m17394of("json"))));
        INSTANCE = new CCTDestination(m17397a, null);
        LEGACY_INSTANCE = new CCTDestination(m17397a2, m17397a3);
    }

    public CCTDestination(@NonNull String str, @Nullable String str2) {
        this.f21787a = str;
        this.f21788b = str2;
    }

    @NonNull
    /* renamed from: a */
    public static String m17395a(@NonNull byte[] bArr) {
        return new String(bArr, Charset.forName("UTF-8"));
    }

    @NonNull
    /* renamed from: b */
    public static byte[] m17396b(@NonNull String str) {
        return str.getBytes(Charset.forName("UTF-8"));
    }

    @NonNull
    public static CCTDestination fromByteArray(@NonNull byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith(f21784g)) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
        if (split.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = split[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = split[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new CCTDestination(str2, str3);
    }

    @Nullable
    public byte[] asByteArray() {
        String str = this.f21788b;
        if (str == null && this.f21787a == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = f21784g;
        objArr[1] = this.f21787a;
        objArr[2] = "\\";
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }

    @Nullable
    public String getAPIKey() {
        return this.f21788b;
    }

    @NonNull
    public String getEndPoint() {
        return this.f21787a;
    }

    @Override // com.google.android.datatransport.runtime.Destination
    @Nullable
    public byte[] getExtras() {
        return asByteArray();
    }

    @Override // com.google.android.datatransport.runtime.Destination
    @NonNull
    public String getName() {
        return "cct";
    }

    @Override // com.google.android.datatransport.runtime.EncodedDestination
    public Set<Encoding> getSupportedEncodings() {
        return f21786i;
    }
}
