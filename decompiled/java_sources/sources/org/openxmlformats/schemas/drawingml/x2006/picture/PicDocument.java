package org.openxmlformats.schemas.drawingml.x2006.picture;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface PicDocument extends XmlObject {
    public static final DocumentFactory<PicDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PicDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pic8010doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPicture addNewPic();

    CTPicture getPic();

    void setPic(CTPicture cTPicture);
}
