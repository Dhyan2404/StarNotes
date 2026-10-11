package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTTrackChangeNumbering extends CTTrackChange {
    public static final DocumentFactory<CTTrackChangeNumbering> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTrackChangeNumbering> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttrackchangenumberinge6catype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getOriginal();

    boolean isSetOriginal();

    void setOriginal(String str);

    void unsetOriginal();

    STString xgetOriginal();

    void xsetOriginal(STString sTString);
}
