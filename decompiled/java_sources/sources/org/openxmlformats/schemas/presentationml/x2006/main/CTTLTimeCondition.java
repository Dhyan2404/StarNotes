package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLTriggerEvent;

/* loaded from: classes14.dex */
public interface CTTLTimeCondition extends XmlObject {
    public static final DocumentFactory<CTTLTimeCondition> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTimeCondition> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltimecondition1eb9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLTriggerRuntimeNode addNewRtn();

    CTTLTimeTargetElement addNewTgtEl();

    CTTLTriggerTimeNodeID addNewTn();

    Object getDelay();

    STTLTriggerEvent.Enum getEvt();

    CTTLTriggerRuntimeNode getRtn();

    CTTLTimeTargetElement getTgtEl();

    CTTLTriggerTimeNodeID getTn();

    boolean isSetDelay();

    boolean isSetEvt();

    boolean isSetRtn();

    boolean isSetTgtEl();

    boolean isSetTn();

    void setDelay(Object obj);

    void setEvt(STTLTriggerEvent.Enum r1);

    void setRtn(CTTLTriggerRuntimeNode cTTLTriggerRuntimeNode);

    void setTgtEl(CTTLTimeTargetElement cTTLTimeTargetElement);

    void setTn(CTTLTriggerTimeNodeID cTTLTriggerTimeNodeID);

    void unsetDelay();

    void unsetEvt();

    void unsetRtn();

    void unsetTgtEl();

    void unsetTn();

    STTLTime xgetDelay();

    STTLTriggerEvent xgetEvt();

    void xsetDelay(STTLTime sTTLTime);

    void xsetEvt(STTLTriggerEvent sTTLTriggerEvent);
}
