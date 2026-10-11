package com.sun.org.apache.xml.internal.utils;

import com.sun.org.apache.xml.internal.res.XMLMessages;
import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes10.dex */
public class URI implements Serializable {
    private static boolean DEBUG = false;
    private static final String MARK_CHARACTERS = "-_.!~*'() ";
    private static final String RESERVED_CHARACTERS = ";/?:@&=+$,";
    private static final String SCHEME_CHARACTERS = "+-.";
    private static final String USERINFO_CHARACTERS = ";:&=+$,";
    static final long serialVersionUID = 7096266377907081897L;
    private String m_fragment;
    private String m_host;
    private String m_path;
    private int m_port;
    private String m_queryString;
    private String m_scheme;
    private String m_userinfo;

    /* loaded from: classes10.dex */
    public static class MalformedURIException extends IOException {
        public MalformedURIException() {
        }

        public MalformedURIException(String str) {
            super(str);
        }
    }

    public URI() {
        this.m_scheme = null;
        this.m_userinfo = null;
        this.m_host = null;
        this.m_port = -1;
        this.m_path = null;
        this.m_queryString = null;
        this.m_fragment = null;
    }

    private void initialize(URI uri) {
        this.m_scheme = uri.getScheme();
        this.m_userinfo = uri.getUserinfo();
        this.m_host = uri.getHost();
        this.m_port = uri.getPort();
        this.m_path = uri.getPath();
        this.m_queryString = uri.getQueryString();
        this.m_fragment = uri.getFragment();
    }

    private void initializeAuthority(String str) throws MalformedURIException {
        String str2;
        int i;
        char c;
        int length = str.length();
        int i2 = -1;
        if (str.indexOf(64, 0) != -1) {
            int i3 = 0;
            c = 0;
            while (i3 < length) {
                c = str.charAt(i3);
                if (c == '@') {
                    break;
                } else {
                    i3++;
                }
            }
            str2 = str.substring(0, i3);
            i = i3 + 1;
        } else {
            str2 = null;
            i = 0;
            c = 0;
        }
        int i4 = i;
        while (i4 < length && (c = str.charAt(i4)) != ':') {
            i4++;
        }
        String substring = str.substring(i, i4);
        if (substring.length() > 0 && c == ':') {
            int i5 = i4 + 1;
            int i6 = i5;
            while (i6 < length) {
                i6++;
            }
            String substring2 = str.substring(i5, i6);
            if (substring2.length() > 0) {
                for (int i7 = 0; i7 < substring2.length(); i7++) {
                    if (!isDigit(substring2.charAt(i7))) {
                        throw new MalformedURIException(substring2 + " is invalid. Port should only contain digits!");
                    }
                }
                try {
                    i2 = Integer.parseInt(substring2);
                } catch (NumberFormatException unused) {
                }
            }
        }
        setHost(substring);
        setPort(i2);
        setUserinfo(str2);
    }

