package com.google.zxing.client.result;

import androidx.credentials.playservices.controllers.CredentialProviderBaseController;
import com.google.zxing.Result;
import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public final class VCardResultParser extends ResultParser {

    /* renamed from: f */
    public static final Pattern f38345f = Pattern.compile("BEGIN:VCARD", 2);

    /* renamed from: g */
    public static final Pattern f38346g = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");

    /* renamed from: h */
    public static final Pattern f38347h = Pattern.compile("\r\n[ \t]");

    /* renamed from: i */
    public static final Pattern f38348i = Pattern.compile("\\\\[nN]");

    /* renamed from: j */
    public static final Pattern f38349j = Pattern.compile("\\\\([,;\\\\])");

    /* renamed from: k */
    public static final Pattern f38350k = Pattern.compile("=");

    /* renamed from: l */
    public static final Pattern f38351l = Pattern.compile(AndroidTreeView.f47214k);

    /* renamed from: m */
    public static final Pattern f38352m = Pattern.compile("(?<!\\\\);+");

    /* renamed from: n */
    public static final Pattern f38353n = Pattern.compile(",");

    /* renamed from: o */
    public static final Pattern f38354o = Pattern.compile("[;,]");

    /* renamed from: g */
    public static String m30489g(CharSequence charSequence, String str) {
        char charAt;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < length) {
            char charAt2 = charSequence.charAt(i);
            if (charAt2 != '\n' && charAt2 != '\r') {
                if (charAt2 != '=') {
                    m30495m(byteArrayOutputStream, str, sb);
                    sb.append(charAt2);
                } else if (i < length - 2 && (charAt = charSequence.charAt(i + 1)) != '\r' && charAt != '\n') {
                    i += 2;
                    char charAt3 = charSequence.charAt(i);
                    int parseHexDigit = ResultParser.parseHexDigit(charAt);
                    int parseHexDigit2 = ResultParser.parseHexDigit(charAt3);
                    if (parseHexDigit >= 0 && parseHexDigit2 >= 0) {
                        byteArrayOutputStream.write((parseHexDigit << 4) + parseHexDigit2);
                    }
                }
            }
            i++;
        }
        m30495m(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    /* renamed from: h */
    public static void m30490h(Iterable<List<String>> iterable) {
        int indexOf;
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < 4 && (indexOf = str.indexOf(59, i2)) >= 0) {
                    strArr[i] = str.substring(i2, indexOf);
                    i++;
                    i2 = indexOf + 1;
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                m30494l(strArr, 3, sb);
                m30494l(strArr, 1, sb);
                m30494l(strArr, 2, sb);
                m30494l(strArr, 0, sb);
                m30494l(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    /* renamed from: i */
    public static boolean m30491i(CharSequence charSequence) {
        return charSequence == null || f38346g.matcher(charSequence).matches();
    }

    /* renamed from: j */
    public static List<String> m30492j(CharSequence charSequence, String str, boolean z, boolean z2) {
        List<List<String>> m30493k = m30493k(charSequence, str, z, z2);
        if (m30493k == null || m30493k.isEmpty()) {
            return null;
        }
        return m30493k.get(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x00c8, code lost:
    
        r4 = r1;
        r3 = 0;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.util.List<java.lang.String>> m30493k(java.lang.CharSequence r16, java.lang.String r17, boolean r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.client.result.VCardResultParser.m30493k(java.lang.CharSequence, java.lang.String, boolean, boolean):java.util.List");
    }

    /* renamed from: l */
    public static void m30494l(String[] strArr, int i, StringBuilder sb) {
        String str = strArr[i];
        if (str == null || str.isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(strArr[i]);
    }

    /* renamed from: m */
    public static void m30495m(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, Charset.forName("UTF-8"));
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray, Charset.forName("UTF-8"));
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    /* renamed from: n */
    public static String m30496n(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    /* renamed from: o */
    public static String[] m30497o(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<List<String>> it2 = collection.iterator();
        while (it2.hasNext()) {
            String str = it2.next().get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    /* renamed from: p */
    public static String[] m30498p(Collection<List<String>> collection) {
        String str;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            int i = 1;
            while (true) {
                if (i >= list.size()) {
                    str = null;
                    break;
                }
                str = list.get(i);
                int indexOf = str.indexOf(61);
                if (indexOf >= 0) {
                    if (CredentialProviderBaseController.TYPE_TAG.equalsIgnoreCase(str.substring(0, indexOf))) {
                        str = str.substring(indexOf + 1);
                        break;
                    }
                    i++;
                }
            }
            arrayList.add(str);
        }
        return (String[]) arrayList.toArray(new String[collection.size()]);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        Matcher matcher = f38345f.matcher(massagedText);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> m30493k = m30493k("FN", massagedText, true, false);
        if (m30493k == null) {
            m30493k = m30493k("N", massagedText, true, false);
            m30490h(m30493k);
        }
        List<String> m30492j = m30492j("NICKNAME", massagedText, true, false);
        String[] split = m30492j == null ? null : f38353n.split(m30492j.get(0));
        List<List<String>> m30493k2 = m30493k("TEL", massagedText, true, false);
        List<List<String>> m30493k3 = m30493k("EMAIL", massagedText, true, false);
        List<String> m30492j2 = m30492j("NOTE", massagedText, false, false);
        List<List<String>> m30493k4 = m30493k("ADR", massagedText, true, true);
        List<String> m30492j3 = m30492j("ORG", massagedText, true, true);
        List<String> m30492j4 = m30492j("BDAY", massagedText, true, false);
        List<String> list = (m30492j4 == null || m30491i(m30492j4.get(0))) ? m30492j4 : null;
        List<String> m30492j5 = m30492j("TITLE", massagedText, true, false);
        List<List<String>> m30493k5 = m30493k(ShapeLinkType.LINK_URL, massagedText, true, false);
        List<String> m30492j6 = m30492j("IMPP", massagedText, true, false);
        List<String> m30492j7 = m30492j("GEO", massagedText, true, false);
        String[] split2 = m30492j7 == null ? null : f38354o.split(m30492j7.get(0));
        return new AddressBookParsedResult(m30497o(m30493k), split, null, m30497o(m30493k2), m30498p(m30493k2), m30497o(m30493k3), m30498p(m30493k3), m30496n(m30492j6), m30496n(m30492j2), m30497o(m30493k4), m30498p(m30493k4), m30496n(m30492j3), m30496n(list), m30496n(m30492j5), m30497o(m30493k5), (split2 == null || split2.length == 2) ? split2 : null);
    }
}
