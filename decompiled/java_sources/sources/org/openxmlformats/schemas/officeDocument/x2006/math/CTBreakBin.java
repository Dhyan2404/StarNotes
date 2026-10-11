package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.math.STBreakBin;

/* loaded from: classes14.dex */
public interface CTBreakBin extends XmlObject {
    public static final DocumentFactory<CTBreakBin> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBreakBin> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbreakbinacaatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STBreakBin.Enum getVal();

    boolean isSetVal();

    void setVal(STBreakBin.Enum r1);

    void unsetVal();

    STBreakBin xgetVal();

    void xsetVal(STBreakBin sTBreakBin);
}
