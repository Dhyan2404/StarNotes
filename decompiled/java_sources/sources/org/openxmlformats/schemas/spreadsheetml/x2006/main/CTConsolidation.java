package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTConsolidation extends XmlObject {
    public static final DocumentFactory<CTConsolidation> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTConsolidation> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctconsolidation894btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPages addNewPages();

    CTRangeSets addNewRangeSets();

    boolean getAutoPage();

    CTPages getPages();

    CTRangeSets getRangeSets();

    boolean isSetAutoPage();

    boolean isSetPages();

    void setAutoPage(boolean z);

    void setPages(CTPages cTPages);

    void setRangeSets(CTRangeSets cTRangeSets);

    void unsetAutoPage();

    void unsetPages();

    XmlBoolean xgetAutoPage();

    void xsetAutoPage(XmlBoolean xmlBoolean);
}
