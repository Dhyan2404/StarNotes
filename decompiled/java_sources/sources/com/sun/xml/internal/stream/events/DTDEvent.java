package com.sun.xml.internal.stream.events;

import java.util.List;
import javax.xml.stream.events.DTD;

/* loaded from: classes10.dex */
public class DTDEvent extends DummyEvent implements DTD {
    private String fDoctypeDeclaration;
    private List fEntities;
    private List fNotations;

    public DTDEvent() {
        init();
    }

    @Override // javax.xml.stream.events.DTD
    public String getDocumentTypeDeclaration() {
        return this.fDoctypeDeclaration;
    }

    @Override // javax.xml.stream.events.DTD
    public List getEntities() {
        return this.fEntities;
    }

    @Override // javax.xml.stream.events.DTD
    public List getNotations() {
        return this.fNotations;
    }

    @Override // javax.xml.stream.events.DTD
    public Object getProcessedDTD() {
        return null;
    }

    public void init() {
        setEventType(11);
    }

    public void setDocumentTypeDeclaration(String str) {
        this.fDoctypeDeclaration = str;
    }

    public void setEntities(List list) {
        this.fEntities = list;
    }

    public void setNotations(List list) {
        this.fNotations = list;
    }

    public String toString() {
        return this.fDoctypeDeclaration;
    }

    public DTDEvent(String str) {
        init();
        this.fDoctypeDeclaration = str;
    }
}
