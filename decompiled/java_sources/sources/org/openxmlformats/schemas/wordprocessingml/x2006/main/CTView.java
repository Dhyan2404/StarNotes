package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STView;

/* loaded from: classes16.dex */
public interface CTView extends XmlObject {
    public static final DocumentFactory<CTView> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTView> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctviewfce3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STView.Enum getVal();

    void setVal(STView.Enum r1);

    STView xgetVal();

    void xsetVal(STView sTView);
}
