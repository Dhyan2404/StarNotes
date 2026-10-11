package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STPrintColorMode;
import org.openxmlformats.schemas.presentationml.x2006.main.STPrintWhat;

/* loaded from: classes14.dex */
public interface CTPrintProperties extends XmlObject {
    public static final DocumentFactory<CTPrintProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPrintProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctprintproperties6e0ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    STPrintColorMode.Enum getClrMode();

    CTExtensionList getExtLst();

    boolean getFrameSlides();

    boolean getHiddenSlides();

    STPrintWhat.Enum getPrnWhat();

    boolean getScaleToFitPaper();

    boolean isSetClrMode();

    boolean isSetExtLst();

    boolean isSetFrameSlides();

    boolean isSetHiddenSlides();

    boolean isSetPrnWhat();

    boolean isSetScaleToFitPaper();

    void setClrMode(STPrintColorMode.Enum r1);

    void setExtLst(CTExtensionList cTExtensionList);

    void setFrameSlides(boolean z);

    void setHiddenSlides(boolean z);

    void setPrnWhat(STPrintWhat.Enum r1);

    void setScaleToFitPaper(boolean z);

    void unsetClrMode();

    void unsetExtLst();

    void unsetFrameSlides();

    void unsetHiddenSlides();

    void unsetPrnWhat();

    void unsetScaleToFitPaper();

    STPrintColorMode xgetClrMode();

    XmlBoolean xgetFrameSlides();

    XmlBoolean xgetHiddenSlides();

    STPrintWhat xgetPrnWhat();

    XmlBoolean xgetScaleToFitPaper();

    void xsetClrMode(STPrintColorMode sTPrintColorMode);

    void xsetFrameSlides(XmlBoolean xmlBoolean);

    void xsetHiddenSlides(XmlBoolean xmlBoolean);

    void xsetPrnWhat(STPrintWhat sTPrintWhat);

    void xsetScaleToFitPaper(XmlBoolean xmlBoolean);
}
