package com.microsoft.schemas.office.office;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DgmlayoutmruAttribute extends XmlObject {
    public static final DocumentFactory<DgmlayoutmruAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DgmlayoutmruAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dgmlayoutmru9765attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    BigInteger getDgmlayoutmru();

    boolean isSetDgmlayoutmru();

    void setDgmlayoutmru(BigInteger bigInteger);

    void unsetDgmlayoutmru();

    STDiagramLayout xgetDgmlayoutmru();

    void xsetDgmlayoutmru(STDiagramLayout sTDiagramLayout);
}
