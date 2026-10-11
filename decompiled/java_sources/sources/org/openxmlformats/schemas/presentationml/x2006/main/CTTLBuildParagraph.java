package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STDrawingElementId;
import org.openxmlformats.schemas.presentationml.x2006.main.STTLParaBuildType;

/* loaded from: classes14.dex */
public interface CTTLBuildParagraph extends XmlObject {
    public static final DocumentFactory<CTTLBuildParagraph> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLBuildParagraph> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlbuildparagraph4a8dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLTemplateList addNewTmplLst();

    Object getAdvAuto();

    boolean getAnimBg();

    boolean getAutoUpdateAnimBg();

    long getBldLvl();

    STTLParaBuildType.Enum getBuild();

    long getGrpId();

    boolean getRev();

    long getSpid();

    CTTLTemplateList getTmplLst();

    boolean getUiExpand();

    boolean isSetAdvAuto();

    boolean isSetAnimBg();

    boolean isSetAutoUpdateAnimBg();

    boolean isSetBldLvl();

    boolean isSetBuild();

    boolean isSetRev();

    boolean isSetTmplLst();

    boolean isSetUiExpand();

    void setAdvAuto(Object obj);

    void setAnimBg(boolean z);

    void setAutoUpdateAnimBg(boolean z);

    void setBldLvl(long j);

    void setBuild(STTLParaBuildType.Enum r1);

    void setGrpId(long j);

    void setRev(boolean z);

    void setSpid(long j);

    void setTmplLst(CTTLTemplateList cTTLTemplateList);

    void setUiExpand(boolean z);

    void unsetAdvAuto();

    void unsetAnimBg();

    void unsetAutoUpdateAnimBg();

    void unsetBldLvl();

    void unsetBuild();

    void unsetRev();

    void unsetTmplLst();

    void unsetUiExpand();

    STTLTime xgetAdvAuto();

    XmlBoolean xgetAnimBg();

    XmlBoolean xgetAutoUpdateAnimBg();

    XmlUnsignedInt xgetBldLvl();

    STTLParaBuildType xgetBuild();

    XmlUnsignedInt xgetGrpId();

    XmlBoolean xgetRev();

    STDrawingElementId xgetSpid();

    XmlBoolean xgetUiExpand();

    void xsetAdvAuto(STTLTime sTTLTime);

    void xsetAnimBg(XmlBoolean xmlBoolean);

    void xsetAutoUpdateAnimBg(XmlBoolean xmlBoolean);

    void xsetBldLvl(XmlUnsignedInt xmlUnsignedInt);

    void xsetBuild(STTLParaBuildType sTTLParaBuildType);

    void xsetGrpId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRev(XmlBoolean xmlBoolean);

    void xsetSpid(STDrawingElementId sTDrawingElementId);

    void xsetUiExpand(XmlBoolean xmlBoolean);
}
