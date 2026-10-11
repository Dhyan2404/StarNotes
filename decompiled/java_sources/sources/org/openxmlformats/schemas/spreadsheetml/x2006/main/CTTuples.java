package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTTuples extends XmlObject {
    public static final DocumentFactory<CTTuples> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTuples> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttuples49f4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTuple addNewTpl();

    long getC();

    CTTuple getTplArray(int i);

    CTTuple[] getTplArray();

    List<CTTuple> getTplList();

    CTTuple insertNewTpl(int i);

    boolean isSetC();

    void removeTpl(int i);

    void setC(long j);

    void setTplArray(int i, CTTuple cTTuple);

    void setTplArray(CTTuple[] cTTupleArr);

    int sizeOfTplArray();

    void unsetC();

    XmlUnsignedInt xgetC();

    void xsetC(XmlUnsignedInt xmlUnsignedInt);
}
