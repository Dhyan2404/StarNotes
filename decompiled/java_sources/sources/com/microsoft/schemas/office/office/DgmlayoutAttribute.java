package com.microsoft.schemas.office.office;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DgmlayoutAttribute extends XmlObject {
    public static final DocumentFactory<DgmlayoutAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DgmlayoutAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dgmlayout8ee7attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    BigInteger getDgmlayout();

    boolean isSetDgmlayout();

    void setDgmlayout(BigInteger bigInteger);

    void unsetDgmlayout();

    STDiagramLayout xgetDgmlayout();

    void xsetDgmlayout(STDiagramLayout sTDiagramLayout);
}
