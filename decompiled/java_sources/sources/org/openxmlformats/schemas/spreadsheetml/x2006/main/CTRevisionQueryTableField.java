package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRevisionQueryTableField extends XmlObject {
    public static final DocumentFactory<CTRevisionQueryTableField> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRevisionQueryTableField> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrevisionquerytablefield5a78type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getFieldId();

    String getRef();

    long getSheetId();

    void setFieldId(long j);

    void setRef(String str);

    void setSheetId(long j);

    XmlUnsignedInt xgetFieldId();

    STRef xgetRef();

    XmlUnsignedInt xgetSheetId();

    void xsetFieldId(XmlUnsignedInt xmlUnsignedInt);

    void xsetRef(STRef sTRef);

    void xsetSheetId(XmlUnsignedInt xmlUnsignedInt);
}
