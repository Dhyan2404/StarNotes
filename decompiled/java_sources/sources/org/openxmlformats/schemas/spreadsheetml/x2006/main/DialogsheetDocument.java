package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface DialogsheetDocument extends XmlObject {
    public static final DocumentFactory<DialogsheetDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DialogsheetDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dialogsheet3662doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDialogsheet addNewDialogsheet();

    CTDialogsheet getDialogsheet();

    void setDialogsheet(CTDialogsheet cTDialogsheet);
}
