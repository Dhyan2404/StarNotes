package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLTimeNodeExclusive extends XmlObject {
    public static final DocumentFactory<CTTLTimeNodeExclusive> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTimeNodeExclusive> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltimenodeexclusive8b78type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLCommonTimeNodeData addNewCTn();

    CTTLCommonTimeNodeData getCTn();

    void setCTn(CTTLCommonTimeNodeData cTTLCommonTimeNodeData);
}
