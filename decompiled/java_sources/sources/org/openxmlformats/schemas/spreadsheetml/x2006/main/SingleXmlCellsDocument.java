package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface SingleXmlCellsDocument extends XmlObject {
    public static final DocumentFactory<SingleXmlCellsDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SingleXmlCellsDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "singlexmlcells33bfdoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSingleXmlCells addNewSingleXmlCells();

    CTSingleXmlCells getSingleXmlCells();

    void setSingleXmlCells(CTSingleXmlCells cTSingleXmlCells);
}
