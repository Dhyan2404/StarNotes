package org.apache.commons.compress.compressors;

import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes12.dex */
public class FileNameUtil {

    /* renamed from: a */
    public final Map<String, String> f105976a = new HashMap();

    /* renamed from: b */
    public final Map<String, String> f105977b;

    /* renamed from: c */
    public final int f105978c;

    /* renamed from: d */
    public final int f105979d;

    /* renamed from: e */
    public final int f105980e;

    /* renamed from: f */
    public final int f105981f;

    /* renamed from: g */
    public final String f105982g;

    public FileNameUtil(Map<String, String> map, String str) {
        this.f105977b = Collections.unmodifiableMap(map);
        int i = Integer.MIN_VALUE;
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MAX_VALUE;
        int i4 = Integer.MIN_VALUE;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            int length = entry.getKey().length();
            i = length > i ? length : i;
            i2 = length < i2 ? length : i2;
            String value = entry.getValue();
            int length2 = value.length();
            if (length2 > 0) {
                if (!this.f105976a.containsKey(value)) {
                    this.f105976a.put(value, entry.getKey());
                }
                i4 = length2 > i4 ? length2 : i4;
                if (length2 < i3) {
                    i3 = length2;
                }
            }
        }
        this.f105978c = i;
        this.f105980e = i4;
        this.f105979d = i2;
        this.f105981f = i3;
        this.f105982g = str;
    }

    public String getCompressedFilename(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int length = lowerCase.length();
        for (int i = this.f105981f; i <= this.f105980e && i < length; i++) {
            int i2 = length - i;
            String str2 = this.f105976a.get(lowerCase.substring(i2));
            if (str2 != null) {
                return str.substring(0, i2) + str2;
            }
        }
        return str + this.f105982g;
    }

    public String getUncompressedFilename(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int length = lowerCase.length();
        for (int i = this.f105979d; i <= this.f105978c && i < length; i++) {
            int i2 = length - i;
            String str2 = this.f105977b.get(lowerCase.substring(i2));
            if (str2 != null) {
                return str.substring(0, i2) + str2;
            }
        }
        return str;
    }

    public boolean isCompressedFilename(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        int length = lowerCase.length();
        for (int i = this.f105979d; i <= this.f105978c && i < length; i++) {
            if (this.f105977b.containsKey(lowerCase.substring(length - i))) {
                return true;
            }
        }
        return false;
    }
}
