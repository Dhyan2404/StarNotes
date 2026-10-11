package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTMeasureGroup extends XmlObject {
    public static final DocumentFactory<CTMeasureGroup> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMeasureGroup> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmeasuregroup4ccatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCaption();

    String getName();

    void setCaption(String str);

    void setName(String str);

    STXstring xgetCaption();

    STXstring xgetName();

    void xsetCaption(STXstring sTXstring);

    void xsetName(STXstring sTXstring);
}
