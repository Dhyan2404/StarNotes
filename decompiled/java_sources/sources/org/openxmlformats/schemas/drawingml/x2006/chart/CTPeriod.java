package org.openxmlformats.schemas.drawingml.x2006.chart;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTPeriod extends XmlObject {
    public static final DocumentFactory<CTPeriod> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPeriod> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctperiod591btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getVal();

    boolean isSetVal();

    void setVal(long j);

    void unsetVal();

    STPeriod xgetVal();

    void xsetVal(STPeriod sTPeriod);
}
