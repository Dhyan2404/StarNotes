package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTColorFilter extends XmlObject {
    public static final DocumentFactory<CTColorFilter> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorFilter> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolorfilterfddatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getCellColor();

    long getDxfId();

    boolean isSetCellColor();

    boolean isSetDxfId();

    void setCellColor(boolean z);

    void setDxfId(long j);

    void unsetCellColor();

    void unsetDxfId();

    XmlBoolean xgetCellColor();

    STDxfId xgetDxfId();

    void xsetCellColor(XmlBoolean xmlBoolean);

    void xsetDxfId(STDxfId sTDxfId);
}
