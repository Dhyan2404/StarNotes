package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import com.google.common.base.Charsets;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public final class DefaultContentMetadata implements ContentMetadata {
    public static final DefaultContentMetadata EMPTY = new DefaultContentMetadata(Collections.emptyMap());

    /* renamed from: a */
    public int f28229a;

    /* renamed from: b */
    public final Map<String, byte[]> f28230b;

    public DefaultContentMetadata() {
        this(Collections.emptyMap());
    }

    /* renamed from: a */
    public static void m21388a(HashMap<String, byte[]> hashMap, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), m21390c(entry.getValue()));
        }
    }

    /* renamed from: b */
    public static Map<String, byte[]> m21389b(Map<String, byte[]> map, ContentMetadataMutations contentMetadataMutations) {
        HashMap hashMap = new HashMap(map);
        m21392e(hashMap, contentMetadataMutations.getRemovedValues());
        m21388a(hashMap, contentMetadataMutations.getEditedValues());
        return hashMap;
    }

    /* renamed from: c */
    public static byte[] m21390c(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(Charsets.UTF_8);
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public static boolean m21391d(Map<String, byte[]> map, Map<String, byte[]> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public static void m21392e(HashMap<String, byte[]> hashMap, List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            hashMap.remove(list.get(i));
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.ContentMetadata
    public final boolean contains(String str) {
        return this.f28230b.containsKey(str);
    }

    public DefaultContentMetadata copyWithMutationsApplied(ContentMetadataMutations contentMetadataMutations) {
        Map<String, byte[]> m21389b = m21389b(this.f28230b, contentMetadataMutations);
        return m21391d(this.f28230b, m21389b) ? this : new DefaultContentMetadata(m21389b);
    }

    public Set<Map.Entry<String, byte[]>> entrySet() {
        return this.f28230b.entrySet();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultContentMetadata.class != obj.getClass()) {
            return false;
        }
        return m21391d(this.f28230b, ((DefaultContentMetadata) obj).f28230b);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.ContentMetadata
    @Nullable
    public final byte[] get(String str, @Nullable byte[] bArr) {
        byte[] bArr2 = this.f28230b.get(str);
        return bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : bArr;
    }

    public int hashCode() {
        if (this.f28229a == 0) {
            int i = 0;
            for (Map.Entry<String, byte[]> entry : this.f28230b.entrySet()) {
                i += Arrays.hashCode(entry.getValue()) ^ entry.getKey().hashCode();
            }
            this.f28229a = i;
        }
        return this.f28229a;
    }

    public DefaultContentMetadata(Map<String, byte[]> map) {
        this.f28230b = Collections.unmodifiableMap(map);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.ContentMetadata
    @Nullable
    public final String get(String str, @Nullable String str2) {
        byte[] bArr = this.f28230b.get(str);
        return bArr != null ? new String(bArr, Charsets.UTF_8) : str2;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.ContentMetadata
    public final long get(String str, long j) {
        byte[] bArr = this.f28230b.get(str);
        return bArr != null ? ByteBuffer.wrap(bArr).getLong() : j;
    }
}
