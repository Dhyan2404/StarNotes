package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.math.STBreakBinSub;

/* loaded from: classes14.dex */
public interface CTBreakBinSub extends XmlObject {
    public static final DocumentFactory<CTBreakBinSub> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBreakBinSub> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbreakbinsub9d44type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STBreakBinSub.Enum getVal();

    boolean isSetVal();

    void setVal(STBreakBinSub.Enum r1);

    void unsetVal();

    STBreakBinSub xgetVal();

    void xsetVal(STBreakBinSub sTBreakBinSub);
}
