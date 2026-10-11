package org.json;

import com.google.android.exoplayer2.text.webvtt.WebvttCueParser;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.util.Iterator;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes13.dex */
public class XML {
    public static final Character AMP = '&';
    public static final Character APOS = Character.valueOf(Chars.QUOTE);
    public static final Character BANG = Character.valueOf(PublicSuffixDatabase.f103895g);

    /* renamed from: EQ */
    public static final Character f113962EQ = '=';

    /* renamed from: GT */
    public static final Character f113963GT = '>';

    /* renamed from: LT */
    public static final Character f113964LT = '<';
    public static final Character QUEST = '?';
    public static final Character QUOT = '\"';
    public static final Character SLASH = '/';

    /* renamed from: org.json.XML$a */
    /* loaded from: classes13.dex */
    public static class C20244a implements Iterable<Integer> {

        /* renamed from: e */
        public final /* synthetic */ String f113965e;

        /* renamed from: org.json.XML$a$a */
        /* loaded from: classes13.dex */
        public class a implements Iterator<Integer> {

            /* renamed from: e */
            public int f113966e = 0;

            /* renamed from: f */
            public int f113967f;

            public a() {
                this.f113967f = C20244a.this.f113965e.length();
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Integer next() {
                int codePointAt = C20244a.this.f113965e.codePointAt(this.f113966e);
                this.f113966e += Character.charCount(codePointAt);
                return Integer.valueOf(codePointAt);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f113966e < this.f113967f;
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public C20244a(String str) {
            this.f113965e = str;
        }

        @Override // java.lang.Iterable
        public Iterator<Integer> iterator() {
            return new a();
        }
    }

    /* renamed from: a */
    public static Iterable<Integer> m71055a(String str) {
        return new C20244a(str);
    }

    /* renamed from: b */
    public static boolean m71056b(int i) {
        return !(!Character.isISOControl(i) || i == 9 || i == 10 || i == 13) || ((i < 32 || i > 55295) && ((i < 57344 || i > 65533) && (i < 65536 || i > 1114111)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x00ef, code lost:
    
        r7 = r10.nextToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00f5, code lost:
    
        if ((r7 instanceof java.lang.String) == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00f7, code lost:
    
        if (r13 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00f9, code lost:
    
        r7 = unescape((java.lang.String) r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0100, code lost:
    
        r7 = stringToValue((java.lang.String) r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0110, code lost:
    
        throw r10.syntaxError("Missing value");
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m71057c(org.json.XMLTokener r10, org.json.JSONObject r11, java.lang.String r12, boolean r13) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.json.XML.m71057c(org.json.XMLTokener, org.json.JSONObject, java.lang.String, boolean):boolean");
    }

    public static String escape(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        Iterator<Integer> it2 = m71055a(str).iterator();
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            if (intValue == 34) {
                sb.append(SerializerConstants.ENTITY_QUOT);
            } else if (intValue == 60) {
                sb.append("&lt;");
            } else if (intValue == 62) {
                sb.append("&gt;");
            } else if (intValue == 38) {
                sb.append("&amp;");
            } else if (intValue == 39) {
                sb.append("&apos;");
            } else if (m71056b(intValue)) {
                sb.append("&#x");
                sb.append(Integer.toHexString(intValue));
                sb.append(AndroidTreeView.f47214k);
            } else {
                sb.appendCodePoint(intValue);
            }
        }
        return sb.toString();
    }

    public static void noSpace(String str) throws JSONException {
        int length = str.length();
        if (length == 0) {
            throw new JSONException("Empty string.");
        }
        for (int i = 0; i < length; i++) {
            if (Character.isWhitespace(str.charAt(i))) {
                throw new JSONException(CloudStorageConstants.SINGLE_QUOTES + str + "' contains a space character.");
            }
        }
    }

    public static Object stringToValue(String str) {
        Object stringToValue = JSONObject.stringToValue(str);
        return stringToValue instanceof String ? unescape((String) stringToValue) : stringToValue;
    }

    public static JSONObject toJSONObject(String str) throws JSONException {
        return toJSONObject(str, false);
    }

    public static String toString(Object obj) throws JSONException {
        return toString(obj, null);
    }

    public static String unescape(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        int i = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '&') {
                int indexOf = str.indexOf(59, i);
                if (indexOf > i) {
                    String substring = str.substring(i + 1, indexOf);
                    if (substring.charAt(0) == '#') {
                        sb.appendCodePoint(substring.charAt(1) == 'x' ? Integer.parseInt(substring.substring(2), 16) : Integer.parseInt(substring.substring(1)));
                    } else if ("quot".equalsIgnoreCase(substring)) {
                        sb.append('\"');
                    } else if (WebvttCueParser.f27235o.equalsIgnoreCase(substring)) {
                        sb.append('&');
                    } else if ("apos".equalsIgnoreCase(substring)) {
                        sb.append(Chars.QUOTE);
                    } else if (WebvttCueParser.f27233m.equalsIgnoreCase(substring)) {
                        sb.append('<');
                    } else if (WebvttCueParser.f27234n.equalsIgnoreCase(substring)) {
                        sb.append('>');
                    } else {
                        sb.append('&');
                        sb.append(substring);
                        sb.append(';');
                    }
                    i += substring.length() + 1;
                } else {
                    sb.append(charAt);
                }
            } else {
                sb.append(charAt);
            }
            i++;
        }
        return sb.toString();
    }

    public static JSONObject toJSONObject(String str, boolean z) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        XMLTokener xMLTokener = new XMLTokener(str);
        while (xMLTokener.more() && xMLTokener.skipPast("<")) {
            m71057c(xMLTokener, jSONObject, null, z);
        }
        return jSONObject;
    }

    public static String toString(Object obj, String str) throws JSONException {
        StringBuilder sb = new StringBuilder();
        if (obj instanceof JSONObject) {
            if (str != null) {
                sb.append('<');
                sb.append(str);
                sb.append('>');
            }
            JSONObject jSONObject = (JSONObject) obj;
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object opt = jSONObject.opt(next);
                if (opt == null) {
                    opt = "";
                } else if (opt.getClass().isArray()) {
                    opt = new JSONArray(opt);
                }
                if (opt instanceof String) {
                }
                if ("content".equals(next)) {
                    if (opt instanceof JSONArray) {
                        Iterator<Object> it2 = ((JSONArray) opt).iterator();
                        int i = 0;
                        while (it2.hasNext()) {
                            Object next2 = it2.next();
                            if (i > 0) {
                                sb.append('\n');
                            }
                            sb.append(escape(next2.toString()));
                            i++;
                        }
                    } else {
                        sb.append(escape(opt.toString()));
                    }
                } else if (opt instanceof JSONArray) {
                    Iterator<Object> it3 = ((JSONArray) opt).iterator();
                    while (it3.hasNext()) {
                        Object next3 = it3.next();
                        if (next3 instanceof JSONArray) {
                            sb.append('<');
                            sb.append(next);
                            sb.append('>');
                            sb.append(toString(next3));
                            sb.append(XMLStreamWriterImpl.OPEN_END_TAG);
                            sb.append(next);
                            sb.append('>');
                        } else {
                            sb.append(toString(next3, next));
                        }
                    }
                } else if ("".equals(opt)) {
                    sb.append('<');
                    sb.append(next);
                    sb.append(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
                } else {
                    sb.append(toString(opt, next));
                }
            }
            if (str != null) {
                sb.append(XMLStreamWriterImpl.OPEN_END_TAG);
                sb.append(str);
                sb.append('>');
            }
            return sb.toString();
        }
        if (obj != null) {
            if (obj.getClass().isArray()) {
                obj = new JSONArray(obj);
            }
            if (obj instanceof JSONArray) {
                Iterator<Object> it4 = ((JSONArray) obj).iterator();
                while (it4.hasNext()) {
                    sb.append(toString(it4.next(), str == null ? "array" : str));
                }
                return sb.toString();
            }
        }
        String escape = obj == null ? "null" : escape(obj.toString());
        if (str == null) {
            return "\"" + escape + "\"";
        }
        if (escape.length() == 0) {
            return "<" + str + XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT;
        }
        return "<" + str + ">" + escape + XMLStreamWriterImpl.OPEN_END_TAG + str + ">";
    }
}
