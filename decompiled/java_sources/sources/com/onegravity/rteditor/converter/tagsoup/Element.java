package com.onegravity.rteditor.converter.tagsoup;

/* loaded from: classes7.dex */
public class Element {

    /* renamed from: a */
    public ElementType f40192a;

    /* renamed from: b */
    public AttributesImpl f40193b;

    /* renamed from: c */
    public Element f40194c;

    /* renamed from: d */
    public boolean f40195d;

    public Element(ElementType elementType, boolean z) {
        this.f40192a = elementType;
        if (z) {
            this.f40193b = new AttributesImpl(elementType.atts());
        } else {
            this.f40193b = new AttributesImpl();
        }
        this.f40194c = null;
        this.f40195d = false;
    }

    public void anonymize() {
        for (int length = this.f40193b.getLength() - 1; length >= 0; length--) {
            if (this.f40193b.getType(length).equals("ID") || this.f40193b.getQName(length).equals("name")) {
                this.f40193b.removeAttribute(length);
            }
        }
    }

    public AttributesImpl atts() {
        return this.f40193b;
    }

    public boolean canContain(Element element) {
        return this.f40192a.canContain(element.f40192a);
    }

    public void clean() {
        for (int length = this.f40193b.getLength() - 1; length >= 0; length--) {
            String localName = this.f40193b.getLocalName(length);
            if (this.f40193b.getValue(length) == null || localName == null || localName.length() == 0) {
                this.f40193b.removeAttribute(length);
            }
        }
    }

    public int flags() {
        return this.f40192a.flags();
    }

    public boolean isPreclosed() {
        return this.f40195d;
    }

    public String localName() {
        return this.f40192a.localName();
    }

    public int memberOf() {
        return this.f40192a.memberOf();
    }

    public int model() {
        return this.f40192a.model();
    }

    public String name() {
        return this.f40192a.name();
    }

    public String namespace() {
        return this.f40192a.namespace();
    }

    public Element next() {
        return this.f40194c;
    }

    public ElementType parent() {
        return this.f40192a.parent();
    }

    public void preclose() {
        this.f40195d = true;
    }

    public void setAttribute(String str, String str2, String str3) {
        this.f40192a.setAttribute(this.f40193b, str, str2, str3);
    }

    public void setNext(Element element) {
        this.f40194c = element;
    }

    public ElementType type() {
        return this.f40192a;
    }
}
