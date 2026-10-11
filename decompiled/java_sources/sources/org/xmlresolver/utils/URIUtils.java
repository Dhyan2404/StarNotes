package org.xmlresolver.utils;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import org.apache.commons.compress.archivers.ArchiveStreamFactory;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes16.dex */
public abstract class URIUtils {

    /* renamed from: a */
    public static Boolean f116213a;

    /* renamed from: a */
    public static String m72025a(int i) {
        String upperCase = Integer.toHexString(i).toUpperCase();
        if (upperCase.length() < 2) {
            return "%0" + upperCase;
        }
        return "%" + upperCase;
    }

    /* renamed from: b */
    public static String m72026b(String str) {
        if (!isWindows()) {
            return str;
        }
        String replaceAll = str.replaceAll("\\\\", "/");
        if (replaceAll.length() < 2 || replaceAll.charAt(1) != ':') {
            return replaceAll;
        }
        return "file:///" + replaceAll;
    }

    public static URI cwd() {
        String m72026b = m72026b(System.getProperty(SystemUtils.f107422c));
        if (!m72026b.endsWith("/")) {
            m72026b = m72026b + "/";
        }
        try {
            return newURI(m72026b);
        } catch (URISyntaxException unused) {
            return URI.create("file:///");
        }
    }

    public static boolean isWindows() {
        if (f116213a == null) {
            f116213a = Boolean.valueOf(System.getProperty("os.name", "unknown").toLowerCase().contains("win"));
        }
        return f116213a.booleanValue();
    }

    public static URI newURI(String str) throws URISyntaxException {
        int i = 0;
        if (!str.startsWith("file:")) {
            if (!str.startsWith("/")) {
                return new URI(str);
            }
            if (!str.contains("#")) {
                return new URI("file", "", str, null);
            }
            int indexOf = str.indexOf(35);
            return new URI("file", "", str.substring(0, indexOf), str.substring(indexOf + 1));
        }
        int i2 = 5;
        while (i2 <= str.length() && str.charAt(i2) == '/') {
            i2++;
        }
        if (i2 > 5) {
            i = i2 - 1;
        } else {
            str = "/" + str.substring(5);
        }
        if (!str.contains("#")) {
            return new URI("file", "", str.substring(i), null);
        }
        int indexOf2 = str.indexOf(35);
        return new URI("file", "", str.substring(i, indexOf2), str.substring(indexOf2 + 1));
    }

    public static String normalizeURI(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : str.getBytes(StandardCharsets.UTF_8)) {
            int i = b & 255;
            if (i <= 32 || i > 127 || i == 34 || i == 60 || i == 62 || i == 92 || i == 94 || i == 96 || i == 123 || i == 124 || i == 125 || i == 127) {
                sb.append(m72025a(i));
            } else {
                sb.append((char) b);
            }
        }
        return sb.toString();
    }

    public static URI resolve(URI uri, String str) {
        if (uri == null) {
            try {
                return new URI(str);
            } catch (URISyntaxException e) {
                throw new IllegalArgumentException(e.getMessage(), e);
            }
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt <= ' ' || charAt >= '~') {
                sb.append(String.format("%%%02X", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        String m72026b = m72026b(sb.toString());
        URI create = URI.create(m72026b);
        if (create.isAbsolute()) {
            return create;
        }
        if (!ArchiveStreamFactory.JAR.equals(uri.getScheme())) {
            if (!"classpath".equals(uri.getScheme())) {
                return uri.resolve(m72026b);
            }
            String substring = uri.toString().substring(10);
            String substring2 = (substring.startsWith("/") ? URI.create("file://" + substring) : URI.create("file:///" + substring)).resolve(m72026b).getPath().substring(1);
            if (substring2.startsWith("../")) {
                throw new IllegalArgumentException("Attempt to navigate above root: classpath:" + substring2);
            }
            return URI.create("classpath:" + substring2);
        }
        String uri2 = uri.toString();
        int lastIndexOf = uri2.lastIndexOf("!");
        if (lastIndexOf <= 0) {
            return uri.resolve(m72026b);
        }
        int i2 = lastIndexOf + 1;
        String substring3 = uri2.substring(0, i2);
        String substring4 = uri2.substring(i2);
        URI resolve = (substring4.startsWith("/") ? URI.create("file://" + substring4) : URI.create("file:///" + substring4)).resolve(m72026b);
        if (!resolve.getPath().startsWith("/../")) {
            return URI.create(substring3 + resolve.getPath());
        }
        throw new IllegalArgumentException("Attempt to navigate above root: " + substring3 + resolve.getPath());
    }
}
