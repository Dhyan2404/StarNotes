package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTX extends XmlObject {
    public static final DocumentFactory<CTX> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTX> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctx8517type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getV();

    boolean isSetV();

    void setV(int i);

    void unsetV();

    XmlInt xgetV();

    void xsetV(XmlInt xmlInt);
}
