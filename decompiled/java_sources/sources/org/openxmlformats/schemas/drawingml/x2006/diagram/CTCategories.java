package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTCategories extends XmlObject {
    public static final DocumentFactory<CTCategories> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCategories> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcategories6955type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCategory addNewCat();

    CTCategory getCatArray(int i);

    CTCategory[] getCatArray();

    List<CTCategory> getCatList();

    CTCategory insertNewCat(int i);

    void removeCat(int i);

    void setCatArray(int i, CTCategory cTCategory);

    void setCatArray(CTCategory[] cTCategoryArr);

    int sizeOfCatArray();
}
