package org.mortbay.jetty;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.log.Log;
import org.mortbay.util.StringUtil;

/* loaded from: classes13.dex */
public class MimeTypes {
    public static final BufferCache CACHE;
    public static final String FORM_ENCODED = "application/x-www-form-urlencoded";
    public static final BufferCache.CachedBuffer FORM_ENCODED_BUFFER;
    public static final String MESSAGE_HTTP = "message/http";
    public static final BufferCache.CachedBuffer MESSAGE_HTTP_BUFFER;
    public static final String MULTIPART_BYTERANGES = "multipart/byteranges";
    public static final BufferCache.CachedBuffer MULTIPART_BYTERANGES_BUFFER;
    public static final String TEXT_HTML = "text/html";
    public static final String TEXT_HTML_8859_1 = "text/html; charset=iso-8859-1";
    public static final BufferCache.CachedBuffer TEXT_HTML_8859_1_BUFFER;
    public static final BufferCache.CachedBuffer TEXT_HTML_BUFFER;
    public static final String TEXT_HTML_UTF_8 = "text/html; charset=utf-8";
    public static final BufferCache.CachedBuffer TEXT_HTML_UTF_8_BUFFER;
    public static final String TEXT_JSON = "text/json";
    public static final BufferCache.CachedBuffer TEXT_JSON_BUFFER;
    public static final String TEXT_JSON_UTF_8 = "text/json;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_JSON_UTF_8_BUFFER;
    public static final String TEXT_PLAIN = "text/plain";
    public static final String TEXT_PLAIN_8859_1 = "text/plain; charset=iso-8859-1";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_8859_1_BUFFER;
    public static final BufferCache.CachedBuffer TEXT_PLAIN_BUFFER;
    public static final String TEXT_PLAIN_UTF_8 = "text/plain; charset=utf-8";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_UTF_8_BUFFER;
    public static final String TEXT_XML = "text/xml";
    public static final String TEXT_XML_8859_1 = "text/xml; charset=iso-8859-1";
    public static final BufferCache.CachedBuffer TEXT_XML_8859_1_BUFFER;
    public static final BufferCache.CachedBuffer TEXT_XML_BUFFER;
    public static final String TEXT_XML_UTF_8 = "text/xml; charset=utf-8";
    public static final BufferCache.CachedBuffer TEXT_XML_UTF_8_BUFFER;

    /* renamed from: b */
    public static final int f114690b = 1;

    /* renamed from: c */
    public static final int f114691c = 2;

    /* renamed from: d */
    public static final int f114692d = 3;

    /* renamed from: e */
    public static final int f114693e = 4;

    /* renamed from: f */
    public static final int f114694f = 5;

    /* renamed from: g */
    public static final int f114695g = 6;

    /* renamed from: h */
    public static final int f114696h = 7;

    /* renamed from: i */
    public static final int f114697i = 8;

    /* renamed from: j */
    public static final int f114698j = 9;

    /* renamed from: k */
    public static final int f114699k = 10;

    /* renamed from: l */
    public static final int f114700l = 11;

    /* renamed from: m */
    public static final int f114701m = 12;

    /* renamed from: n */
    public static final int f114702n = 13;

    /* renamed from: o */
    public static final int f114703o = 14;

    /* renamed from: p */
    public static int f114704p = 15;

    /* renamed from: q */
    public static final Map f114705q;

    /* renamed from: r */
    public static final Map f114706r;

    /* renamed from: a */
    public Map f114707a;

