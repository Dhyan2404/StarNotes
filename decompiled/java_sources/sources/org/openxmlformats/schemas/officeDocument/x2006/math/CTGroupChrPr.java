package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTGroupChrPr extends XmlObject {
    public static final DocumentFactory<CTGroupChrPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGroupChrPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgroupchrpr8022type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTChar addNewChr();

    CTCtrlPr addNewCtrlPr();

    CTTopBot addNewPos();

    CTTopBot addNewVertJc();

    CTChar getChr();

    CTCtrlPr getCtrlPr();

    CTTopBot getPos();

    CTTopBot getVertJc();

    boolean isSetChr();

    boolean isSetCtrlPr();

    boolean isSetPos();

    boolean isSetVertJc();

    void setChr(CTChar cTChar);

    void setCtrlPr(CTCtrlPr cTCtrlPr);

    void setPos(CTTopBot cTTopBot);

    void setVertJc(CTTopBot cTTopBot);

    void unsetChr();

    void unsetCtrlPr();

    void unsetPos();

    void unsetVertJc();
}
