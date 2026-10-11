package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.common.zzo;
import com.google.android.gms.internal.common.zzx;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

@KeepForSdk
/* loaded from: classes5.dex */
public class HttpUtils {

    /* renamed from: a */
    public static final Pattern f29486a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: b */
    public static final Pattern f29487b = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");

    /* renamed from: c */
    public static final Pattern f29488c = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    /* renamed from: a */
    public static String m22234a(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @NonNull
    @KeepForSdk
    public static Map<String, String> parse(@NonNull URI uri, @NonNull String str) {
        Map<String, String> emptyMap = Collections.emptyMap();
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() > 0) {
            emptyMap = new HashMap<>();
            zzx zzc = zzx.zzc(zzo.zzb('='));
            Iterator it2 = zzx.zzc(zzo.zzb('&')).zzb().zzd(rawQuery).iterator();
            while (it2.hasNext()) {
                List zzf = zzc.zzf((String) it2.next());
                if (zzf.isEmpty() || zzf.size() > 2) {
                    throw new IllegalArgumentException("bad parameter");
                }
                emptyMap.put(m22234a((String) zzf.get(0), str), zzf.size() == 2 ? m22234a((String) zzf.get(1), str) : null);
            }
        }
        return emptyMap;
    }
}
