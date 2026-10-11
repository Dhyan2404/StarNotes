package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTRangeSets extends XmlObject {
    public static final DocumentFactory<CTRangeSets> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRangeSets> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrangesets414dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRangeSet addNewRangeSet();

    long getCount();

    CTRangeSet getRangeSetArray(int i);

    CTRangeSet[] getRangeSetArray();

    List<CTRangeSet> getRangeSetList();

    CTRangeSet insertNewRangeSet(int i);

    boolean isSetCount();

    void removeRangeSet(int i);

    void setCount(long j);

    void setRangeSetArray(int i, CTRangeSet cTRangeSet);

    void setRangeSetArray(CTRangeSet[] cTRangeSetArr);

    int sizeOfRangeSetArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
