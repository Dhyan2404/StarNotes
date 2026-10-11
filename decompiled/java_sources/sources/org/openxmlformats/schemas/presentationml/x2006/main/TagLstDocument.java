package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface TagLstDocument extends XmlObject {
    public static final DocumentFactory<TagLstDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<TagLstDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "taglst05dedoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTagList addNewTagLst();

    CTTagList getTagLst();

    void setTagLst(CTTagList cTTagList);
}
