package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLBehaviorAccumulateType;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLBehaviorAdditiveType;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLBehaviorOverrideType;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLBehaviorTransformType;

/* loaded from: classes14.dex */
public interface CTTLCommonBehaviorData extends XmlObject {
    public static final DocumentFactory<CTTLCommonBehaviorData> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLCommonBehaviorData> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlcommonbehaviordata6ca6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLBehaviorAttributeNameList addNewAttrNameLst();

    CTTLCommonTimeNodeData addNewCTn();

    CTTLTimeTargetElement addNewTgtEl();

    STTLBehaviorAccumulateType.Enum getAccumulate();

    STTLBehaviorAdditiveType.Enum getAdditive();

    CTTLBehaviorAttributeNameList getAttrNameLst();

    String getBy();

    CTTLCommonTimeNodeData getCTn();

    String getFrom();

    STTLBehaviorOverrideType.Enum getOverride();

    String getRctx();

    CTTLTimeTargetElement getTgtEl();

    String getTo();

    STTLBehaviorTransformType.Enum getXfrmType();

    boolean isSetAccumulate();

    boolean isSetAdditive();

    boolean isSetAttrNameLst();

    boolean isSetBy();

    boolean isSetFrom();

    boolean isSetOverride();

    boolean isSetRctx();

    boolean isSetTo();

    boolean isSetXfrmType();

    void setAccumulate(STTLBehaviorAccumulateType.Enum r1);

    void setAdditive(STTLBehaviorAdditiveType.Enum r1);

    void setAttrNameLst(CTTLBehaviorAttributeNameList cTTLBehaviorAttributeNameList);

    void setBy(String str);

    void setCTn(CTTLCommonTimeNodeData cTTLCommonTimeNodeData);

    void setFrom(String str);

    void setOverride(STTLBehaviorOverrideType.Enum r1);

    void setRctx(String str);

    void setTgtEl(CTTLTimeTargetElement cTTLTimeTargetElement);

    void setTo(String str);

    void setXfrmType(STTLBehaviorTransformType.Enum r1);

    void unsetAccumulate();

    void unsetAdditive();

    void unsetAttrNameLst();

    void unsetBy();

    void unsetFrom();

    void unsetOverride();

    void unsetRctx();

    void unsetTo();

    void unsetXfrmType();

    STTLBehaviorAccumulateType xgetAccumulate();

    STTLBehaviorAdditiveType xgetAdditive();

    XmlString xgetBy();

    XmlString xgetFrom();

    STTLBehaviorOverrideType xgetOverride();

    XmlString xgetRctx();

    XmlString xgetTo();

    STTLBehaviorTransformType xgetXfrmType();

    void xsetAccumulate(STTLBehaviorAccumulateType sTTLBehaviorAccumulateType);

    void xsetAdditive(STTLBehaviorAdditiveType sTTLBehaviorAdditiveType);

    void xsetBy(XmlString xmlString);

    void xsetFrom(XmlString xmlString);

    void xsetOverride(STTLBehaviorOverrideType sTTLBehaviorOverrideType);

    void xsetRctx(XmlString xmlString);

    void xsetTo(XmlString xmlString);

    void xsetXfrmType(STTLBehaviorTransformType sTTLBehaviorTransformType);
}