    static {
        BufferCache bufferCache = new BufferCache();
        CACHE = bufferCache;
        FORM_ENCODED_BUFFER = bufferCache.add("application/x-www-form-urlencoded", 1);
        MESSAGE_HTTP_BUFFER = bufferCache.add(MESSAGE_HTTP, 2);
        MULTIPART_BYTERANGES_BUFFER = bufferCache.add(MULTIPART_BYTERANGES, 3);
        TEXT_HTML_BUFFER = bufferCache.add("text/html", 4);
        TEXT_PLAIN_BUFFER = bufferCache.add("text/plain", 5);
        TEXT_XML_BUFFER = bufferCache.add("text/xml", 6);
        TEXT_HTML_8859_1_BUFFER = new BufferCache.CachedBuffer(TEXT_HTML_8859_1, 7);
        TEXT_PLAIN_8859_1_BUFFER = new BufferCache.CachedBuffer(TEXT_PLAIN_8859_1, 8);
        TEXT_XML_8859_1_BUFFER = new BufferCache.CachedBuffer(TEXT_XML_8859_1, 9);
        TEXT_HTML_UTF_8_BUFFER = new BufferCache.CachedBuffer(TEXT_HTML_UTF_8, 10);
        TEXT_PLAIN_UTF_8_BUFFER = new BufferCache.CachedBuffer(TEXT_PLAIN_UTF_8, 11);
        TEXT_XML_UTF_8_BUFFER = new BufferCache.CachedBuffer(TEXT_XML_UTF_8, 12);
        TEXT_JSON_BUFFER = bufferCache.add(TEXT_JSON, 13);
        TEXT_JSON_UTF_8_BUFFER = bufferCache.add(TEXT_JSON_UTF_8, 14);
        f114705q = new HashMap();
        f114706r = new HashMap();
        try {
            ResourceBundle bundle = ResourceBundle.getBundle("org/mortbay/jetty/mime");
            Enumeration<String> keys = bundle.getKeys();
            while (keys.hasMoreElements()) {
                String nextElement = keys.nextElement();
                f114705q.put(StringUtil.asciiToLowerCase(nextElement), m71525a(bundle.getString(nextElement)));
            }
        } catch (MissingResourceException e) {
            Log.warn(e.toString());
            Log.debug(e);
        }
        try {
            ResourceBundle bundle2 = ResourceBundle.getBundle("org/mortbay/jetty/encoding");
            Enumeration<String> keys2 = bundle2.getKeys();
            while (keys2.hasMoreElements()) {
                Buffer m71525a = m71525a(keys2.nextElement());
                f114706r.put(m71525a, bundle2.getString(m71525a.toString()));
            }
        } catch (MissingResourceException e2) {
            Log.warn(e2.toString());
            Log.debug(e2);
        }
        BufferCache.CachedBuffer cachedBuffer = TEXT_HTML_BUFFER;
        BufferCache.CachedBuffer cachedBuffer2 = TEXT_HTML_8859_1_BUFFER;
        cachedBuffer.setAssociate("ISO-8859-1", cachedBuffer2);
        cachedBuffer.setAssociate("ISO_8859_1", cachedBuffer2);
        cachedBuffer.setAssociate("iso-8859-1", cachedBuffer2);
        BufferCache.CachedBuffer cachedBuffer3 = TEXT_PLAIN_BUFFER;
        BufferCache.CachedBuffer cachedBuffer4 = TEXT_PLAIN_8859_1_BUFFER;
        cachedBuffer3.setAssociate("ISO-8859-1", cachedBuffer4);
        cachedBuffer3.setAssociate("ISO_8859_1", cachedBuffer4);
        cachedBuffer3.setAssociate("iso-8859-1", cachedBuffer4);
        BufferCache.CachedBuffer cachedBuffer5 = TEXT_XML_BUFFER;
        BufferCache.CachedBuffer cachedBuffer6 = TEXT_XML_8859_1_BUFFER;
        cachedBuffer5.setAssociate("ISO-8859-1", cachedBuffer6);
        cachedBuffer5.setAssociate("ISO_8859_1", cachedBuffer6);
        cachedBuffer5.setAssociate("iso-8859-1", cachedBuffer6);
        BufferCache.CachedBuffer cachedBuffer7 = TEXT_HTML_UTF_8_BUFFER;
        cachedBuffer.setAssociate("UTF-8", cachedBuffer7);
        cachedBuffer.setAssociate("UTF8", cachedBuffer7);
        cachedBuffer.setAssociate("utf8", cachedBuffer7);
        cachedBuffer.setAssociate("utf-8", cachedBuffer7);
        BufferCache.CachedBuffer cachedBuffer8 = TEXT_PLAIN_UTF_8_BUFFER;
        cachedBuffer3.setAssociate("UTF-8", cachedBuffer8);
        cachedBuffer3.setAssociate("UTF8", cachedBuffer8);
        cachedBuffer3.setAssociate("utf-8", cachedBuffer8);
        BufferCache.CachedBuffer cachedBuffer9 = TEXT_XML_UTF_8_BUFFER;
        cachedBuffer5.setAssociate("UTF-8", cachedBuffer9);
        cachedBuffer5.setAssociate("utf8", cachedBuffer9);
        cachedBuffer5.setAssociate("UTF8", cachedBuffer9);
        cachedBuffer5.setAssociate("utf-8", cachedBuffer9);
        BufferCache.CachedBuffer cachedBuffer10 = TEXT_JSON_BUFFER;
        BufferCache.CachedBuffer cachedBuffer11 = TEXT_JSON_UTF_8_BUFFER;
        cachedBuffer10.setAssociate("UTF-8", cachedBuffer11);
        cachedBuffer10.setAssociate("utf8", cachedBuffer11);
        cachedBuffer10.setAssociate("UTF8", cachedBuffer11);
        cachedBuffer10.setAssociate("utf-8", cachedBuffer11);
    }

    /* renamed from: a */
    public static synchronized Buffer m71525a(String str) {
        BufferCache.CachedBuffer cachedBuffer;
        synchronized (MimeTypes.class) {
            BufferCache bufferCache = CACHE;
            cachedBuffer = bufferCache.get(str);
            if (cachedBuffer == null) {
                int i = f114704p;
                f114704p = i + 1;
                cachedBuffer = bufferCache.add(str, i);
            }
        }
        return cachedBuffer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x00a6, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0039. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getCharsetFromContentType(org.mortbay.io.Buffer r12) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.MimeTypes.getCharsetFromContentType(org.mortbay.io.Buffer):java.lang.String");
    }

    public void addMimeMapping(String str, String str2) {
        if (this.f114707a == null) {
            this.f114707a = new HashMap();
        }
        this.f114707a.put(StringUtil.asciiToLowerCase(str), m71525a(str2));
    }

    public Buffer getMimeByExtension(String str) {
        Buffer buffer = null;
        if (str != null) {
            int i = -1;
            while (buffer == null) {
                i = str.indexOf(".", i + 1);
                if (i < 0 || i >= str.length()) {
                    break;
                }
                String asciiToLowerCase = StringUtil.asciiToLowerCase(str.substring(i + 1));
                Map map = this.f114707a;
                if (map != null) {
                    buffer = (Buffer) map.get(asciiToLowerCase);
                }
                if (buffer == null) {
                    buffer = (Buffer) f114705q.get(asciiToLowerCase);
                }
            }
        }
        if (buffer != null) {
            return buffer;
        }
        Map map2 = this.f114707a;
        if (map2 != null) {
            buffer = (Buffer) map2.get("*");
        }
        return buffer == null ? (Buffer) f114705q.get("*") : buffer;
    }

    public synchronized Map getMimeMap() {
        return this.f114707a;
    }

    public void setMimeMap(Map map) {
        if (map == null) {
            this.f114707a = null;
            return;
        }
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            hashMap.put(entry.getKey(), m71525a(entry.getValue().toString()));
        }
        this.f114707a = hashMap;
    }
}
