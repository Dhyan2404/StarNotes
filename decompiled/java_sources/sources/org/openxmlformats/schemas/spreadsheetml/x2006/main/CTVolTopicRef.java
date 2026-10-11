package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTVolTopicRef extends XmlObject {
    public static final DocumentFactory<CTVolTopicRef> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTVolTopicRef> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctvoltopicrefacf6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getR();

    long getS();

    void setR(String str);

    void setS(long j);

    STCellRef xgetR();

    XmlUnsignedInt xgetS();

    void xsetR(STCellRef sTCellRef);

    void xsetS(XmlUnsignedInt xmlUnsignedInt);
}
