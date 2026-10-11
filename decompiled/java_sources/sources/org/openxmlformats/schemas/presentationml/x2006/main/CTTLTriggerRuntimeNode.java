package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLTriggerRuntimeNode;

/* loaded from: classes14.dex */
public interface CTTLTriggerRuntimeNode extends XmlObject {
    public static final DocumentFactory<CTTLTriggerRuntimeNode> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTriggerRuntimeNode> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltriggerruntimenode214btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTLTriggerRuntimeNode.Enum getVal();

    void setVal(STTLTriggerRuntimeNode.Enum r1);

    STTLTriggerRuntimeNode xgetVal();

    void xsetVal(STTLTriggerRuntimeNode sTTLTriggerRuntimeNode);
}
