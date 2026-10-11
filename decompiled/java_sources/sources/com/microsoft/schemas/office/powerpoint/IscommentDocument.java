package com.microsoft.schemas.office.powerpoint;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface IscommentDocument extends XmlObject {
    public static final DocumentFactory<IscommentDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IscommentDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "iscomment0149doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEmpty addNewIscomment();

    CTEmpty getIscomment();

    void setIscomment(CTEmpty cTEmpty);
}
