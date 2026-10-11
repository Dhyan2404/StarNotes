package com.sun.xml.internal.stream.events;

import com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
import javax.xml.stream.events.EntityDeclaration;

/* loaded from: classes10.dex */
public class EntityDeclarationImpl extends DummyEvent implements EntityDeclaration {
    private String fEntityName;
    private String fNotationName;
    private String fReplacementText;
    private XMLResourceIdentifier fXMLResourceIdentifier;

    public EntityDeclarationImpl() {
        init();
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getBaseURI() {
        XMLResourceIdentifier xMLResourceIdentifier = this.fXMLResourceIdentifier;
        if (xMLResourceIdentifier != null) {
            return xMLResourceIdentifier.getBaseSystemId();
        }
        return null;
    }

    public String getEntityName() {
        return this.fEntityName;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getName() {
        return this.fEntityName;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getNotationName() {
        return this.fNotationName;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getPublicId() {
        XMLResourceIdentifier xMLResourceIdentifier = this.fXMLResourceIdentifier;
        if (xMLResourceIdentifier != null) {
            return xMLResourceIdentifier.getPublicId();
        }
        return null;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getReplacementText() {
        return this.fReplacementText;
    }

    @Override // javax.xml.stream.events.EntityDeclaration
    public String getSystemId() {
        XMLResourceIdentifier xMLResourceIdentifier = this.fXMLResourceIdentifier;
        if (xMLResourceIdentifier != null) {
            return xMLResourceIdentifier.getLiteralSystemId();
        }
        return null;
    }

    public XMLResourceIdentifier getXMLResourceIdentifier() {
        return this.fXMLResourceIdentifier;
    }

    public void init() {
        setEventType(15);
    }

    public void setEntityName(String str) {
        this.fEntityName = str;
    }

    public void setEntityReplacementText(String str) {
        this.fReplacementText = str;
    }

    public void setNotationName(String str) {
        this.fNotationName = str;
    }

    public void setXMLResourceIdentifier(XMLResourceIdentifier xMLResourceIdentifier) {
        this.fXMLResourceIdentifier = xMLResourceIdentifier;
    }

    public EntityDeclarationImpl(String str, String str2) {
        this(str, str2, null);
    }

    public EntityDeclarationImpl(String str, String str2, XMLResourceIdentifier xMLResourceIdentifier) {
        init();
        this.fEntityName = str;
        this.fReplacementText = str2;
        this.fXMLResourceIdentifier = xMLResourceIdentifier;
    }
}
