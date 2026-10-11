package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STPositivePercentage;

/* loaded from: classes14.dex */
public interface CTTLIterateIntervalPercentage extends XmlObject {
    public static final DocumentFactory<CTTLIterateIntervalPercentage> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLIterateIntervalPercentage> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttliterateintervalpercentage9dcetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    void setVal(Object obj);

    STPositivePercentage xgetVal();

    void xsetVal(STPositivePercentage sTPositivePercentage);
}
