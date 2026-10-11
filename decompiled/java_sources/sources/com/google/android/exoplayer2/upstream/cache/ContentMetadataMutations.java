package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.Assertions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes5.dex */
public class ContentMetadataMutations {

    /* renamed from: a */
    public final Map<String, Object> f28227a = new HashMap();

    /* renamed from: b */
    public final List<String> f28228b = new ArrayList();

    public static ContentMetadataMutations setContentLength(ContentMetadataMutations contentMetadataMutations, long j) {
        return contentMetadataMutations.set(ContentMetadata.KEY_CONTENT_LENGTH, j);
    }

    public static ContentMetadataMutations setRedirectedUri(ContentMetadataMutations contentMetadataMutations, @Nullable Uri uri) {
        return uri == null ? contentMetadataMutations.remove(ContentMetadata.KEY_REDIRECTED_URI) : contentMetadataMutations.set(ContentMetadata.KEY_REDIRECTED_URI, uri.toString());
    }

    /* renamed from: a */
    public final ContentMetadataMutations m21387a(String str, Object obj) {
        this.f28227a.put((String) Assertions.checkNotNull(str), Assertions.checkNotNull(obj));
        this.f28228b.remove(str);
        return this;
    }

    public Map<String, Object> getEditedValues() {
        HashMap hashMap = new HashMap(this.f28227a);
        for (Map.Entry entry : hashMap.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public List<String> getRemovedValues() {
        return Collections.unmodifiableList(new ArrayList(this.f28228b));
    }

    public ContentMetadataMutations remove(String str) {
        this.f28228b.add(str);
        this.f28227a.remove(str);
        return this;
    }

    public ContentMetadataMutations set(String str, String str2) {
        return m21387a(str, str2);
    }

    public ContentMetadataMutations set(String str, long j) {
        return m21387a(str, Long.valueOf(j));
    }

    public ContentMetadataMutations set(String str, byte[] bArr) {
        return m21387a(str, Arrays.copyOf(bArr, bArr.length));
    }
}
