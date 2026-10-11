package org.apache.xml.serialize;

import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.google.android.exoplayer2.text.webvtt.WebvttDecoder;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Hashtable;
import java.util.Locale;
import org.apache.xerces.dom.DOMMessageFormatter;

/* loaded from: classes13.dex */
public final class HTMLdtd {
    public static final String HTMLPublicId = "-//W3C//DTD HTML 4.01//EN";
    public static final String HTMLSystemId = "http://www.w3.org/TR/html4/strict.dtd";
    public static final String XHTMLPublicId = "-//W3C//DTD XHTML 1.0 Strict//EN";
    public static final String XHTMLSystemId = "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd";

    /* renamed from: a */
    public static Hashtable f113663a = null;

    /* renamed from: b */
    public static Hashtable f113664b = null;

    /* renamed from: c */
    public static Hashtable f113665c = null;

    /* renamed from: d */
    public static Hashtable f113666d = new Hashtable();

    /* renamed from: e */
    public static final String f113667e = "HTMLEntities.res";

    /* renamed from: f */
    public static final int f113668f = 1;

    /* renamed from: g */
    public static final int f113669g = 2;

    /* renamed from: h */
    public static final int f113670h = 4;

    /* renamed from: i */
    public static final int f113671i = 8;

    /* renamed from: j */
    public static final int f113672j = 17;

    /* renamed from: k */
    public static final int f113673k = 32;

    /* renamed from: l */
    public static final int f113674l = 64;

    /* renamed from: m */
    public static final int f113675m = 128;

    /* renamed from: n */
    public static final int f113676n = 256;

    /* renamed from: o */
    public static final int f113677o = 512;

    /* renamed from: p */
    public static final int f113678p = 16384;

    /* renamed from: q */
    public static /* synthetic */ Class f113679q;

    static {
        m70682c("ADDRESS", 64);
        m70682c("AREA", 17);
        m70682c("BASE", 49);
        m70682c("BASEFONT", 17);
        m70682c("BLOCKQUOTE", 64);
        m70682c("BODY", 8);
        m70682c("BR", 17);
        m70682c("COL", 17);
        m70682c("COLGROUP", 522);
        m70682c("DD", 137);
        m70682c("DIV", 64);
        m70682c("DL", 66);
        m70682c("DT", 137);
        m70682c("FIELDSET", 64);
        m70682c("FORM", 64);
        m70682c("FRAME", 25);
        m70682c("H1", 64);
        m70682c("H2", 64);
        m70682c("H3", 64);
        m70682c("H4", 64);
        m70682c("H5", 64);
        m70682c("H6", 64);
        m70682c("HEAD", 10);
        m70682c("HR", 81);
        m70682c("HTML", 10);
        m70682c("IMG", 17);
        m70682c("INPUT", 17);
        m70682c("ISINDEX", 49);
        m70682c("LI", 265);
        m70682c("LINK", 49);
        m70682c(HlsPlaylistParser.f26120C0, 32);
        m70682c("META", 49);
        m70682c("OL", 66);
        m70682c("OPTGROUP", 2);
        m70682c("OPTION", 265);
        m70682c("P", 328);
        m70682c("PARAM", 17);
        m70682c("PRE", 68);
        m70682c("SCRIPT", 36);
        m70682c("NOSCRIPT", 36);
        m70682c("SELECT", 2);
        m70682c(WebvttDecoder.f27273w, 36);
        m70682c("TABLE", 66);
        m70682c("TBODY", 522);
        m70682c("TD", 16392);
        m70682c("TEXTAREA", 4);
        m70682c("TFOOT", 522);
        m70682c("TH", 16392);
        m70682c("THEAD", 522);
        m70682c("TITLE", 32);
        m70682c("TR", 522);
        m70682c("UL", 66);
        f113665c = new Hashtable();
        m70680a("AREA", "href");
        m70680a("BUTTON", "disabled");
        m70680a("DIR", "compact");
        m70680a("DL", "compact");
        m70680a("FRAME", "noresize");
        m70680a("HR", "noshade");
        m70680a(ShapeLinkType.LINK_IMAGE, "ismap");
        m70681b("INPUT", new String[]{"defaultchecked", "checked", "readonly", "disabled"});
        m70680a("LINK", "link");
        m70680a("MENU", "compact");
        m70680a("OBJECT", "declare");
        m70680a("OL", "compact");
        m70680a("OPTGROUP", "disabled");
        m70681b("OPTION", new String[]{"default-selected", "selected", "disabled"});
        m70680a("SCRIPT", "defer");
        m70681b("SELECT", new String[]{Constants.ATTRVAL_MULTI, "disabled"});
        m70680a(WebvttDecoder.f27273w, "disabled");
        m70680a("TD", "nowrap");
        m70680a("TH", "nowrap");
        m70681b("TEXTAREA", new String[]{"disabled", "readonly"});
        m70680a("UL", "compact");
        m70684e();
    }

