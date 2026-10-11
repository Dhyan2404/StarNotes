package io.opencensus.resource;

import com.sunia.HTREnginev2.C13619dk;
import io.opencensus.internal.StringUtils;
import io.opencensus.internal.Utils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class Resource {

    /* renamed from: a */
    public static final int f94748a = 255;

    /* renamed from: d */
    public static final String f94751d = ",";

    /* renamed from: e */
    public static final String f94752e = "=";

    /* renamed from: f */
    public static final String f94753f = " should be a ASCII string with a length greater than 0 and not exceed 255 characters.";

    /* renamed from: g */
    public static final String f94754g = " should be a ASCII string with a length not exceed 255 characters.";

    /* renamed from: b */
    public static final String f94749b = "OC_RESOURCE_TYPE";

    /* renamed from: h */
    @Nullable
    public static final String f94755h = m61014f(System.getenv(f94749b));

    /* renamed from: c */
    public static final String f94750c = "OC_RESOURCE_LABELS";

    /* renamed from: i */
    public static final Map<String, String> f94756i = m61013e(System.getenv(f94750c));

    /* renamed from: a */
    public static Resource m61009a(@Nullable String str, Map<String, String> map) {
        return new C13619dk(str, map);
    }

    /* renamed from: b */
    public static boolean m61010b(String str) {
        return str.length() <= 255 && StringUtils.isPrintableString(str);
    }

    /* renamed from: c */
    public static boolean m61011c(String str) {
        return !str.isEmpty() && m61010b(str);
    }

    public static Resource create(@Nullable String str, Map<String, String> map) {
        return m61009a(str, Collections.unmodifiableMap(new LinkedHashMap((Map) Utils.checkNotNull(map, "labels"))));
    }

    public static Resource createFromEnvironmentVariables() {
        return m61009a(f94755h, f94756i);
    }

    @Nullable
    /* renamed from: d */
    public static Resource m61012d(@Nullable Resource resource, @Nullable Resource resource2) {
        if (resource2 == null) {
            return resource;
        }
        if (resource == null) {
            return resource2;
        }
        String type = resource.getType() != null ? resource.getType() : resource2.getType();
        LinkedHashMap linkedHashMap = new LinkedHashMap(resource2.getLabels());
        for (Map.Entry<String, String> entry : resource.getLabels().entrySet()) {
            linkedHashMap.put(entry.getKey(), entry.getValue());
        }
        return m61009a(type, Collections.unmodifiableMap(linkedHashMap));
    }

    /* renamed from: e */
    public static Map<String, String> m61013e(@Nullable String str) {
        if (str == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str2 : str.split(",", -1)) {
            String[] split = str2.split("=", -1);
            if (split.length == 2) {
                String trim = split[0].trim();
                String replaceAll = split[1].trim().replaceAll("^\"|\"$", "");
                Utils.checkArgument(m61011c(trim), "Label key should be a ASCII string with a length greater than 0 and not exceed 255 characters.");
                Utils.checkArgument(m61010b(replaceAll), "Label value should be a ASCII string with a length not exceed 255 characters.");
                hashMap.put(trim, replaceAll);
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    @Nullable
    /* renamed from: f */
    public static String m61014f(@Nullable String str) {
        if (str == null || str.isEmpty()) {
            return str;
        }
        Utils.checkArgument(m61011c(str), "Type should be a ASCII string with a length greater than 0 and not exceed 255 characters.");
        return str.trim();
    }

    @Nullable
    public static Resource mergeResources(List<Resource> list) {
        Iterator<Resource> it2 = list.iterator();
        Resource resource = null;
        while (it2.hasNext()) {
            resource = m61012d(resource, it2.next());
        }
        return resource;
    }

    public abstract Map<String, String> getLabels();

    @Nullable
    public abstract String getType();
}
