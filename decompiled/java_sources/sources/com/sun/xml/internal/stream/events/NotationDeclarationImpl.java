package com.sun.xml.internal.stream.events;

import com.sun.xml.internal.stream.dtd.nonvalidating.XMLNotationDecl;
import javax.xml.stream.events.NotationDeclaration;

/* loaded from: classes10.dex */
public class NotationDeclarationImpl extends DummyEvent implements NotationDeclaration {
    String fName;
    String fPublicId;
    String fSystemId;

    public NotationDeclarationImpl() {
        this.fName = null;
        this.fPublicId = null;
        this.fSystemId = null;
        setEventType(14);
    }

    @Override // javax.xml.stream.events.NotationDeclaration
    public String getName() {
        return this.fName;
    }

    @Override // javax.xml.stream.events.NotationDeclaration
    public String getPublicId() {
        return this.fPublicId;
    }

    @Override // javax.xml.stream.events.NotationDeclaration
    public String getSystemId() {
        return this.fSystemId;
    }

    public void setName(String str) {
        this.fName = str;
    }

    public void setPublicId(String str) {
        this.fPublicId = str;
    }

    public void setSystemId(String str) {
        this.fSystemId = str;
    }

    public NotationDeclarationImpl(String str, String str2, String str3) {
        this.fName = str;
        this.fPublicId = str2;
        this.fSystemId = str3;
        setEventType(14);
    }

    public NotationDeclarationImpl(XMLNotationDecl xMLNotationDecl) {
        this.fName = null;
        this.fPublicId = null;
        this.fSystemId = null;
        this.fName = xMLNotationDecl.name;
        this.fPublicId = xMLNotationDecl.publicId;
        this.fSystemId = xMLNotationDecl.systemId;
        setEventType(14);
    }
}
