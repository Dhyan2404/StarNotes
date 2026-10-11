package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CalcChainDocument extends XmlObject {
    public static final DocumentFactory<CalcChainDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CalcChainDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "calcchainfc37doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCalcChain addNewCalcChain();

    CTCalcChain getCalcChain();

    void setCalcChain(CTCalcChain cTCalcChain);
}
