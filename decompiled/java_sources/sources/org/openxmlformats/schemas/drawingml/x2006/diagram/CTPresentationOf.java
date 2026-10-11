package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.CTOfficeArtExtensionList;

/* loaded from: classes14.dex */
public interface CTPresentationOf extends XmlObject {
    public static final DocumentFactory<CTPresentationOf> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPresentationOf> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpresentationof4100type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOfficeArtExtensionList addNewExtLst();

    List getAxis();

    List getCnt();

    CTOfficeArtExtensionList getExtLst();

    List getHideLastTrans();

    List getPtType();

    List getSt();

    List getStep();

    boolean isSetAxis();

    boolean isSetCnt();

    boolean isSetExtLst();

    boolean isSetHideLastTrans();

    boolean isSetPtType();

    boolean isSetSt();

    boolean isSetStep();

    void setAxis(List list);

    void setCnt(List list);

    void setExtLst(CTOfficeArtExtensionList cTOfficeArtExtensionList);

    void setHideLastTrans(List list);

    void setPtType(List list);

    void setSt(List list);

    void setStep(List list);

    void unsetAxis();

    void unsetCnt();

    void unsetExtLst();

    void unsetHideLastTrans();

    void unsetPtType();

    void unsetSt();

    void unsetStep();

    STAxisTypes xgetAxis();

    STUnsignedInts xgetCnt();

    STBooleans xgetHideLastTrans();

    STElementTypes xgetPtType();

    STInts xgetSt();

    STInts xgetStep();

    void xsetAxis(STAxisTypes sTAxisTypes);

    void xsetCnt(STUnsignedInts sTUnsignedInts);

    void xsetHideLastTrans(STBooleans sTBooleans);

    void xsetPtType(STElementTypes sTElementTypes);

    void xsetSt(STInts sTInts);

    void xsetStep(STInts sTInts);
}
