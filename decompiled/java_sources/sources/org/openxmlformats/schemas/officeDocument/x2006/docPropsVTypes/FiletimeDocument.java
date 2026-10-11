package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface FiletimeDocument extends XmlObject {
    public static final DocumentFactory<FiletimeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<FiletimeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "filetime3708doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Calendar getFiletime();

    void setFiletime(Calendar calendar);

    XmlDateTime xgetFiletime();

    void xsetFiletime(XmlDateTime xmlDateTime);
}
