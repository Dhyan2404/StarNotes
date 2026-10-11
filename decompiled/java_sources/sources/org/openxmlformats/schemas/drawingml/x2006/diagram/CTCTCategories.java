package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTCTCategories extends XmlObject {
    public static final DocumentFactory<CTCTCategories> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCTCategories> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctctcategories7c84type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCTCategory addNewCat();

    CTCTCategory getCatArray(int i);

    CTCTCategory[] getCatArray();

    List<CTCTCategory> getCatList();

    CTCTCategory insertNewCat(int i);

    void removeCat(int i);

    void setCatArray(int i, CTCTCategory cTCTCategory);

    void setCatArray(CTCTCategory[] cTCTCategoryArr);

    int sizeOfCatArray();
}
