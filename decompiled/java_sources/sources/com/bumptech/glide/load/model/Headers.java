package com.bumptech.glide.load.model;

import com.bumptech.glide.load.model.LazyHeaders;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public interface Headers {

    @Deprecated
    public static final Headers NONE = new C1974a();
    public static final Headers DEFAULT = new LazyHeaders.Builder().build();

    /* renamed from: com.bumptech.glide.load.model.Headers$a */
    /* loaded from: classes3.dex */
    public class C1974a implements Headers {
        @Override // com.bumptech.glide.load.model.Headers
        public Map<String, String> getHeaders() {
            return Collections.emptyMap();
        }
    }

    Map<String, String> getHeaders();
}
