package org.json;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes13.dex */
public class JSONPointer {

    /* renamed from: b */
    public static final String f113948b = "utf-8";

    /* renamed from: a */
    public final List<String> f113949a;

    public JSONPointer(String str) {
        String substring;
        if (str != null) {
            if (!str.isEmpty() && !str.equals("#")) {
                if (str.startsWith("#/")) {
                    try {
                        substring = URLDecoder.decode(str.substring(2), "utf-8");
                    } catch (UnsupportedEncodingException e) {
                        throw new RuntimeException(e);
                    }
                } else if (str.startsWith("/")) {
                    substring = str.substring(1);
                } else {
                    throw new IllegalArgumentException("a JSON pointer should start with '/' or '#/'");
                }
                this.f113949a = new ArrayList();
                for (String str2 : substring.split("/")) {
                    this.f113949a.add(m71050c(str2));
                }
                return;
            }
            this.f113949a = Collections.emptyList();
            return;
        }
        throw new NullPointerException("pointer cannot be null");
    }

    public static Builder builder() {
        return new Builder();
    }

    /* renamed from: a */
    public final String m71048a(String str) {
        return str.replace("~", "~0").replace("/", "~1").replace("\\", "\\\\").replace("\"", "\\\"");
    }

    /* renamed from: b */
    public final Object m71049b(Object obj, String str) {
        try {
            int parseInt = Integer.parseInt(str);
            JSONArray jSONArray = (JSONArray) obj;
            if (parseInt < jSONArray.length()) {
                return jSONArray.get(parseInt);
            }
            throw new JSONPointerException(String.format("index %d is out of bounds - the array has %d elements", Integer.valueOf(parseInt), Integer.valueOf(jSONArray.length())));
        } catch (NumberFormatException e) {
            throw new JSONPointerException(String.format("%s is not an array index", str), e);
        }
    }

    /* renamed from: c */
    public final String m71050c(String str) {
        return str.replace("~1", "/").replace("~0", "~").replace("\\\"", "\"").replace("\\\\", "\\");
    }

    public Object queryFrom(Object obj) {
        if (this.f113949a.isEmpty()) {
            return obj;
        }
        for (String str : this.f113949a) {
            if (obj instanceof JSONObject) {
                obj = ((JSONObject) obj).opt(m71050c(str));
            } else {
                if (!(obj instanceof JSONArray)) {
                    throw new JSONPointerException(String.format("value [%s] is not an array or object therefore its key %s cannot be resolved", obj, str));
                }
                obj = m71049b(obj, str);
            }
        }
        return obj;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("");
        for (String str : this.f113949a) {
            sb.append('/');
            sb.append(m71048a(str));
        }
        return sb.toString();
    }

    public String toURIFragment() {
        try {
            StringBuilder sb = new StringBuilder("#");
            for (String str : this.f113949a) {
                sb.append('/');
                sb.append(URLEncoder.encode(str, "utf-8"));
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    /* loaded from: classes13.dex */
    public static class Builder {

        /* renamed from: a */
        public final List<String> f113950a = new ArrayList();

        public Builder append(String str) {
            if (str != null) {
                this.f113950a.add(str);
                return this;
            }
            throw new NullPointerException("token cannot be null");
        }

        public JSONPointer build() {
            return new JSONPointer(this.f113950a);
        }

        public Builder append(int i) {
            this.f113950a.add(String.valueOf(i));
            return this;
        }
    }

    public JSONPointer(List<String> list) {
        this.f113949a = new ArrayList(list);
    }
}
