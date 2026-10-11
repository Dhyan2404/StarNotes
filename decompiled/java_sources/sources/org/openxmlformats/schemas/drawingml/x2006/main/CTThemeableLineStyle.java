package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTThemeableLineStyle extends XmlObject {
    public static final DocumentFactory<CTThemeableLineStyle> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTThemeableLineStyle> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctthemeablelinestyle4d95type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTLineProperties addNewLn();

    CTStyleMatrixReference addNewLnRef();

    CTLineProperties getLn();

    CTStyleMatrixReference getLnRef();

    boolean isSetLn();

    boolean isSetLnRef();

    void setLn(CTLineProperties cTLineProperties);

    void setLnRef(CTStyleMatrixReference cTStyleMatrixReference);

    void unsetLn();

    void unsetLnRef();
}
