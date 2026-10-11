package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.spreadsheetDrawing.CTMarker;

/* loaded from: classes15.dex */
public interface CTObjectAnchor extends XmlObject {
    public static final DocumentFactory<CTObjectAnchor> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTObjectAnchor> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctobjectanchor5a1dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMarker addNewFrom();

    CTMarker addNewTo();

    CTMarker getFrom();

    boolean getMoveWithCells();

    boolean getSizeWithCells();

    CTMarker getTo();

    boolean isSetMoveWithCells();

    boolean isSetSizeWithCells();

    void setFrom(CTMarker cTMarker);

    void setMoveWithCells(boolean z);

    void setSizeWithCells(boolean z);

    void setTo(CTMarker cTMarker);

    void unsetMoveWithCells();

    void unsetSizeWithCells();

    XmlBoolean xgetMoveWithCells();

    XmlBoolean xgetSizeWithCells();

    void xsetMoveWithCells(XmlBoolean xmlBoolean);

    void xsetSizeWithCells(XmlBoolean xmlBoolean);
}
