package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface ForeignDataType extends XmlObject {
    public static final DocumentFactory<ForeignDataType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<ForeignDataType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "foreigndatatypefe8dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    RelType addNewRel();

    double getCompressionLevel();

    String getCompressionType();

    double getExtentX();

    double getExtentY();

    String getForeignType();

    int getMappingMode();

    double getObjectHeight();

    long getObjectType();

    double getObjectWidth();

    RelType getRel();

    boolean getShowAsIcon();

    boolean isSetCompressionLevel();

    boolean isSetCompressionType();

    boolean isSetExtentX();

    boolean isSetExtentY();

    boolean isSetMappingMode();

    boolean isSetObjectHeight();

    boolean isSetObjectType();

    boolean isSetObjectWidth();

    boolean isSetShowAsIcon();

    void setCompressionLevel(double d);

    void setCompressionType(String str);

    void setExtentX(double d);

    void setExtentY(double d);

    void setForeignType(String str);

    void setMappingMode(int i);

    void setObjectHeight(double d);

    void setObjectType(long j);

    void setObjectWidth(double d);

    void setRel(RelType relType);

    void setShowAsIcon(boolean z);

    void unsetCompressionLevel();

    void unsetCompressionType();

    void unsetExtentX();

    void unsetExtentY();

    void unsetMappingMode();

    void unsetObjectHeight();

    void unsetObjectType();

    void unsetObjectWidth();

    void unsetShowAsIcon();

    XmlDouble xgetCompressionLevel();

    XmlToken xgetCompressionType();

    XmlDouble xgetExtentX();

    XmlDouble xgetExtentY();

    XmlToken xgetForeignType();

    XmlUnsignedShort xgetMappingMode();

    XmlDouble xgetObjectHeight();

    XmlUnsignedInt xgetObjectType();

    XmlDouble xgetObjectWidth();

    XmlBoolean xgetShowAsIcon();

    void xsetCompressionLevel(XmlDouble xmlDouble);

    void xsetCompressionType(XmlToken xmlToken);

    void xsetExtentX(XmlDouble xmlDouble);

    void xsetExtentY(XmlDouble xmlDouble);

    void xsetForeignType(XmlToken xmlToken);

    void xsetMappingMode(XmlUnsignedShort xmlUnsignedShort);

    void xsetObjectHeight(XmlDouble xmlDouble);

    void xsetObjectType(XmlUnsignedInt xmlUnsignedInt);

    void xsetObjectWidth(XmlDouble xmlDouble);

    void xsetShowAsIcon(XmlBoolean xmlBoolean);
}
