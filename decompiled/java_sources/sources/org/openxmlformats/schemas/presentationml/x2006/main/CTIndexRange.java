package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTIndexRange extends XmlObject {
    public static final DocumentFactory<CTIndexRange> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTIndexRange> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctindexrangeda7atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getEnd();

    long getSt();

    void setEnd(long j);

    void setSt(long j);

    STIndex xgetEnd();

    STIndex xgetSt();

    void xsetEnd(STIndex sTIndex);

    void xsetSt(STIndex sTIndex);
}
