package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STSortType;

/* loaded from: classes15.dex */
public interface CTSet extends XmlObject {
    public static final DocumentFactory<CTSet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctset25c1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTuples addNewSortByTuple();

    CTTuples addNewTpls();

    long getCount();

    int getMaxRank();

    boolean getQueryFailed();

    String getSetDefinition();

    CTTuples getSortByTuple();

    STSortType.Enum getSortType();

    CTTuples getTplsArray(int i);

    CTTuples[] getTplsArray();

    List<CTTuples> getTplsList();

    CTTuples insertNewTpls(int i);

    boolean isSetCount();

    boolean isSetQueryFailed();

    boolean isSetSortByTuple();

    boolean isSetSortType();

    void removeTpls(int i);

    void setCount(long j);

    void setMaxRank(int i);

    void setQueryFailed(boolean z);

    void setSetDefinition(String str);

    void setSortByTuple(CTTuples cTTuples);

    void setSortType(STSortType.Enum r1);

    void setTplsArray(int i, CTTuples cTTuples);

    void setTplsArray(CTTuples[] cTTuplesArr);

    int sizeOfTplsArray();

    void unsetCount();

    void unsetQueryFailed();

    void unsetSortByTuple();

    void unsetSortType();

    XmlUnsignedInt xgetCount();

    XmlInt xgetMaxRank();

    XmlBoolean xgetQueryFailed();

    STXstring xgetSetDefinition();

    STSortType xgetSortType();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);

    void xsetMaxRank(XmlInt xmlInt);

    void xsetQueryFailed(XmlBoolean xmlBoolean);

    void xsetSetDefinition(STXstring sTXstring);

    void xsetSortType(STSortType sTSortType);
}
