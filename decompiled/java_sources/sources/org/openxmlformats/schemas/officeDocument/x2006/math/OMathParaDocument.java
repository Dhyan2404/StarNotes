package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface OMathParaDocument extends XmlObject {
    public static final DocumentFactory<OMathParaDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OMathParaDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "omathpara2b79doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathPara addNewOMathPara();

    CTOMathPara getOMathPara();

    void setOMathPara(CTOMathPara cTOMathPara);
}
