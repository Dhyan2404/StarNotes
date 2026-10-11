package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.security.AccessControlException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.TreeMap;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Response;
import org.apache.commons.lang3.time.TimeZones;
import org.mortbay.jetty.HttpVersions;

/* loaded from: classes5.dex */
public final class zzcbo implements URLStreamHandlerFactory, Cloneable {
    static final Set zza = new LinkedHashSet(Arrays.asList("OPTIONS", "GET", "HEAD", "POST", "PUT", "DELETE", "TRACE", "PATCH"));
    static final TimeZone zzb = TimeZone.getTimeZone(TimeZones.GMT_ID);
    static final ThreadLocal zzc = new zzcbc();
    static final Comparator zzd = new Comparator() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzcbb
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            String str = (String) obj;
            String str2 = (String) obj2;
            int i = zzcbo.zze;
            if (str == str2) {
                return 0;
            }
            if (str == null) {
                return -1;
            }
            if (str2 == null) {
                return 1;
            }
            return str.compareToIgnoreCase(str2);
        }
    };
    public static final /* synthetic */ int zze = 0;
    private final OkHttpClient zzf;

    public zzcbo(OkHttpClient okHttpClient) {
        this.zzf = okHttpClient;
    }

    public static IOException zza(Throwable th) throws IOException {
        if (th instanceof IOException) {
            throw ((IOException) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        throw new AssertionError();
    }

    public static String zzb(String str, @Nullable String str2) {
        String property;
        try {
            property = System.getProperty("http.agent");
        } catch (AccessControlException unused) {
        }
        if (property != null) {
            return property;
        }
        return null;
    }

    public static String zzc(Response response) {
        if (response.networkResponse() == null) {
            if (response.cacheResponse() == null) {
                return "NONE";
            }
            return "CACHE " + response.code();
        }
        if (response.cacheResponse() == null) {
            return "NETWORK " + response.code();
        }
        return "CONDITIONAL_CACHE " + response.networkResponse().code();
    }

    public static String zzd(Response response) {
        Protocol protocol = response.protocol();
        Protocol protocol2 = Protocol.HTTP_1_0;
        int code = response.code();
        String message = response.message();
        StringBuilder sb = new StringBuilder();
        sb.append(protocol == protocol2 ? HttpVersions.HTTP_1_0 : HttpVersions.HTTP_1_1);
        sb.append(" ");
        sb.append(code);
        sb.append(" ");
        sb.append(message);
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0027, code lost:
    
        r1 = r1 + java.lang.Character.charCount(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
    
        if (r1 >= r2) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x002e, code lost:
    
        r3 = r8.codePointAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        if (r3 <= 31) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
    
        if (r3 >= 127) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
    
        r7 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
    
        r6.writeUtf8CodePoint(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
    
        r7 = 63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        return r6.readUtf8();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        r6 = new okio.Buffer();
        r6.writeUtf8(r8, 0, r1);
        r6.writeUtf8CodePoint(63);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String zze(java.lang.String r8) {
        /*
            r0 = 0
            r1 = r0
        L2:
            int r2 = r8.length()
            if (r1 >= r2) goto L41
            int r3 = r8.codePointAt(r1)
            r4 = 127(0x7f, float:1.78E-43)
            r5 = 31
            if (r3 <= r5) goto L1a
            if (r3 >= r4) goto L1a
            int r2 = java.lang.Character.charCount(r3)
            int r1 = r1 + r2
            goto L2
        L1a:
            okio.Buffer r6 = new okio.Buffer
            r6.<init>()
            r6.writeUtf8(r8, r0, r1)
            r0 = 63
            r6.writeUtf8CodePoint(r0)
        L27:
            int r3 = java.lang.Character.charCount(r3)
            int r1 = r1 + r3
            if (r1 >= r2) goto L3d
            int r3 = r8.codePointAt(r1)
            if (r3 <= r5) goto L38
            if (r3 >= r4) goto L38
            r7 = r3
            goto L39
        L38:
            r7 = r0
        L39:
            r6.writeUtf8CodePoint(r7)
            goto L27
        L3d:
            java.lang.String r8 = r6.readUtf8()
        L41:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzcbo.zze(java.lang.String):java.lang.String");
    }

    public static Map zzh(Headers headers, @Nullable String str) {
        TreeMap treeMap = new TreeMap(zzd);
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            String name = headers.name(i);
            String value = headers.value(i);
            ArrayList arrayList = new ArrayList();
            List list = (List) treeMap.get(name);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(value);
            treeMap.put(name, Collections.unmodifiableList(arrayList));
        }
        if (str != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(str)));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    public static boolean zzi(Response response) {
        long parseLong;
        if (response.request().method().equals("HEAD")) {
            return false;
        }
        int code = response.code();
        if ((code < 100 || code >= 200) && code != 204 && code != 304) {
            return true;
        }
        String str = response.headers().get("Content-Length");
        if (str != null) {
            try {
                parseLong = Long.parseLong(str);
            } catch (NumberFormatException unused) {
            }
            return parseLong == -1 || "chunked".equalsIgnoreCase(response.header("Transfer-Encoding"));
        }
        parseLong = -1;
        if (parseLong == -1) {
        }
    }

    public static boolean zzj(String str) {
        return (str.equals("GET") || str.equals("HEAD")) ? false : true;
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        return new zzcbo(this.zzf);
    }

    @Override // java.net.URLStreamHandlerFactory
    public final URLStreamHandler createURLStreamHandler(String str) {
        if (str.equals("http") || str.equals("https")) {
            return new zzcbd(this, str);
        }
        return null;
    }

    public final HttpURLConnection zzf(URL url) {
        return zzg(url, this.zzf.proxy());
    }

    public final HttpURLConnection zzg(URL url, @Nullable Proxy proxy) {
        String protocol = url.getProtocol();
        OkHttpClient build = this.zzf.newBuilder().proxy(proxy).build();
        if (protocol.equals("http")) {
            return new zzcbh(url, build);
        }
        if (protocol.equals("https")) {
            return new zzcbi(url, build);
        }
        throw new IllegalArgumentException("Unexpected protocol: ".concat(protocol));
    }
}
