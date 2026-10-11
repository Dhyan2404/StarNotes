package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface DateDocument extends XmlObject {
    public static final DocumentFactory<DateDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DateDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "datedc43doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Calendar getDate();

    void setDate(Calendar calendar);

    XmlDateTime xgetDate();

    void xsetDate(XmlDateTime xmlDateTime);
}
