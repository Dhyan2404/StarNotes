package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMemberProperties extends XmlObject {
    public static final DocumentFactory<CTMemberProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMemberProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmemberpropertiesd2f6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMemberProperty addNewMp();

    long getCount();

    CTMemberProperty getMpArray(int i);

    CTMemberProperty[] getMpArray();

    List<CTMemberProperty> getMpList();

    CTMemberProperty insertNewMp(int i);

    boolean isSetCount();

    void removeMp(int i);

    void setCount(long j);

    void setMpArray(int i, CTMemberProperty cTMemberProperty);

    void setMpArray(CTMemberProperty[] cTMemberPropertyArr);

    int sizeOfMpArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
