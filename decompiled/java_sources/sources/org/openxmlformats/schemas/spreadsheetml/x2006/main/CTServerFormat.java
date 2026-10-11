package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTServerFormat extends XmlObject {
    public static final DocumentFactory<CTServerFormat> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTServerFormat> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctserverformat84e3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCulture();

    String getFormat();

    boolean isSetCulture();

    boolean isSetFormat();

    void setCulture(String str);

    void setFormat(String str);

    void unsetCulture();

    void unsetFormat();

    STXstring xgetCulture();

    STXstring xgetFormat();

    void xsetCulture(STXstring sTXstring);

    void xsetFormat(STXstring sTXstring);
}
