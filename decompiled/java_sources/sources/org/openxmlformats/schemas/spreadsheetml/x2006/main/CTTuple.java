package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTTuple extends XmlObject {
    public static final DocumentFactory<CTTuple> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTuple> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttuplef2e7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getFld();

    long getHier();

    long getItem();

    boolean isSetFld();

    boolean isSetHier();

    void setFld(long j);

    void setHier(long j);

    void setItem(long j);

    void unsetFld();

    void unsetHier();

    XmlUnsignedInt xgetFld();

    XmlUnsignedInt xgetHier();

    XmlUnsignedInt xgetItem();

    void xsetFld(XmlUnsignedInt xmlUnsignedInt);

    void xsetHier(XmlUnsignedInt xmlUnsignedInt);

    void xsetItem(XmlUnsignedInt xmlUnsignedInt);
}
