package com.onegravity.rteditor.utils;

import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.onegravity.rteditor.api.RTApi;
import com.onegravity.rteditor.utils.io.IOUtils;
import java.io.Closeable;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.Bidi;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.scribe.model.ParameterList;

/* loaded from: classes7.dex */
public abstract class Helper {

    /* renamed from: a */
    public static float f40580a = Float.MAX_VALUE;

    /* renamed from: b */
    public static float f40581b = Float.MAX_VALUE;

    /* renamed from: c */
    public static final int f40582c = 28;

    /* renamed from: d */
    public static int f40583d = -1;

    /* renamed from: a */
    public static float m31795a() {
        float f;
        synchronized (Helper.class) {
            if (f40581b == Float.MAX_VALUE) {
                f40581b = m31796b().density * m31797c();
            }
            f = f40581b;
        }
        return f;
    }

    /* renamed from: b */
    public static DisplayMetrics m31796b() {
        Display defaultDisplay = ((WindowManager) RTApi.getApplicationContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: c */
    public static float m31797c() {
        return RTApi.getApplicationContext().getResources().getConfiguration().fontScale;
    }

    public static void closeQuietly(Closeable closeable) {
        IOUtils.closeQuietly(closeable);
    }

    public static int convertPxToSp(int i) {
        return Math.round(i * m31795a());
    }

    public static int convertSpToPx(int i) {
        return Math.round(i / m31795a());
    }

    /* renamed from: d */
    public static boolean m31798d(Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName().charAt(0));
        return directionality == 1 || directionality == 2;
    }

    public static String decodeQuery(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return str;
        }
    }

    /* renamed from: e */
    public static Map<String, List<String>> m31799e(Uri uri) throws UnsupportedEncodingException {
        int i;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String query = uri.getQuery();
        if (query == null) {
            return linkedHashMap;
        }
        for (String str : query.split(ParameterList.f115951c)) {
            int indexOf = str.indexOf("=");
            String decode = indexOf > 0 ? URLDecoder.decode(str.substring(0, indexOf), "UTF-8") : str;
            if (!linkedHashMap.containsKey(decode)) {
                linkedHashMap.put(decode, new LinkedList());
            }
            ((List) linkedHashMap.get(decode)).add((indexOf <= 0 || str.length() <= (i = indexOf + 1)) ? "" : URLDecoder.decode(str.substring(i), "UTF-8"));
        }
        return linkedHashMap;
    }

    public static String encodeUrl(String str) {
        Uri parse = Uri.parse(str);
        try {
            Map<String, List<String>> m31799e = m31799e(parse);
            StringBuilder sb = new StringBuilder();
            for (String str2 : m31799e.keySet()) {
                for (String str3 : m31799e.get(str2)) {
                    if (sb.length() > 0) {
                        sb.append(ParameterList.f115951c);
                    }
                    sb.append(str2 + "=" + URLEncoder.encode(str3, "UTF-8"));
                }
            }
            return new URI(parse.getScheme(), parse.getAuthority(), parse.getPath(), null, parse.getFragment()) + (sb.length() > 0 ? "?" + ((Object) sb) : "");
        } catch (UnsupportedEncodingException | URISyntaxException unused) {
            return parse.toString();
        }
    }

    public static float getDisplayDensity() {
        float f;
        synchronized (Helper.class) {
            if (f40580a == Float.MAX_VALUE) {
                f40580a = m31796b().density;
            }
            f = f40580a;
        }
        return f;
    }

    public static int getLeadingMarging() {
        if (f40583d == -1) {
            f40583d = Math.round(getDisplayDensity() * 28.0f);
        }
        return f40583d;
    }

    public static boolean isRTL(CharSequence charSequence, int i, int i2) {
        if (charSequence != null && charSequence.length() != 0) {
            if (i == i2 && (i = Math.max(0, i - 1)) == i2) {
                i2 = Math.min(charSequence.length(), i2 + 1);
            }
            try {
                return !new Bidi(charSequence.subSequence(i, i2).toString(), -2).baseIsLeftToRight();
            } catch (IndexOutOfBoundsException unused) {
            }
        }
        return false;
    }
}
