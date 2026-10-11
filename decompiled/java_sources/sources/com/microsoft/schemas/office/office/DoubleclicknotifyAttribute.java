package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public interface DoubleclicknotifyAttribute extends XmlObject {
    public static final DocumentFactory<DoubleclicknotifyAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DoubleclicknotifyAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "doubleclicknotifycc53attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTrueFalse.Enum getDoubleclicknotify();

    boolean isSetDoubleclicknotify();

    void setDoubleclicknotify(STTrueFalse.Enum r1);

    void unsetDoubleclicknotify();

    STTrueFalse xgetDoubleclicknotify();

    void xsetDoubleclicknotify(STTrueFalse sTTrueFalse);
}
