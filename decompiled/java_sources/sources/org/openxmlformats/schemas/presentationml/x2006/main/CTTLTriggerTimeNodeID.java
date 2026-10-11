package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLTriggerTimeNodeID extends XmlObject {
    public static final DocumentFactory<CTTLTriggerTimeNodeID> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTriggerTimeNodeID> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltriggertimenodeid88e5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getVal();

    void setVal(long j);

    STTLTimeNodeID xgetVal();

    void xsetVal(STTLTimeNodeID sTTLTimeNodeID);
}
