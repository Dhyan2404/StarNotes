package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTOptimizeForBrowser extends CTOnOff {
    public static final DocumentFactory<CTOptimizeForBrowser> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOptimizeForBrowser> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoptimizeforbrowser4ecctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getTarget();

    boolean isSetTarget();

    void setTarget(String str);

    void unsetTarget();

    STString xgetTarget();

    void xsetTarget(STString sTString);
}
