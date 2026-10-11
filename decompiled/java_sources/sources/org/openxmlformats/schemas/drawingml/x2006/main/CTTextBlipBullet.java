package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTextBlipBullet extends XmlObject {
    public static final DocumentFactory<CTTextBlipBullet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextBlipBullet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttextblipbullet853btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBlip addNewBlip();

    CTBlip getBlip();

    void setBlip(CTBlip cTBlip);
}
