package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateBehaviorCalcMode;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateBehaviorValueType;

/* loaded from: classes14.dex */
public interface CTTLAnimateBehavior extends XmlObject {
    public static final DocumentFactory<CTTLAnimateBehavior> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimateBehavior> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimatebehavior3cd4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLCommonBehaviorData addNewCBhvr();

    CTTLTimeAnimateValueList addNewTavLst();

    String getBy();

    CTTLCommonBehaviorData getCBhvr();

    STTLAnimateBehaviorCalcMode.Enum getCalcmode();

    String getFrom();

    CTTLTimeAnimateValueList getTavLst();

    String getTo();

    STTLAnimateBehaviorValueType.Enum getValueType();

    boolean isSetBy();

    boolean isSetCalcmode();

    boolean isSetFrom();

    boolean isSetTavLst();

    boolean isSetTo();

    boolean isSetValueType();

    void setBy(String str);

    void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData);

    void setCalcmode(STTLAnimateBehaviorCalcMode.Enum r1);

    void setFrom(String str);

    void setTavLst(CTTLTimeAnimateValueList cTTLTimeAnimateValueList);

    void setTo(String str);

    void setValueType(STTLAnimateBehaviorValueType.Enum r1);

    void unsetBy();

    void unsetCalcmode();

    void unsetFrom();

    void unsetTavLst();

    void unsetTo();

    void unsetValueType();

    XmlString xgetBy();

    STTLAnimateBehaviorCalcMode xgetCalcmode();

    XmlString xgetFrom();

    XmlString xgetTo();

    STTLAnimateBehaviorValueType xgetValueType();

    void xsetBy(XmlString xmlString);

    void xsetCalcmode(STTLAnimateBehaviorCalcMode sTTLAnimateBehaviorCalcMode);

    void xsetFrom(XmlString xmlString);

    void xsetTo(XmlString xmlString);

    void xsetValueType(STTLAnimateBehaviorValueType sTTLAnimateBehaviorValueType);
}
