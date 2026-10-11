package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTAutoSortScope extends XmlObject {
    public static final DocumentFactory<CTAutoSortScope> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAutoSortScope> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctautosortscope0dc6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotArea addNewPivotArea();

    CTPivotArea getPivotArea();

    void setPivotArea(CTPivotArea cTPivotArea);
}
