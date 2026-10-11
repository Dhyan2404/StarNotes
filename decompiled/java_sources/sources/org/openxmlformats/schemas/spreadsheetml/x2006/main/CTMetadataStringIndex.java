package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMetadataStringIndex extends XmlObject {
    public static final DocumentFactory<CTMetadataStringIndex> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMetadataStringIndex> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmetadatastringindex5bf1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getS();

    long getX();

    boolean isSetS();

    void setS(boolean z);

    void setX(long j);

    void unsetS();

    XmlBoolean xgetS();

    XmlUnsignedInt xgetX();

    void xsetS(XmlBoolean xmlBoolean);

    void xsetX(XmlUnsignedInt xmlUnsignedInt);
}