    /* renamed from: a */
    public static void m70680a(String str, String str2) {
        m70681b(str, new String[]{str2});
    }

    /* renamed from: b */
    public static void m70681b(String str, String[] strArr) {
        f113665c.put(str, strArr);
    }

    /* renamed from: c */
    public static void m70682c(String str, int i) {
        f113666d.put(str, new Integer(i));
    }

    public static int charFromName(String str) {
        m70684e();
        Object obj = f113664b.get(str);
        if (obj == null || !(obj instanceof Integer)) {
            return -1;
        }
        return ((Integer) obj).intValue();
    }

    public static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* renamed from: d */
    public static void m70683d(String str, char c) {
        if (f113664b.get(str) == null) {
            f113664b.put(str, new Integer(c));
            f113663a.put(new Integer(c), str);
        }
    }

    /* renamed from: e */
    public static void m70684e() {
        int indexOf;
        if (f113664b != null) {
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                f113664b = new Hashtable();
                f113663a = new Hashtable();
                Class cls = f113679q;
                if (cls == null) {
                    cls = class$("org.apache.xml.serialize.HTMLdtd");
                    f113679q = cls;
                }
                InputStream resourceAsStream = cls.getResourceAsStream(f113667e);
                if (resourceAsStream == null) {
                    throw new RuntimeException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ResourceNotFound", new Object[]{f113667e}));
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, "ASCII"));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        resourceAsStream.close();
                        try {
                            resourceAsStream.close();
                            return;
                        } catch (Exception unused) {
                            return;
                        }
                    } else if (readLine.length() != 0 && readLine.charAt(0) != '#' && (indexOf = readLine.indexOf(32)) > 1) {
                        String substring = readLine.substring(0, indexOf);
                        int i = indexOf + 1;
                        if (i < readLine.length()) {
                            String substring2 = readLine.substring(i);
                            int indexOf2 = substring2.indexOf(32);
                            if (indexOf2 > 0) {
                                substring2 = substring2.substring(0, indexOf2);
                            }
                            m70683d(substring, (char) Integer.parseInt(substring2));
                        }
                    }
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            throw new RuntimeException(DOMMessageFormatter.formatMessage("http://apache.org/xml/serializer", "ResourceNotLoaded", new Object[]{f113667e, e.toString()}));
        }
    }

    /* renamed from: f */
    public static boolean m70685f(String str, int i) {
        Integer num = (Integer) f113666d.get(str.toUpperCase(Locale.ENGLISH));
        return num != null && (num.intValue() & i) == i;
    }

    public static String fromChar(int i) {
        if (i > 65535) {
            return null;
        }
        m70684e();
        return (String) f113663a.get(new Integer(i));
    }

    public static boolean isBoolean(String str, String str2) {
        String[] strArr = (String[]) f113665c.get(str.toUpperCase(Locale.ENGLISH));
        if (strArr == null) {
            return false;
        }
        for (String str3 : strArr) {
            if (str3.equalsIgnoreCase(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isClosing(String str, String str2) {
        if (str2.equalsIgnoreCase("HEAD")) {
            return !m70685f(str, 32);
        }
        if (str2.equalsIgnoreCase("P")) {
            return m70685f(str, 64);
        }
        if (str2.equalsIgnoreCase("DT") || str2.equalsIgnoreCase("DD")) {
            return m70685f(str, 128);
        }
        if (str2.equalsIgnoreCase("LI") || str2.equalsIgnoreCase("OPTION")) {
            return m70685f(str, 256);
        }
        if (str2.equalsIgnoreCase("THEAD") || str2.equalsIgnoreCase("TFOOT") || str2.equalsIgnoreCase("TBODY") || str2.equalsIgnoreCase("TR") || str2.equalsIgnoreCase("COLGROUP")) {
            return m70685f(str, 512);
        }
        if (str2.equalsIgnoreCase("TH") || str2.equalsIgnoreCase("TD")) {
            return m70685f(str, 16384);
        }
        return false;
    }

    public static boolean isElementContent(String str) {
        return m70685f(str, 2);
    }

    public static boolean isEmptyTag(String str) {
        return m70685f(str, 17);
    }

    public static boolean isOnlyOpening(String str) {
        return m70685f(str, 1);
    }

    public static boolean isOptionalClosing(String str) {
        return m70685f(str, 8);
    }

    public static boolean isPreserveSpace(String str) {
        return m70685f(str, 4);
    }

    public static boolean isURI(String str, String str2) {
        return str2.equalsIgnoreCase("href") || str2.equalsIgnoreCase(Constant.SRC_TAG);
    }
}
