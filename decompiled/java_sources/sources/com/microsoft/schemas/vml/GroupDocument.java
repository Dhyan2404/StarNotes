package com.microsoft.schemas.vml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface GroupDocument extends XmlObject {
    public static final DocumentFactory<GroupDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<GroupDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "group7d3fdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGroup addNewGroup();

    CTGroup getGroup();

    void setGroup(CTGroup cTGroup);
}
