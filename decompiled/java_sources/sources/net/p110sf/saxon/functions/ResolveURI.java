package net.p110sf.saxon.functions;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.StandardURIChecker;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AnyURIValue;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;
import org.apache.commons.lang3.SystemUtils;

/* loaded from: classes11.dex */
public class ResolveURI extends SystemFunction {
    /* renamed from: a */
    public static URISyntaxException m63154a(String str, String str2) {
        return new URISyntaxException(str, str2);
    }

    public static URI absoluteOrRelativeURI(String str) throws URISyntaxException {
        return new URI(str);
    }

    /* renamed from: c */
    public static String m63155c(String str) {
        try {
            String property = System.getProperty(SystemUtils.f107422c);
            if (!property.endsWith("/") && !str.startsWith("/")) {
                property = property + '/';
            }
            return new File(property).toURI().resolve(str).toString();
        } catch (Exception unused) {
            return str;
        }
    }

    public static String escapeSpaces(String str) {
        int indexOf = str.indexOf(32);
        if (indexOf < 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(indexOf == 0 ? "" : str.substring(0, indexOf));
        sb.append("%20");
        sb.append(indexOf != str.length() + (-1) ? escapeSpaces(str.substring(indexOf + 1)) : "");
        return sb.toString();
    }

    public static URI makeAbsolute(String str, String str2) throws URISyntaxException {
        URI resolve;
        StandardURIChecker standardURIChecker = StandardURIChecker.getInstance();
        if (str == null) {
            if (str2 == null) {
                throw m63154a("", "Relative and Base URI must not both be null");
            }
            URI uri = new URI(escapeSpaces(str2));
            standardURIChecker.checkThoroughly(uri);
            if (uri.isAbsolute()) {
                return uri;
            }
            throw m63154a(str2, "Relative URI not supplied, so base URI must be absolute");
        }
        if (str.startsWith("classpath:")) {
            return new URI(str);
        }
        if (str2 != null) {
            try {
                if (!str2.isEmpty()) {
                    if (!str2.startsWith("jar:") && !str2.startsWith("file:////")) {
                        if (str2.startsWith("classpath:")) {
                            URI uri2 = new URI(str);
                            if (uri2.isAbsolute()) {
                                return uri2;
                            }
                            String substring = str2.substring(10);
                            if (substring.startsWith("/")) {
                                resolve = URI.create("file://" + substring).resolve(str);
                            } else {
                                resolve = URI.create("file:///" + substring).resolve(str);
                            }
                            String substring2 = resolve.getPath().substring(1);
                            if (substring2.startsWith("../")) {
                                throw new IllegalArgumentException("Attempt to navigate above root: classpath:" + substring2);
                            }
                            return URI.create("classpath:" + substring2);
                        }
                        try {
                            URI uri3 = new URI(str2);
                            int indexOf = str2.indexOf(35);
                            if (indexOf >= 0) {
                                str2 = str2.substring(0, indexOf);
                                try {
                                    uri3 = new URI(str2);
                                    standardURIChecker.checkThoroughly(uri3);
                                } catch (URISyntaxException e) {
                                    throw m63154a(str2, "Invalid base URI: " + e.getMessage());
                                }
                            }
                            try {
                                URI absoluteOrRelativeURI = absoluteOrRelativeURI(str);
                                standardURIChecker.checkThoroughly(absoluteOrRelativeURI);
                                return absoluteOrRelativeURI.isAbsolute() ? absoluteOrRelativeURI : str.isEmpty() ? uri3 : uri3.resolve(str);
                            } catch (URISyntaxException e2) {
                                throw m63154a(str2, "Invalid relative URI: " + e2.getMessage());
                            }
                        } catch (URISyntaxException e3) {
                            throw m63154a(str2, "Invalid base URI: " + e3.getMessage());
                        }
                    }
                    try {
                        return new URL(new URL(str2), str).toURI();
                    } catch (MalformedURLException e4) {
                        throw m63154a(str2 + " " + str, e4.getMessage());
                    }
                }
            } catch (IllegalArgumentException unused) {
                throw m63154a(str, "Cannot resolve URI against base " + Err.wrap(str2));
            }
        }
        URI uri4 = new URI(str);
        if (uri4.isAbsolute()) {
            return uri4;
        }
        String tryToExpand = tryToExpand(str2);
        return !tryToExpand.equals(str2) ? makeAbsolute(str, tryToExpand) : uri4;
    }

    public static String tryToExpand(String str) {
        if (str == null || str.isEmpty()) {
            return m63155c("");
        }
        try {
            new URL(str);
            return str;
        } catch (MalformedURLException unused) {
            return m63155c(str);
        }
    }

    public static String unescapeSpaces(String str) {
        return str.replace("%20", " ");
    }

    /* renamed from: b */
    public final AnyURIValue m63156b(String str, String str2, XPathContext xPathContext) throws XPathException {
        String str3;
        boolean z;
        String str4 = str2;
        boolean z2 = true;
        if (str4.contains(" ")) {
            str4 = escapeSpaces(str2);
            str3 = str;
            z = true;
        } else {
            str3 = str;
            z = false;
        }
        if (str3.contains(" ")) {
            str3 = escapeSpaces(str);
            z = true;
        }
        try {
            if (absoluteOrRelativeURI(str4).isAbsolute()) {
                return new AnyURIValue(str4);
            }
            try {
                URI uri = new URI(str3);
                if (!uri.isAbsolute()) {
                    throw new XPathException("Base URI " + Err.wrap(str3) + " is not an absolute URI", "FORG0002", xPathContext);
                }
                if (uri.isOpaque() && !str3.startsWith("jar:")) {
                    throw new XPathException("Base URI " + Err.wrap(str3) + " is a non-hierarchic URI", "FORG0002", xPathContext);
                }
                String rawFragment = uri.getRawFragment();
                if (rawFragment != null && !rawFragment.isEmpty()) {
                    throw new XPathException("Base URI " + Err.wrap(str3) + " contains a fragment identifier", "FORG0002", xPathContext);
                }
                if (!str3.startsWith("jar:") && uri.getPath() != null && uri.getPath().isEmpty()) {
                    try {
                        str3 = new URI(uri.getScheme(), uri.getUserInfo(), uri.getHost(), uri.getPort(), "/", uri.getQuery(), uri.getFragment()).toString();
                    } catch (URISyntaxException unused) {
                        throw new XPathException("Failed to parse JAR scheme URI " + Err.wrap(uri.toASCIIString()), "FORG0002", xPathContext);
                    }
                }
                try {
                    URI makeAbsolute = makeAbsolute(str4, str3);
                    if (!makeAbsolute.toASCIIString().startsWith("file:////")) {
                        makeAbsolute = makeAbsolute.normalize();
                    }
                    if (!str3.contains("%") && !str4.contains("%")) {
                        z2 = false;
                    }
                    String aSCIIString = z2 ? makeAbsolute.toASCIIString() : makeAbsolute.toString();
                    if (z) {
                        aSCIIString = unescapeSpaces(aSCIIString);
                    }
                    while (aSCIIString.endsWith(Constants.ATTRVAL_PARENT)) {
                        aSCIIString = aSCIIString.substring(0, aSCIIString.length() - 2);
                    }
                    while (aSCIIString.endsWith("../")) {
                        aSCIIString = aSCIIString.substring(0, aSCIIString.length() - 3);
                    }
                    return new AnyURIValue(aSCIIString);
                } catch (URISyntaxException e) {
                    throw new XPathException(e.getMessage(), "FORG0002");
                }
            } catch (URISyntaxException e2) {
                throw new XPathException("Base URI " + Err.wrap(str3) + " is invalid: " + e2.getMessage(), "FORG0002", xPathContext);
            }
        } catch (URISyntaxException e3) {
            throw new XPathException("Relative URI " + Err.wrap(str4) + " is invalid: " + e3.getMessage(), "FORG0002", xPathContext);
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        String staticBaseUriString;
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        if (atomicValue == null) {
            return EmptySequence.getInstance();
        }
        String stringValue = atomicValue.getStringValue();
        if (getArity() == 2) {
            staticBaseUriString = sequenceArr[1].head().getStringValue();
        } else {
            staticBaseUriString = getStaticBaseUriString();
            if (staticBaseUriString == null) {
                throw new XPathException("Base URI in static context of resolve-uri() is unknown", "FONS0005", xPathContext);
            }
        }
        return m63156b(staticBaseUriString, stringValue, xPathContext);
    }
}
