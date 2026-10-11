package com.sun.xml.internal.stream.events;

import javax.xml.namespace.QName;

/* loaded from: classes10.dex */
public class NamedEvent extends DummyEvent {
    private QName name;

    public NamedEvent() {
    }

    public QName getName() {
        return this.name;
    }

    public String getNamespace() {
        return this.name.getNamespaceURI();
    }

    public String getPrefix() {
        return this.name.getPrefix();
    }

    public String nameAsString() {
        if ("".equals(this.name.getNamespaceURI())) {
            return this.name.getLocalPart();
        }
        if (this.name.getPrefix() == null) {
            return "['" + this.name.getNamespaceURI() + "']:" + this.name.getLocalPart();
        }
        return "['" + this.name.getNamespaceURI() + "']:" + getPrefix() + ":" + this.name.getLocalPart();
    }

    public void setName(QName qName) {
        this.name = qName;
    }

    public NamedEvent(QName qName) {
        this.name = qName;
    }

    public NamedEvent(String str, String str2, String str3) {
        this.name = new QName(str2, str3, str);
    }
}
