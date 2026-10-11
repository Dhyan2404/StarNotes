package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSDCategories extends XmlObject {
    public static final DocumentFactory<CTSDCategories> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSDCategories> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsdcategoriesaea4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSDCategory addNewCat();

    CTSDCategory getCatArray(int i);

    CTSDCategory[] getCatArray();

    List<CTSDCategory> getCatList();

    CTSDCategory insertNewCat(int i);

    void removeCat(int i);

    void setCatArray(int i, CTSDCategory cTSDCategory);

    void setCatArray(CTSDCategory[] cTSDCategoryArr);

    int sizeOfCatArray();
}
