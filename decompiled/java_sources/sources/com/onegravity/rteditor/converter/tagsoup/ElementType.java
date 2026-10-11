package com.onegravity.rteditor.converter.tagsoup;

import com.bumptech.glide.load.engine.GlideException;

/* loaded from: classes7.dex */
public class ElementType {

    /* renamed from: a */
    public String f40196a;

    /* renamed from: b */
    public String f40197b;

    /* renamed from: c */
    public String f40198c;

    /* renamed from: d */
    public int f40199d;

    /* renamed from: e */
    public int f40200e;

    /* renamed from: f */
    public int f40201f;

    /* renamed from: g */
    public AttributesImpl f40202g = new AttributesImpl();

    /* renamed from: h */
    public ElementType f40203h;

    /* renamed from: i */
    public Schema f40204i;

    public ElementType(String str, int i, int i2, int i3, Schema schema) {
        this.f40196a = str;
        this.f40199d = i;
        this.f40200e = i2;
        this.f40201f = i3;
        this.f40204i = schema;
        this.f40197b = namespace(str, false);
        this.f40198c = localName(str);
    }

    public static String normalize(String str) {
        if (str == null) {
            return str;
        }
        String trim = str.trim();
        if (trim.indexOf(GlideException.C1935a.f14609h) == -1) {
            return trim;
        }
        int length = trim.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char charAt = trim.charAt(i);
            if (charAt == ' ') {
                if (!z) {
                    stringBuffer.append(charAt);
                }
                z = true;
            } else {
                stringBuffer.append(charAt);
                z = false;
            }
        }
        return stringBuffer.toString();
    }

    public AttributesImpl atts() {
        return this.f40202g;
    }

    public boolean canContain(ElementType elementType) {
        return (this.f40199d & elementType.f40200e) != 0;
    }

    public int flags() {
        return this.f40201f;
    }

    public String localName(String str) {
        int indexOf = str.indexOf(58);
        return indexOf == -1 ? str : str.substring(indexOf + 1).intern();
    }

    public int memberOf() {
        return this.f40200e;
    }

    public int model() {
        return this.f40199d;
    }

    public String name() {
        return this.f40196a;
    }

    public String namespace(String str, boolean z) {
        int indexOf = str.indexOf(58);
        if (indexOf == -1) {
            return z ? "" : this.f40204i.getURI();
        }
        String substring = str.substring(0, indexOf);
        if (substring.equals("xml")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        return ("urn:x-prefix:" + substring).intern();
    }

    public ElementType parent() {
        return this.f40203h;
    }

    public Schema schema() {
        return this.f40204i;
    }

    public void setAttribute(AttributesImpl attributesImpl, String str, String str2, String str3) {
        if (str.equals("xmlns") || str.startsWith("xmlns:")) {
            return;
        }
        String namespace = namespace(str, true);
        String localName = localName(str);
        int index = attributesImpl.getIndex(str);
        if (index == -1) {
            String intern = str.intern();
            String str4 = str2 == null ? "CDATA" : str2;
            if (!str4.equals("CDATA")) {
                str3 = normalize(str3);
            }
            attributesImpl.addAttribute(namespace, localName, intern, str4, str3);
            return;
        }
        if (str2 == null) {
            str2 = attributesImpl.getType(index);
        }
        String str5 = str2;
        if (!str5.equals("CDATA")) {
            str3 = normalize(str3);
        }
        attributesImpl.setAttribute(index, namespace, localName, str, str5, str3);
    }

    public void setFlags(int i) {
        this.f40201f = i;
    }

    public void setMemberOf(int i) {
        this.f40200e = i;
    }

    public void setModel(int i) {
        this.f40199d = i;
    }

    public void setParent(ElementType elementType) {
        this.f40203h = elementType;
    }

    public String localName() {
        return this.f40198c;
    }

    public String namespace() {
        return this.f40197b;
    }

    public void setAttribute(String str, String str2, String str3) {
        setAttribute(this.f40202g, str, str2, str3);
    }
}
