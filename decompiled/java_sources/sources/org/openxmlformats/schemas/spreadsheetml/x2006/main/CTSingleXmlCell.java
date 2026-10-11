package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTSingleXmlCell extends XmlObject {
    public static final DocumentFactory<CTSingleXmlCell> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSingleXmlCell> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsinglexmlcell7790type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTXmlCellPr addNewXmlCellPr();

    long getConnectionId();

    CTExtensionList getExtLst();

    long getId();

    String getR();

    CTXmlCellPr getXmlCellPr();

    boolean isSetExtLst();

    void setConnectionId(long j);

    void setExtLst(CTExtensionList cTExtensionList);

    void setId(long j);

    void setR(String str);

    void setXmlCellPr(CTXmlCellPr cTXmlCellPr);

    void unsetExtLst();

    XmlUnsignedInt xgetConnectionId();

    XmlUnsignedInt xgetId();

    STCellRef xgetR();

    void xsetConnectionId(XmlUnsignedInt xmlUnsignedInt);

    void xsetId(XmlUnsignedInt xmlUnsignedInt);

    void xsetR(STCellRef sTCellRef);
}