    private void initializePath(String str) throws MalformedURIException {
        if (str == null) {
            throw new MalformedURIException("Cannot initialize path from null string!");
        }
        int length = str.length();
        int i = 0;
        char c = 0;
        while (i < length && (c = str.charAt(i)) != '?' && c != '#') {
            if (c == '%') {
                int i2 = i + 2;
                if (i2 >= length || !isHex(str.charAt(i + 1)) || !isHex(str.charAt(i2))) {
                    throw new MalformedURIException(XMLMessages.createXMLMessage("ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE", null));
                }
            } else if (!isReservedCharacter(c) && !isUnreservedCharacter(c) && '\\' != c) {
                throw new MalformedURIException(XMLMessages.createXMLMessage("ER_PATH_INVALID_CHAR", new Object[]{String.valueOf(c)}));
            }
            i++;
        }
        this.m_path = str.substring(0, i);
        if (c == '?') {
            int i3 = i + 1;
            int i4 = i3;
            while (i4 < length) {
                c = str.charAt(i4);
                if (c == '#') {
                    break;
                }
                if (c == '%') {
                    int i5 = i4 + 2;
                    if (i5 >= length || !isHex(str.charAt(i4 + 1)) || !isHex(str.charAt(i5))) {
                        throw new MalformedURIException("Query string contains invalid escape sequence!");
                    }
                } else if (!isReservedCharacter(c) && !isUnreservedCharacter(c)) {
                    throw new MalformedURIException("Query string contains invalid character:" + c);
                }
                i4++;
            }
            this.m_queryString = str.substring(i3, i4);
            i = i4;
        }
        if (c == '#') {
            int i6 = i + 1;
            int i7 = i6;
            while (i7 < length) {
                char charAt = str.charAt(i7);
                if (charAt == '%') {
                    int i8 = i7 + 2;
                    if (i8 >= length || !isHex(str.charAt(i7 + 1)) || !isHex(str.charAt(i8))) {
                        throw new MalformedURIException("Fragment contains invalid escape sequence!");
                    }
                } else if (!isReservedCharacter(charAt) && !isUnreservedCharacter(charAt)) {
                    throw new MalformedURIException("Fragment contains invalid character:" + charAt);
                }
                i7++;
            }
            this.m_fragment = str.substring(i6, i7);
        }
    }

