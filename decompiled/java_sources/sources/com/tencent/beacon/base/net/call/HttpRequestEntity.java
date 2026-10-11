package com.tencent.beacon.base.net.call;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.beacon.base.net.BodyType;
import com.tencent.beacon.base.net.HttpMethod;
import java.util.HashMap;
import java.util.Map;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class HttpRequestEntity {
    private BodyType bodyType;
    private byte[] content;
    private final Map<String, String> formParams;
    private final Map<String, String> headers;
    private String json;
    private final HttpMethod method;
    private final String tag;
    private final String url;

    public /* synthetic */ HttpRequestEntity(HttpMethod httpMethod, String str, Map map, BodyType bodyType, String str2, Map map2, byte[] bArr, String str3, C14943d c14943d) {
        this(httpMethod, str, map, bodyType, str2, map2, bArr, str3);
    }

    public static C14938a builder() {
        return new C14938a();
    }

    public BodyType bodyType() {
        return this.bodyType;
    }

    public byte[] content() {
        return this.content;
    }

    public Map<String, String> formParams() {
        return this.formParams;
    }

    public Map<String, String> headers() {
        return this.headers;
    }

    public String json() {
        return this.json;
    }

    public HttpMethod method() {
        return this.method;
    }

    public String tag() {
        return this.tag;
    }

    public String toString() {
        return "HttpRequestEntity{url='" + this.url + Chars.QUOTE + ", method=" + this.method + ", headers=" + this.headers + ", formParams=" + this.formParams + ", bodyType=" + this.bodyType + ", json='" + this.json + Chars.QUOTE + ", tag='" + this.tag + Chars.QUOTE + '}';
    }

    public String url() {
        return this.url;
    }

    private HttpRequestEntity(HttpMethod httpMethod, String str, Map<String, String> map, BodyType bodyType, String str2, Map<String, String> map2, byte[] bArr, String str3) {
        this.method = httpMethod;
        this.url = str;
        this.headers = map;
        this.bodyType = bodyType;
        this.json = str2;
        this.formParams = map2;
        this.content = bArr;
        this.tag = str3;
    }

    /* renamed from: com.tencent.beacon.base.net.call.HttpRequestEntity$a */
    /* loaded from: classes10.dex */
    public static class C14938a {

        /* renamed from: a */
        private HttpMethod f92871a;

        /* renamed from: b */
        private String f92872b;

        /* renamed from: c */
        private String f92873c;

        /* renamed from: d */
        private Map<String, String> f92874d = new HashMap(3);

        /* renamed from: e */
        private Map<String, String> f92875e = new HashMap(3);

        /* renamed from: f */
        private String f92876f;

        /* renamed from: g */
        private BodyType f92877g;

        /* renamed from: h */
        private byte[] f92878h;

        /* renamed from: a */
        private void m59327a(BodyType bodyType) {
            if (this.f92877g == null) {
                this.f92877g = bodyType;
            }
            if (this.f92877g != bodyType) {
                throw new IllegalStateException("bodyType already set!");
            }
        }

        /* renamed from: b */
        public C14938a m59332b(@NonNull String str) {
            this.f92872b = str;
            return this;
        }

        /* renamed from: a */
        public C14938a m59328a(HttpMethod httpMethod) {
            this.f92871a = httpMethod;
            return this;
        }

        /* renamed from: a */
        public C14938a m59330a(@NonNull Map<String, String> map) {
            m59327a(BodyType.FORM);
            this.f92874d.putAll(map);
            return this;
        }

        /* renamed from: a */
        public C14938a m59329a(String str) {
            this.f92873c = str;
            return this;
        }

        /* renamed from: a */
        public HttpRequestEntity m59331a() {
            if (this.f92871a != null) {
                if (!TextUtils.isEmpty(this.f92872b)) {
                    BodyType bodyType = this.f92877g;
                    if (bodyType != null) {
                        int i = C14943d.f92893a[bodyType.ordinal()];
                        if (i != 1) {
                            if (i != 2) {
                                if (i == 3 && this.f92878h == null) {
                                    throw new NullPointerException("data request body == null");
                                }
                            } else if (this.f92874d.isEmpty()) {
                                throw new NullPointerException("form request body == null");
                            }
                        } else if (TextUtils.isEmpty(this.f92876f)) {
                            throw new NullPointerException("json request body == null");
                        }
                        return new HttpRequestEntity(this.f92871a, this.f92872b, this.f92875e, this.f92877g, this.f92876f, this.f92874d, this.f92878h, this.f92873c, null);
                    }
                    throw new NullPointerException("bodyType == null");
                }
                throw new NullPointerException("request url == null!");
            }
            throw new NullPointerException("request method == null");
        }
    }
}
