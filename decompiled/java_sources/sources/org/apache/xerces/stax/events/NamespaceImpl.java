package org.apache.xerces.stax.events;

import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.events.Namespace;

/* loaded from: classes13.dex */
public final class NamespaceImpl extends AttributeImpl implements Namespace {

    /* renamed from: k */
    public final String f113459k;

    /* renamed from: l */
    public final String f113460l;

    public NamespaceImpl(String str, String str2, Location location) {
        super(13, m70558a(str), str2, null, true, location);
        this.f113459k = str == null ? "" : str;
        this.f113460l = str2;
    }

    /* renamed from: a */
    public static QName m70558a(String str) {
        return (str == null || str.equals("")) ? new QName("http://www.w3.org/2000/xmlns/", "xmlns", "") : new QName("http://www.w3.org/2000/xmlns/", str, "xmlns");
    }

    @Override // javax.xml.stream.events.Namespace
    public String getNamespaceURI() {
        return this.f113460l;
    }

    @Override // javax.xml.stream.events.Namespace
    public String getPrefix() {
        return this.f113459k;
    }

    @Override // javax.xml.stream.events.Namespace
    public boolean isDefaultNamespaceDeclaration() {
        return this.f113459k.length() == 0;
    }
}
