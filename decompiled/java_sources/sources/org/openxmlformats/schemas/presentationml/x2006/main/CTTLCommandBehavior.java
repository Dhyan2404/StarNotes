package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLCommandType;

/* loaded from: classes14.dex */
public interface CTTLCommandBehavior extends XmlObject {
    public static final DocumentFactory<CTTLCommandBehavior> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLCommandBehavior> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlcommandbehavior902atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLCommonBehaviorData addNewCBhvr();

    CTTLCommonBehaviorData getCBhvr();

    String getCmd();

    STTLCommandType.Enum getType();

    boolean isSetCmd();

    boolean isSetType();

    void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData);

    void setCmd(String str);

    void setType(STTLCommandType.Enum r1);

    void unsetCmd();

    void unsetType();

    XmlString xgetCmd();

    STTLCommandType xgetType();

    void xsetCmd(XmlString xmlString);

    void xsetType(STTLCommandType sTTLCommandType);
}
