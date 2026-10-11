package org.jsoup.internal;

import androidx.constraintlayout.widget.ConstraintSet;
import com.bumptech.glide.load.engine.GlideException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;
import org.apache.commons.collections4.MapUtils;
import org.jsoup.helper.Validate;
import org.jsoup.search.SearchHelper;

/* loaded from: classes13.dex */
public final class StringUtil {

    /* renamed from: a */
    public static final String[] f114035a = {"", " ", GlideException.C1935a.f14609h, "   ", MapUtils.f104930a, "     ", "      ", ConstraintSet.C0501a.f4632o, "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};

    /* renamed from: b */
    public static final Stack<StringBuilder> f114036b = new Stack<>();

    /* renamed from: c */
    public static final int f114037c = 8192;

    /* renamed from: d */
    public static final int f114038d = 8;

    public static void appendNormalisedWhitespace(StringBuilder sb, String str, boolean z) {
        int length = str.length();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (isActuallyWhitespace(codePointAt)) {
                if ((!z || z2) && !z3) {
                    sb.append(' ');
                    z3 = true;
                }
            } else if (!isInvisibleChar(codePointAt)) {
                sb.appendCodePoint(codePointAt);
                z3 = false;
                z2 = true;
            }
            i += Character.charCount(codePointAt);
        }
    }

    public static StringBuilder borrowBuilder() {
        StringBuilder sb;
        Stack<StringBuilder> stack = f114036b;
        synchronized (stack) {
            sb = stack.empty() ? new StringBuilder(8192) : stack.pop();
        }
        return sb;
    }

    public static boolean equals(String str, String str2) {
        return str == str2 || (str != null && str.equals(str2));
    }

    /* renamed from: in */
    public static boolean m71096in(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean inSorted(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean isActuallyWhitespace(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13 || i == 160;
    }

    public static boolean isBlank(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (!isWhitespace(str.codePointAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isInvisibleChar(int i) {
        return i == 8203 || i == 173;
    }

    public static boolean isNumeric(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.codePointAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static boolean isWhitespace(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    public static String join(Collection collection, String str) {
        return join(collection.iterator(), str);
    }

    public static String normaliseWhitespace(String str) {
        StringBuilder borrowBuilder = borrowBuilder();
        appendNormalisedWhitespace(borrowBuilder, str, false);
        return releaseBuilder(borrowBuilder);
    }

    public static String padding(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("width must be > 0");
        }
        String[] strArr = f114035a;
        if (i < strArr.length) {
            return strArr[i];
        }
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = ' ';
        }
        return String.valueOf(cArr);
    }

    public static String releaseBuilder(StringBuilder sb) {
        Validate.notNull(sb);
        String sb2 = sb.toString();
        if (sb.length() > 8192) {
            sb = new StringBuilder(8192);
        } else {
            sb.delete(0, sb.length());
        }
        Stack<StringBuilder> stack = f114036b;
        synchronized (stack) {
            stack.push(sb);
            while (true) {
                Stack<StringBuilder> stack2 = f114036b;
                if (stack2.size() > 8) {
                    stack2.pop();
                }
            }
        }
        return sb2;
    }

    public static String removeMultipleSpace(String str) {
        return str.replaceAll("\\s+([A-Za-z\\d])", "\uffff$1").replaceAll("([A-Za-z\\d])\\s+", "$1\uffff").replaceAll("\\s+", "").replaceAll(SearchHelper.f114392s, " ").trim();
    }

    public static String resolve(String str, String str2) {
        try {
            try {
                return resolve(new URL(str), str2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(str2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return "";
        }
    }

    public static boolean startsWithNewline(String str) {
        return (str == null || str.length() == 0 || str.charAt(0) != '\n') ? false : true;
    }

    public static String join(Iterator it2, String str) {
        if (!it2.hasNext()) {
            return "";
        }
        String obj = it2.next().toString();
        if (!it2.hasNext()) {
            return obj;
        }
        StringBuilder borrowBuilder = borrowBuilder();
        borrowBuilder.append(obj);
        while (it2.hasNext()) {
            borrowBuilder.append(str);
            borrowBuilder.append(it2.next());
        }
        return releaseBuilder(borrowBuilder);
    }

    public static URL resolve(URL url, String str) throws MalformedURLException {
        if (str.startsWith("?")) {
            str = url.getPath() + str;
        }
        if (str.indexOf(46) == 0 && url.getFile().indexOf(47) != 0) {
            url = new URL(url.getProtocol(), url.getHost(), url.getPort(), "/" + url.getFile());
        }
        return new URL(url, str);
    }

    public static String join(String[] strArr, String str) {
        return join(Arrays.asList(strArr), str);
    }
}
