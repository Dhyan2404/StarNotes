package org.scribe.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import org.scribe.exceptions.OAuthException;

/* loaded from: classes16.dex */
public class OAuthEncoder {

    /* renamed from: a */
    public static String f116000a = "UTF-8";

    /* renamed from: b */
    public static final Map<String, String> f116001b;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("*", "%2A");
        hashMap.put("+", "%20");
        hashMap.put("%7E", "~");
        f116001b = Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public static String m71894a(String str, String str2, String str3) {
        return str.replaceAll(Pattern.quote(str2), str3);
    }

    public static String decode(String str) {
        Preconditions.checkNotNull(str, "Cannot decode null object");
        try {
            return URLDecoder.decode(str, f116000a);
        } catch (UnsupportedEncodingException e) {
            throw new OAuthException("Charset not found while decoding string: " + f116000a, e);
        }
    }

    public static String encode(String str) {
        Preconditions.checkNotNull(str, "Cannot encode null object");
        try {
            String encode = URLEncoder.encode(str, f116000a);
            for (Map.Entry<String, String> entry : f116001b.entrySet()) {
                encode = m71894a(encode, entry.getKey(), entry.getValue());
            }
            return encode;
        } catch (UnsupportedEncodingException e) {
            throw new OAuthException("Charset not found while encoding string: " + f116000a, e);
        }
    }
}
