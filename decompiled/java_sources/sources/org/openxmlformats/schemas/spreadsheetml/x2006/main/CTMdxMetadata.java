package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMdxMetadata extends XmlObject {
    public static final DocumentFactory<CTMdxMetadata> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMdxMetadata> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmdxmetadatadceftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMdx addNewMdx();

    long getCount();

    CTMdx getMdxArray(int i);

    CTMdx[] getMdxArray();

    List<CTMdx> getMdxList();

    CTMdx insertNewMdx(int i);

    boolean isSetCount();

    void removeMdx(int i);

    void setCount(long j);

    void setMdxArray(int i, CTMdx cTMdx);

    void setMdxArray(CTMdx[] cTMdxArr);

    int sizeOfMdxArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