    private void initializeScheme(String str) throws MalformedURIException {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == ':' || charAt == '/' || charAt == '?' || charAt == '#') {
                break;
            } else {
                i++;
            }
        }
        String substring = str.substring(0, i);
        if (substring.length() == 0) {
            throw new MalformedURIException(XMLMessages.createXMLMessage("ER_NO_SCHEME_INURI", null));
        }
        setScheme(substring);
    }

    private static boolean isAlpha(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
    }

    private static boolean isAlphanum(char c) {
        return isAlpha(c) || isDigit(c);
    }

    public static boolean isConformantSchemeName(String str) {
        if (str == null || str.trim().length() == 0 || !isAlpha(str.charAt(0))) {
            return false;
        }
        for (int i = 1; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (!isAlphanum(charAt) && SCHEME_CHARACTERS.indexOf(charAt) == -1) {
                return false;
            }
        }
        return true;
    }

    private static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    private static boolean isHex(char c) {
        return isDigit(c) || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F');
    }

    private static boolean isReservedCharacter(char c) {
        return RESERVED_CHARACTERS.indexOf(c) != -1;
    }

    private static boolean isURIString(String str) {
        if (str == null) {
            return false;
        }
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '%') {
                int i2 = i + 2;
                if (i2 >= length || !isHex(str.charAt(i + 1)) || !isHex(str.charAt(i2))) {
                    return false;
                }
                i = i2;
            } else if (!isReservedCharacter(charAt) && !isUnreservedCharacter(charAt)) {
                return false;
            }
            i++;
        }
        return true;
    }

    private static boolean isUnreservedCharacter(char c) {
        return isAlphanum(c) || MARK_CHARACTERS.indexOf(c) != -1;
    }

    public static boolean isWellFormedAddress(String str) {
        String trim;
        int length;
        int i;
        if (str == null || (length = (trim = str.trim()).length()) == 0 || length > 255 || trim.startsWith(".") || trim.startsWith("-")) {
            return false;
        }
        int lastIndexOf = trim.lastIndexOf(46);
        if (trim.endsWith(".")) {
            lastIndexOf = trim.substring(0, lastIndexOf).lastIndexOf(46);
        }
        int i2 = lastIndexOf + 1;
        if (i2 >= length || !isDigit(str.charAt(i2))) {
            for (int i3 = 0; i3 < length; i3++) {
                char charAt = trim.charAt(i3);
                if (charAt == '.') {
                    if (!isAlphanum(trim.charAt(i3 - 1))) {
                        return false;
                    }
                    int i4 = i3 + 1;
                    if (i4 < length && !isAlphanum(trim.charAt(i4))) {
                        return false;
                    }
                } else if (!isAlphanum(charAt) && charAt != '-') {
                    return false;
                }
            }
        } else {
            int i5 = 0;
            for (int i6 = 0; i6 < length; i6++) {
                char charAt2 = trim.charAt(i6);
                if (charAt2 == '.') {
                    if (!isDigit(trim.charAt(i6 - 1)) || ((i = i6 + 1) < length && !isDigit(trim.charAt(i)))) {
                        return false;
                    }
                    i5++;
                } else if (!isDigit(charAt2)) {
                    return false;
                }
            }
            if (i5 != 3) {
                return false;
            }
        }
        return true;
    }

    public void appendPath(String str) throws MalformedURIException {
        if (str == null || str.trim().length() == 0) {
            return;
        }
        if (!isURIString(str)) {
            throw new MalformedURIException(XMLMessages.createXMLMessage("ER_PATH_INVALID_CHAR", new Object[]{str}));
        }
        String str2 = this.m_path;
        if (str2 == null || str2.trim().length() == 0) {
            if (str.startsWith("/")) {
                this.m_path = str;
                return;
            }
            this.m_path = "/" + str;
            return;
        }
        if (this.m_path.endsWith("/")) {
            if (str.startsWith("/")) {
                this.m_path = this.m_path.concat(str.substring(1));
                return;
            } else {
                this.m_path = this.m_path.concat(str);
                return;
            }
        }
        if (str.startsWith("/")) {
            this.m_path = this.m_path.concat(str);
            return;
        }
        this.m_path = this.m_path.concat("/" + str);
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (!(obj instanceof URI)) {
            return false;
        }
        URI uri = (URI) obj;
        String str7 = this.m_scheme;
        if (!(str7 == null && uri.m_scheme == null) && (str7 == null || (str = uri.m_scheme) == null || !str7.equals(str))) {
            return false;
        }
        String str8 = this.m_userinfo;
        if (!(str8 == null && uri.m_userinfo == null) && (str8 == null || (str2 = uri.m_userinfo) == null || !str8.equals(str2))) {
            return false;
        }
        String str9 = this.m_host;
        if ((!(str9 == null && uri.m_host == null) && (str9 == null || (str3 = uri.m_host) == null || !str9.equals(str3))) || this.m_port != uri.m_port) {
            return false;
        }
        String str10 = this.m_path;
        if (!(str10 == null && uri.m_path == null) && (str10 == null || (str4 = uri.m_path) == null || !str10.equals(str4))) {
            return false;
        }
        String str11 = this.m_queryString;
        if (!(str11 == null && uri.m_queryString == null) && (str11 == null || (str5 = uri.m_queryString) == null || !str11.equals(str5))) {
            return false;
        }
        String str12 = this.m_fragment;
        if (str12 == null && uri.m_fragment == null) {
            return true;
        }
        return (str12 == null || (str6 = uri.m_fragment) == null || !str12.equals(str6)) ? false : true;
    }

    public String getFragment() {
        return this.m_fragment;
    }

    public String getHost() {
        return this.m_host;
    }

    public String getPath(boolean z, boolean z2) {
        StringBuffer stringBuffer = new StringBuffer(this.m_path);
        if (z && this.m_queryString != null) {
            stringBuffer.append('?');
            stringBuffer.append(this.m_queryString);
        }
        if (z2 && this.m_fragment != null) {
            stringBuffer.append('#');
            stringBuffer.append(this.m_fragment);
        }
        return stringBuffer.toString();
    }

    public int getPort() {
        return this.m_port;
    }

    public String getQueryString() {
        return this.m_queryString;
    }

    public String getScheme() {
        return this.m_scheme;
    }

    public String getSchemeSpecificPart() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.m_userinfo != null || this.m_host != null || this.m_port != -1) {
            stringBuffer.append("//");
        }
        String str = this.m_userinfo;
        if (str != null) {
            stringBuffer.append(str);
            stringBuffer.append('@');
        }
        String str2 = this.m_host;
        if (str2 != null) {
            stringBuffer.append(str2);
        }
        if (this.m_port != -1) {
            stringBuffer.append(':');
            stringBuffer.append(this.m_port);
        }
        String str3 = this.m_path;
        if (str3 != null) {
            stringBuffer.append(str3);
        }
        if (this.m_queryString != null) {
            stringBuffer.append('?');
            stringBuffer.append(this.m_queryString);
        }
        if (this.m_fragment != null) {
            stringBuffer.append('#');
            stringBuffer.append(this.m_fragment);
        }
        return stringBuffer.toString();
    }

    public String getUserinfo() {
        return this.m_userinfo;
    }

    public boolean isGenericURI() {
        return this.m_host != null;
    }

    public void setFragment(String str) throws MalformedURIException {
        if (str == null) {
            this.m_fragment = null;
            return;
        }
        if (!isGenericURI()) {
            throw new MalformedURIException(XMLMessages.createXMLMessage("ER_FRAG_FOR_GENERIC_URI", null));
        }
        if (getPath() == null) {
            throw new MalformedURIException(XMLMessages.createXMLMessage("ER_FRAG_WHEN_PATH_NULL", null));
        }
        if (!isURIString(str)) {
            throw new MalformedURIException(XMLMessages.createXMLMessage("ER_FRAG_INVALID_CHAR", null));
        }
        this.m_fragment = str;
    }

    public void setHost(String str) throws MalformedURIException {
        if (str == null || str.trim().length() == 0) {
            this.m_host = str;
            this.m_userinfo = null;
            this.m_port = -1;
        } else if (!isWellFormedAddress(str)) {
            throw new MalformedURIException(XMLMessages.createXMLMessage("ER_HOST_ADDRESS_NOT_WELLFORMED", null));
        }
        this.m_host = str;
    }

    public void setPath(String str) throws MalformedURIException {
        if (str != null) {
            initializePath(str);
            return;
        }
        this.m_path = null;
        this.m_queryString = null;
        this.m_fragment = null;
    }

    public void setPort(int i) throws MalformedURIException {
        if (i < 0 || i > 65535) {
            if (i != -1) {
                throw new MalformedURIException(XMLMessages.createXMLMessage("ER_INVALID_PORT", null));
            }
        } else if (this.m_host == null) {
            throw new MalformedURIException(XMLMessages.createXMLMessage("ER_PORT_WHEN_HOST_NULL", null));
        }
        this.m_port = i;
    }

    public void setQueryString(String str) throws MalformedURIException {
        if (str == null) {
            this.m_queryString = null;
            return;
        }
        if (!isGenericURI()) {
            throw new MalformedURIException("Query string can only be set for a generic URI!");
        }
        if (getPath() == null) {
            throw new MalformedURIException("Query string cannot be set when path is null!");
        }
        if (!isURIString(str)) {
            throw new MalformedURIException("Query string contains invalid character!");
        }
        this.m_queryString = str;
    }

    public void setScheme(String str) throws MalformedURIException {
        if (str == null) {
            throw new MalformedURIException(XMLMessages.createXMLMessage("ER_SCHEME_FROM_NULL_STRING", null));
        }
        if (!isConformantSchemeName(str)) {
            throw new MalformedURIException(XMLMessages.createXMLMessage("ER_SCHEME_NOT_CONFORMANT", null));
        }
        this.m_scheme = str.toLowerCase();
    }

    public void setUserinfo(String str) throws MalformedURIException {
        if (str == null) {
            this.m_userinfo = null;
        } else {
            if (this.m_host == null) {
                throw new MalformedURIException("Userinfo cannot be set when host is null!");
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (charAt == '%') {
                    int i2 = i + 2;
                    if (i2 >= length || !isHex(str.charAt(i + 1)) || !isHex(str.charAt(i2))) {
                        throw new MalformedURIException("Userinfo contains invalid escape sequence!");
                    }
                } else if (!isUnreservedCharacter(charAt) && USERINFO_CHARACTERS.indexOf(charAt) == -1) {
                    throw new MalformedURIException("Userinfo contains invalid character:" + charAt);
                }
            }
        }
        this.m_userinfo = str;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.m_scheme;
        if (str != null) {
            stringBuffer.append(str);
            stringBuffer.append(':');
        }
        stringBuffer.append(getSchemeSpecificPart());
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a6, code lost:
    
        initializeAuthority(r11.substring(2, r6));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void initialize(com.sun.org.apache.xml.internal.utils.URI r10, java.lang.String r11) throws com.sun.org.apache.xml.internal.utils.URI.MalformedURIException {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sun.org.apache.xml.internal.utils.URI.initialize(com.sun.org.apache.xml.internal.utils.URI, java.lang.String):void");
    }

    public URI(URI uri) {
        this.m_scheme = null;
        this.m_userinfo = null;
        this.m_host = null;
        this.m_port = -1;
        this.m_path = null;
        this.m_queryString = null;
        this.m_fragment = null;
        initialize(uri);
    }

    public String getPath() {
        return this.m_path;
    }

    public URI(String str) throws MalformedURIException {
        this((URI) null, str);
    }

    public URI(URI uri, String str) throws MalformedURIException {
        this.m_scheme = null;
        this.m_userinfo = null;
        this.m_host = null;
        this.m_port = -1;
        this.m_path = null;
        this.m_queryString = null;
        this.m_fragment = null;
        initialize(uri, str);
    }

    public URI(String str, String str2) throws MalformedURIException {
        this.m_scheme = null;
        this.m_userinfo = null;
        this.m_host = null;
        this.m_port = -1;
        this.m_path = null;
        this.m_queryString = null;
        this.m_fragment = null;
        if (str != null && str.trim().length() != 0) {
            if (str2 != null && str2.trim().length() != 0) {
                setScheme(str);
                setPath(str2);
                return;
            }
            throw new MalformedURIException("Cannot construct URI with null/empty scheme-specific part!");
        }
        throw new MalformedURIException("Cannot construct URI with null/empty scheme!");
    }

    public URI(String str, String str2, String str3, String str4, String str5) throws MalformedURIException {
        this(str, null, str2, -1, str3, str4, str5);
    }

    public URI(String str, String str2, String str3, int i, String str4, String str5, String str6) throws MalformedURIException {
        this.m_scheme = null;
        this.m_userinfo = null;
        this.m_host = null;
        this.m_port = -1;
        this.m_path = null;
        this.m_queryString = null;
        this.m_fragment = null;
        if (str != null && str.trim().length() != 0) {
            if (str3 == null) {
                if (str2 != null) {
                    throw new MalformedURIException(XMLMessages.createXMLMessage("ER_NO_USERINFO_IF_NO_HOST", null));
                }
                if (i != -1) {
                    throw new MalformedURIException(XMLMessages.createXMLMessage("ER_NO_PORT_IF_NO_HOST", null));
                }
            }
            if (str4 != null) {
                if (str4.indexOf(63) != -1 && str5 != null) {
                    throw new MalformedURIException(XMLMessages.createXMLMessage("ER_NO_QUERY_STRING_IN_PATH", null));
                }
                if (str4.indexOf(35) != -1 && str6 != null) {
                    throw new MalformedURIException(XMLMessages.createXMLMessage("ER_NO_FRAGMENT_STRING_IN_PATH", null));
                }
            }
            setScheme(str);
            setHost(str3);
            setPort(i);
            setUserinfo(str2);
            setPath(str4);
            setQueryString(str5);
            setFragment(str6);
            return;
        }
        throw new MalformedURIException(XMLMessages.createXMLMessage("ER_SCHEME_REQUIRED", null));
    }
}
