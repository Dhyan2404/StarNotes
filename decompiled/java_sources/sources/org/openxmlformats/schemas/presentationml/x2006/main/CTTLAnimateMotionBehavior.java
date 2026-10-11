package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STAngle;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateMotionBehaviorOrigin;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLAnimateMotionPathEditMode;

/* loaded from: classes14.dex */
public interface CTTLAnimateMotionBehavior extends XmlObject {
    public static final DocumentFactory<CTTLAnimateMotionBehavior> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLAnimateMotionBehavior> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlanimatemotionbehavior043etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLPoint addNewBy();

    CTTLCommonBehaviorData addNewCBhvr();

    CTTLPoint addNewFrom();

    CTTLPoint addNewRCtr();

    CTTLPoint addNewTo();

    CTTLPoint getBy();

    CTTLCommonBehaviorData getCBhvr();

    CTTLPoint getFrom();

    STTLAnimateMotionBehaviorOrigin.Enum getOrigin();

    String getPath();

    STTLAnimateMotionPathEditMode.Enum getPathEditMode();

    String getPtsTypes();

    int getRAng();

    CTTLPoint getRCtr();

    CTTLPoint getTo();

    boolean isSetBy();

    boolean isSetFrom();

    boolean isSetOrigin();

    boolean isSetPath();

    boolean isSetPathEditMode();

    boolean isSetPtsTypes();

    boolean isSetRAng();

    boolean isSetRCtr();

    boolean isSetTo();

    void setBy(CTTLPoint cTTLPoint);

    void setCBhvr(CTTLCommonBehaviorData cTTLCommonBehaviorData);

    void setFrom(CTTLPoint cTTLPoint);

    void setOrigin(STTLAnimateMotionBehaviorOrigin.Enum r1);

    void setPath(String str);

    void setPathEditMode(STTLAnimateMotionPathEditMode.Enum r1);

    void setPtsTypes(String str);

    void setRAng(int i);

    void setRCtr(CTTLPoint cTTLPoint);

    void setTo(CTTLPoint cTTLPoint);

    void unsetBy();

    void unsetFrom();

    void unsetOrigin();

    void unsetPath();

    void unsetPathEditMode();

    void unsetPtsTypes();

    void unsetRAng();

    void unsetRCtr();

    void unsetTo();

    STTLAnimateMotionBehaviorOrigin xgetOrigin();

    XmlString xgetPath();

    STTLAnimateMotionPathEditMode xgetPathEditMode();

    XmlString xgetPtsTypes();

    STAngle xgetRAng();

    void xsetOrigin(STTLAnimateMotionBehaviorOrigin sTTLAnimateMotionBehaviorOrigin);

    void xsetPath(XmlString xmlString);

    void xsetPathEditMode(STTLAnimateMotionPathEditMode sTTLAnimateMotionPathEditMode);

    void xsetPtsTypes(XmlString xmlString);

    void xsetRAng(STAngle sTAngle);
}
