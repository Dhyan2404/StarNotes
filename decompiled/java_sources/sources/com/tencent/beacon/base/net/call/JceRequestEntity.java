package com.tencent.beacon.base.net.call;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.tencent.beacon.base.net.C14937c;
import com.tencent.beacon.base.net.RequestType;
import com.tencent.beacon.base.net.p066b.C14935d;
import com.tencent.beacon.pack.AbstractJceStruct;
import com.tencent.beacon.pack.RequestPackageV2;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes10.dex */
public class JceRequestEntity {
    private static final String TAG = "JceRequestEntity";
    private final String appKey;
    private final byte[] content;
    private final String domain;
    private final Map<String, String> header;
    private final int port;
    private final int requestCmd;
    private final int responseCmd;
    private final RequestType type;
    private final String url;

    /* renamed from: com.tencent.beacon.base.net.call.JceRequestEntity$a */
    /* loaded from: classes10.dex */
    public static final class C14939a {

        /* renamed from: a */
        private String f92879a;

        /* renamed from: b */
        private int f92880b;

        /* renamed from: c */
        private String f92881c;

        /* renamed from: d */
        private int f92882d;

        /* renamed from: e */
        private int f92883e;

        /* renamed from: f */
        private RequestType f92884f;

        /* renamed from: g */
        private String f92885g;

        /* renamed from: h */
        private Map<String, String> f92886h = new ConcurrentHashMap(5);

        /* renamed from: i */
        private Map<String, String> f92887i = new LinkedHashMap(10);

        /* renamed from: j */
        private byte[] f92888j;

        /* renamed from: k */
        private AbstractJceStruct f92889k;

        /* renamed from: a */
        public C14939a m59334a(RequestType requestType) {
            this.f92884f = requestType;
            return this;
        }

        /* renamed from: b */
        public C14939a m59342b(String str) {
            this.f92879a = str;
            return this;
        }

        /* renamed from: a */
        public C14939a m59337a(String str, int i) {
            this.f92885g = str;
            this.f92880b = i;
            return this;
        }

        /* renamed from: b */
        public C14939a m59341b(int i) {
            this.f92883e = i;
            return this;
        }

        /* renamed from: b */
        public C14939a m59343b(String str, String str2) {
            if (str2 == null) {
                str2 = "";
            }
            this.f92887i.put(str, str2);
            return this;
        }

        /* renamed from: a */
        public C14939a m59338a(@NonNull String str, String str2) {
            this.f92886h.put(str, str2);
            return this;
        }

        /* renamed from: a */
        public C14939a m59333a(int i) {
            this.f92882d = i;
            return this;
        }

        /* renamed from: a */
        public C14939a m59339a(Map<String, String> map) {
            if (map != null) {
                this.f92887i.putAll(map);
            }
            return this;
        }

        /* renamed from: a */
        public C14939a m59336a(String str) {
            this.f92881c = str;
            return this;
        }

        /* renamed from: a */
        public C14939a m59335a(AbstractJceStruct abstractJceStruct) {
            this.f92889k = abstractJceStruct;
            return this;
        }

        /* renamed from: a */
        public JceRequestEntity m59340a() {
            if (TextUtils.isEmpty(this.f92879a) && TextUtils.isEmpty(this.f92885g)) {
                throw new IllegalArgumentException("url || domain == null");
            }
            if (!TextUtils.isEmpty(this.f92881c)) {
                C14937c m59312d = C14937c.m59312d();
                this.f92886h.putAll(C14935d.m59294a());
                if (this.f92884f == RequestType.EVENT) {
                    this.f92888j = m59312d.f92867f.m59127c().mo59122a((RequestPackageV2) this.f92889k);
                } else {
                    AbstractJceStruct abstractJceStruct = this.f92889k;
                    this.f92888j = m59312d.f92866e.m59119c().mo59122a(C14935d.m59293a(this.f92882d, abstractJceStruct == null ? "".getBytes() : abstractJceStruct.toByteArray(), this.f92887i, this.f92881c));
                }
                return new JceRequestEntity(this.f92884f, this.f92879a, this.f92885g, this.f92880b, this.f92881c, this.f92888j, this.f92886h, this.f92882d, this.f92883e);
            }
            throw new IllegalArgumentException("appKey == null");
        }
    }

    public static C14939a builder() {
        return new C14939a();
    }

    public String getAppKey() {
        return this.appKey;
    }

    public byte[] getContent() {
        return this.content;
    }

    public String getDomain() {
        return this.domain;
    }

    public Map<String, String> getHeader() {
        return this.header;
    }

    public int getPort() {
        return this.port;
    }

    public int getRequestCmd() {
        return this.requestCmd;
    }

    public int getResponseCmd() {
        return this.responseCmd;
    }

    public RequestType getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public String toString() {
        return "JceRequestEntity{type=" + this.type + ", url='" + this.url + Chars.QUOTE + ", domain='" + this.domain + Chars.QUOTE + ", port=" + this.port + ", appKey='" + this.appKey + Chars.QUOTE + ", content.length=" + this.content.length + ", header=" + this.header + ", requestCmd=" + this.requestCmd + ", responseCmd=" + this.responseCmd + '}';
    }

    private JceRequestEntity(RequestType requestType, String str, String str2, int i, String str3, byte[] bArr, Map<String, String> map, int i2, int i3) {
        this.type = requestType;
        this.url = str;
        this.domain = str2;
        this.port = i;
        this.appKey = str3;
        this.content = bArr;
        this.header = map;
        this.requestCmd = i2;
        this.responseCmd = i3;
    }
}
