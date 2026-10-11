package org.apache.poi.openxml4j.opc;

import java.math.BigInteger;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.openxml4j.exceptions.OpenXML4JRuntimeException;

/* loaded from: classes12.dex */
public final class PackagePartName implements Comparable<PackagePartName> {
    private static final String RFC3986_PCHAR_AUTHORIZED_SUP = ":@";
    private static final String RFC3986_PCHAR_SUB_DELIMS = "!$&'()*+,;=";
    private static final String RFC3986_PCHAR_UNRESERVED_SUP = "-._~";
    private final boolean isRelationship;
    private final URI partNameURI;

    public PackagePartName(URI uri, boolean z) throws InvalidFormatException {
        if (z) {
            throwExceptionIfInvalidPartUri(uri);
        } else if (!PackagingURIHelper.PACKAGE_ROOT_URI.equals(uri)) {
            throw new OpenXML4JRuntimeException("OCP conformance must be check for ALL part name except special cases : ['/']");
        }
        this.partNameURI = uri;
        this.isRelationship = isRelationshipPartURI(uri);
    }

    private static void checkPCharCompliance(String str) throws InvalidFormatException {
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (!isDigitOrLetter(charAt) && RFC3986_PCHAR_UNRESERVED_SUP.indexOf(charAt) <= -1 && RFC3986_PCHAR_AUTHORIZED_SUP.indexOf(charAt) <= -1 && RFC3986_PCHAR_SUB_DELIMS.indexOf(charAt) <= -1) {
                if (charAt != '%') {
                    throw new InvalidFormatException("A segment shall not hold any characters other than pchar characters. [M1.6]");
                }
                if (length - i >= 2) {
                    int i2 = i + 1;
                    if (isHexDigit(str.charAt(i2))) {
                        int i3 = i + 2;
                        if (isHexDigit(str.charAt(i3))) {
                            char parseInt = (char) Integer.parseInt(str.substring(i2, i + 3), 16);
                            if (parseInt == '/' || parseInt == '\\') {
                                throw new InvalidFormatException("A segment shall not contain percent-encoded forward slash ('/'), or backward slash ('\\') characters. [M1.7]");
                            }
                            if (isDigitOrLetter(parseInt) || RFC3986_PCHAR_UNRESERVED_SUP.indexOf(parseInt) > -1) {
                                throw new InvalidFormatException("A segment shall not contain percent-encoded unreserved characters. [M1.8]");
                            }
                            i = i3;
                        }
                    }
                }
                throw new InvalidFormatException("The segment " + str + " contain invalid encoded character !");
            }
            i++;
        }
    }

    public static int compare(PackagePartName packagePartName, PackagePartName packagePartName2) {
        return compare(packagePartName == null ? null : packagePartName.getName(), packagePartName2 != null ? packagePartName2.getName() : null);
    }

    private static boolean isDigitOrLetter(char c) {
        return (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
    }

    private static boolean isHexDigit(char c) {
        return (c >= '0' && c <= '9') || (c >= 'A' && c <= 'F') || (c >= 'a' && c <= 'f');
    }

    private boolean isRelationshipPartURI(URI uri) {
        if (uri != null) {
            return uri.getPath().matches("^.*/_rels/.*\\.rels$");
        }
        throw new IllegalArgumentException("partUri");
    }

    private static void throwExceptionIfAbsoluteUri(URI uri) throws InvalidFormatException {
        if (uri.isAbsolute()) {
            throw new InvalidFormatException("Absolute URI forbidden: " + uri);
        }
    }

    private static void throwExceptionIfEmptyURI(URI uri) throws InvalidFormatException {
        if (uri == null) {
            throw new IllegalArgumentException("partURI");
        }
        String path = uri.getPath();
        if (path.length() == 0 || (path.length() == 1 && path.charAt(0) == '/')) {
            throw new InvalidFormatException("A part name shall not be empty [M1.1]: " + uri.getPath());
        }
    }

    private static void throwExceptionIfInvalidPartUri(URI uri) throws InvalidFormatException {
        if (uri == null) {
            throw new IllegalArgumentException("partUri");
        }
        throwExceptionIfEmptyURI(uri);
        throwExceptionIfAbsoluteUri(uri);
        throwExceptionIfPartNameNotStartsWithForwardSlashChar(uri);
        throwExceptionIfPartNameEndsWithForwardSlashChar(uri);
        throwExceptionIfPartNameHaveInvalidSegments(uri);
    }

    private static void throwExceptionIfPartNameEndsWithForwardSlashChar(URI uri) throws InvalidFormatException {
        String path = uri.getPath();
        if (path.length() <= 0 || path.charAt(path.length() - 1) != '/') {
            return;
        }
        throw new InvalidFormatException("A part name shall not have a forward slash as the last character [M1.5]: " + uri.getPath());
    }

    private static void throwExceptionIfPartNameHaveInvalidSegments(URI uri) throws InvalidFormatException {
        if (uri == null) {
            throw new IllegalArgumentException("partUri");
        }
        String[] split = uri.toASCIIString().replaceFirst("^/", "").split("/");
        if (split.length < 1) {
            throw new InvalidFormatException("A part name shall not have empty segments [M1.3]: " + uri.getPath());
        }
        for (String str : split) {
            if (str == null || str.isEmpty()) {
                throw new InvalidFormatException("A part name shall not have empty segments [M1.3]: " + uri.getPath());
            }
            if (str.endsWith(".")) {
                throw new InvalidFormatException("A segment shall not end with a dot ('.') character [M1.9]: " + uri.getPath());
            }
            if (str.replaceAll("\\\\.", "").isEmpty()) {
                throw new InvalidFormatException("A segment shall include at least one non-dot character. [M1.10]: " + uri.getPath());
            }
            checkPCharCompliance(str);
        }
    }

    private static void throwExceptionIfPartNameNotStartsWithForwardSlashChar(URI uri) throws InvalidFormatException {
        String path = uri.getPath();
        if (path.length() <= 0 || path.charAt(0) == '/') {
            return;
        }
        throw new InvalidFormatException("A part name shall start with a forward slash ('/') character [M1.4]: " + uri.getPath());
    }

    public boolean equals(Object obj) {
        return (obj instanceof PackagePartName) && compare(getName(), ((PackagePartName) obj).getName()) == 0;
    }

    public String getExtension() {
        int lastIndexOf;
        String path = this.partNameURI.getPath();
        return (path.length() <= 0 || (lastIndexOf = path.lastIndexOf(46)) <= -1) ? "" : path.substring(lastIndexOf + 1);
    }

    public String getName() {
        return getURI().toASCIIString();
    }

    public URI getURI() {
        return this.partNameURI;
    }

    public int hashCode() {
        return getName().toLowerCase(Locale.ROOT).hashCode();
    }

    public String toString() {
        return getName();
    }

    @Override // java.lang.Comparable
    public int compareTo(PackagePartName packagePartName) {
        return compare(this, packagePartName);
    }

    public boolean isRelationshipPartURI() {
        return this.isRelationship;
    }

    public static int compare(String str, String str2) {
        int i = 0;
        if (str == null) {
            return str2 == null ? 0 : -1;
        }
        if (str2 == null) {
            return 1;
        }
        if (str.equalsIgnoreCase(str2)) {
            return 0;
        }
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        String lowerCase2 = str2.toLowerCase(locale);
        int length = lowerCase.length();
        int length2 = lowerCase2.length();
        int i2 = 0;
        while (i < length && i2 < length2) {
            int i3 = i + 1;
            char charAt = lowerCase.charAt(i);
            int i4 = i2 + 1;
            char charAt2 = lowerCase2.charAt(i2);
            if (Character.isDigit(charAt) && Character.isDigit(charAt2)) {
                int i5 = i3 - 1;
                while (i3 < length && Character.isDigit(lowerCase.charAt(i3))) {
                    i3++;
                }
                int i6 = i4 - 1;
                while (i4 < length2 && Character.isDigit(lowerCase2.charAt(i4))) {
                    i4++;
                }
                int compareTo = new BigInteger(lowerCase.substring(i5, i3)).compareTo(new BigInteger(lowerCase2.substring(i6, i4)));
                if (compareTo != 0) {
                    return compareTo;
                }
            } else if (charAt != charAt2) {
                return charAt - charAt2;
            }
            i = i3;
            i2 = i4;
        }
        return length - length2;
    }

    public PackagePartName(String str, boolean z) throws InvalidFormatException {
        try {
            URI uri = new URI(str);
            if (z) {
                throwExceptionIfInvalidPartUri(uri);
            } else if (!PackagingURIHelper.PACKAGE_ROOT_URI.equals(uri)) {
                throw new OpenXML4JRuntimeException("OCP conformance must be check for ALL part name except special cases : ['/']");
            }
            this.partNameURI = uri;
            this.isRelationship = isRelationshipPartURI(uri);
        } catch (URISyntaxException unused) {
            throw new IllegalArgumentException("partName argmument is not a valid OPC part name !");
        }
    }
}
