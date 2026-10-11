package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTShowInfoKiosk extends XmlObject {
    public static final DocumentFactory<CTShowInfoKiosk> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTShowInfoKiosk> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctshowinfokiosk99f1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getRestart();

    boolean isSetRestart();

    void setRestart(long j);

    void unsetRestart();

    XmlUnsignedInt xgetRestart();

    void xsetRestart(XmlUnsignedInt xmlUnsignedInt);
}
