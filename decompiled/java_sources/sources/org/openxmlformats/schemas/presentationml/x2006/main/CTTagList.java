package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTagList extends XmlObject {
    public static final DocumentFactory<CTTagList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTagList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttaglist6477type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStringTag addNewTag();

    CTStringTag getTagArray(int i);

    CTStringTag[] getTagArray();

    List<CTStringTag> getTagList();

    CTStringTag insertNewTag(int i);

    void removeTag(int i);

    void setTagArray(int i, CTStringTag cTStringTag);

    void setTagArray(CTStringTag[] cTStringTagArr);

    int sizeOfTagArray();
}
