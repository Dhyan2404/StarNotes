package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTRangeSet extends XmlObject {
    public static final DocumentFactory<CTRangeSet> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRangeSet> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrangeset2c6etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getI1();

    long getI2();

    long getI3();

    long getI4();

    String getId();

    String getName();

    String getRef();

    String getSheet();

    boolean isSetI1();

    boolean isSetI2();

    boolean isSetI3();

    boolean isSetI4();

    boolean isSetId();

    boolean isSetName();

    boolean isSetRef();

    boolean isSetSheet();

    void setI1(long j);

    void setI2(long j);

    void setI3(long j);

    void setI4(long j);

    void setId(String str);

    void setName(String str);

    void setRef(String str);

    void setSheet(String str);

    void unsetI1();

    void unsetI2();

    void unsetI3();

    void unsetI4();

    void unsetId();

    void unsetName();

    void unsetRef();

    void unsetSheet();

    XmlUnsignedInt xgetI1();

    XmlUnsignedInt xgetI2();

    XmlUnsignedInt xgetI3();

    XmlUnsignedInt xgetI4();

    STRelationshipId xgetId();

    STXstring xgetName();

    STRef xgetRef();

    STXstring xgetSheet();

    void xsetI1(XmlUnsignedInt xmlUnsignedInt);

    void xsetI2(XmlUnsignedInt xmlUnsignedInt);

    void xsetI3(XmlUnsignedInt xmlUnsignedInt);

    void xsetI4(XmlUnsignedInt xmlUnsignedInt);

    void xsetId(STRelationshipId sTRelationshipId);

    void xsetName(STXstring sTXstring);

    void xsetRef(STRef sTRef);

    void xsetSheet(STXstring sTXstring);
}
