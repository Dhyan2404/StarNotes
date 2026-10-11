package com.sun.xml.internal.stream.events;

import javax.xml.namespace.QName;
import javax.xml.stream.events.Namespace;

/* loaded from: classes10.dex */
public class NamespaceImpl extends AttributeImpl implements Namespace {
    public NamespaceImpl() {
        init();
    }

    @Override // com.sun.xml.internal.stream.events.DummyEvent, javax.xml.stream.events.XMLEvent
    public int getEventType() {
        return 13;
    }

    @Override // javax.xml.stream.events.Namespace
    public String getNamespaceURI() {
        return getValue();
    }

    @Override // javax.xml.stream.events.Namespace
    public String getPrefix() {
        QName name = getName();
        if (name != null) {
            return name.getLocalPart();
        }
        return null;
    }

    @Override // com.sun.xml.internal.stream.events.AttributeImpl
    public void init() {
        setEventType(13);
    }

    @Override // javax.xml.stream.events.Namespace
    public boolean isDefaultNamespaceDeclaration() {
        QName name = getName();
        return name != null && name.getLocalPart().equals("");
    }

    @Override // com.sun.xml.internal.stream.events.DummyEvent, javax.xml.stream.events.XMLEvent
    public boolean isNamespace() {
        return true;
    }

    public void setNamespaceURI(String str) {
        setValue(str);
    }

    public void setPrefix(String str) {
        if (str == null) {
            setName(new QName("http://www.w3.org/2000/xmlns/", "", "xmlns"));
        } else {
            setName(new QName("http://www.w3.org/2000/xmlns/", str, "xmlns"));
        }
    }

    public NamespaceImpl(String str) {
        super("xmlns", "http://www.w3.org/2000/xmlns/", "", str, (String) null);
        init();
    }

    public NamespaceImpl(String str, String str2) {
        super("xmlns", "http://www.w3.org/2000/xmlns/", str, str2, (String) null);
        init();
    }
}
