package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTPivotDimension extends XmlObject {
    public static final DocumentFactory<CTPivotDimension> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPivotDimension> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpivotdimension6d4dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCaption();

    boolean getMeasure();

    String getName();

    String getUniqueName();

    boolean isSetMeasure();

    void setCaption(String str);

    void setMeasure(boolean z);

    void setName(String str);

    void setUniqueName(String str);

    void unsetMeasure();

    STXstring xgetCaption();

    XmlBoolean xgetMeasure();

    STXstring xgetName();

    STXstring xgetUniqueName();

    void xsetCaption(STXstring sTXstring);

    void xsetMeasure(XmlBoolean xmlBoolean);

    void xsetName(STXstring sTXstring);

    void xsetUniqueName(STXstring sTXstring);
}
