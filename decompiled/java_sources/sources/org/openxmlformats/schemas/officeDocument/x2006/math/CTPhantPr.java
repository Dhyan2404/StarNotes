package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTPhantPr extends XmlObject {
    public static final DocumentFactory<CTPhantPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPhantPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctphantprfe6btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCtrlPr addNewCtrlPr();

    CTOnOff addNewShow();

    CTOnOff addNewTransp();

    CTOnOff addNewZeroAsc();

    CTOnOff addNewZeroDesc();

    CTOnOff addNewZeroWid();

    CTCtrlPr getCtrlPr();

    CTOnOff getShow();

    CTOnOff getTransp();

    CTOnOff getZeroAsc();

    CTOnOff getZeroDesc();

    CTOnOff getZeroWid();

    boolean isSetCtrlPr();

    boolean isSetShow();

    boolean isSetTransp();

    boolean isSetZeroAsc();

    boolean isSetZeroDesc();

    boolean isSetZeroWid();

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void setShow(CTOnOff cTOnOff);

    void setTransp(CTOnOff cTOnOff);

    void setZeroAsc(CTOnOff cTOnOff);

    void setZeroDesc(CTOnOff cTOnOff);

    void setZeroWid(CTOnOff cTOnOff);

    void unsetCtrlPr();

    void unsetShow();

    void unsetTransp();

    void unsetZeroAsc();

    void unsetZeroDesc();

    void unsetZeroWid();
}
