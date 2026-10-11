package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMdxMemeberProp extends XmlObject {
    public static final DocumentFactory<CTMdxMemeberProp> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMdxMemeberProp> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmdxmemeberprop4caatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getN();

    long getNp();

    void setN(long j);

    void setNp(long j);

    XmlUnsignedInt xgetN();

    XmlUnsignedInt xgetNp();

    void xsetN(XmlUnsignedInt xmlUnsignedInt);

    void xsetNp(XmlUnsignedInt xmlUnsignedInt);
}
