package javax.servlet.http;

import java.util.Hashtable;
import java.util.ResourceBundle;
import java.util.StringTokenizer;
import org.scribe.model.ParameterList;

/* loaded from: classes5.dex */
public class HttpUtils {

    /* renamed from: a */
    public static final String f98014a = "javax.servlet.http.LocalStrings";

    /* renamed from: b */
    public static ResourceBundle f98015b = ResourceBundle.getBundle("javax.servlet.http.LocalStrings");

    /* renamed from: a */
    public static String m61505a(String str, StringBuffer stringBuffer) {
        int i = 0;
        stringBuffer.setLength(0);
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == '%') {
                int i2 = i + 1;
                try {
                    stringBuffer.append((char) Integer.parseInt(str.substring(i2, i + 3), 16));
                    i += 2;
                } catch (NumberFormatException unused) {
                    throw new IllegalArgumentException();
                } catch (StringIndexOutOfBoundsException unused2) {
                    String substring = str.substring(i);
                    stringBuffer.append(substring);
                    if (substring.length() == 2) {
                        i = i2;
                    }
                }
            } else if (charAt != '+') {
                stringBuffer.append(charAt);
            } else {
                stringBuffer.append(' ');
            }
            i++;
        }
        return stringBuffer.toString();
    }

    public static StringBuffer getRequestURL(HttpServletRequest httpServletRequest) {
        StringBuffer stringBuffer = new StringBuffer();
        String scheme = httpServletRequest.getScheme();
        int serverPort = httpServletRequest.getServerPort();
        String requestURI = httpServletRequest.getRequestURI();
        stringBuffer.append(scheme);
        stringBuffer.append("://");
        stringBuffer.append(httpServletRequest.getServerName());
        if ((scheme.equals("http") && serverPort != 80) || (scheme.equals("https") && serverPort != 443)) {
            stringBuffer.append(':');
            stringBuffer.append(httpServletRequest.getServerPort());
        }
        stringBuffer.append(requestURI);
        return stringBuffer;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0027, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
    
        throw new java.lang.IllegalArgumentException(r4.getMessage());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Hashtable parsePostData(int r4, javax.servlet.ServletInputStream r5) {
        /*
            if (r4 > 0) goto L8
            java.util.Hashtable r4 = new java.util.Hashtable
            r4.<init>()
            return r4
        L8:
            if (r5 == 0) goto L4b
            byte[] r0 = new byte[r4]
            r1 = 0
            r2 = r1
        Le:
            int r3 = r4 - r2
            int r3 = r5.read(r0, r2, r3)     // Catch: java.io.IOException -> L40
            if (r3 <= 0) goto L32
            int r2 = r2 + r3
            int r3 = r4 - r2
            if (r3 > 0) goto Le
            java.lang.String r5 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L27
            java.lang.String r2 = "8859_1"
            r5.<init>(r0, r1, r4, r2)     // Catch: java.io.UnsupportedEncodingException -> L27
            java.util.Hashtable r4 = parseQueryString(r5)     // Catch: java.io.UnsupportedEncodingException -> L27
            return r4
        L27:
            r4 = move-exception
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r4 = r4.getMessage()
            r5.<init>(r4)
            throw r5
        L32:
            java.util.ResourceBundle r4 = javax.servlet.http.HttpUtils.f98015b     // Catch: java.io.IOException -> L40
            java.lang.String r5 = "err.io.short_read"
            java.lang.String r4 = r4.getString(r5)     // Catch: java.io.IOException -> L40
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException     // Catch: java.io.IOException -> L40
            r5.<init>(r4)     // Catch: java.io.IOException -> L40
            throw r5     // Catch: java.io.IOException -> L40
        L40:
            r4 = move-exception
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r4 = r4.getMessage()
            r5.<init>(r4)
            throw r5
        L4b:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            r4.<init>()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: javax.servlet.http.HttpUtils.parsePostData(int, javax.servlet.ServletInputStream):java.util.Hashtable");
    }

    public static Hashtable parseQueryString(String str) {
        String[] strArr;
        if (str == null) {
            throw new IllegalArgumentException();
        }
        Hashtable hashtable = new Hashtable();
        StringBuffer stringBuffer = new StringBuffer();
        StringTokenizer stringTokenizer = new StringTokenizer(str, ParameterList.f115951c);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(61);
            if (indexOf == -1) {
                throw new IllegalArgumentException();
            }
            String m61505a = m61505a(nextToken.substring(0, indexOf), stringBuffer);
            String m61505a2 = m61505a(nextToken.substring(indexOf + 1, nextToken.length()), stringBuffer);
            if (hashtable.containsKey(m61505a)) {
                String[] strArr2 = (String[]) hashtable.get(m61505a);
                strArr = new String[strArr2.length + 1];
                for (int i = 0; i < strArr2.length; i++) {
                    strArr[i] = strArr2[i];
                }
                strArr[strArr2.length] = m61505a2;
            } else {
                strArr = new String[]{m61505a2};
            }
            hashtable.put(m61505a, strArr);
        }
        return hashtable;
    }
}
