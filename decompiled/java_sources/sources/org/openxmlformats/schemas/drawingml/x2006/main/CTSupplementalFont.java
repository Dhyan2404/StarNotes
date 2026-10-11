package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSupplementalFont extends XmlObject {
    public static final DocumentFactory<CTSupplementalFont> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSupplementalFont> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsupplementalfonta06etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getScript();

    String getTypeface();

    void setScript(String str);

    void setTypeface(String str);

    XmlString xgetScript();

    STTextTypeface xgetTypeface();

    void xsetScript(XmlString xmlString);

    void xsetTypeface(STTextTypeface sTTextTypeface);
}
