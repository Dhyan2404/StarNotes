package org.openxmlformats.schemas.xpackage.x2006.relationships;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.xpackage.x2006.relationships.STTargetMode;

/* loaded from: classes16.dex */
public interface CTRelationship extends XmlString {
    public static final DocumentFactory<CTRelationship> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRelationship> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrelationship8cf8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    String getTarget();

    STTargetMode.Enum getTargetMode();

    String getType();

    boolean isSetTargetMode();

    void setId(String str);

    void setTarget(String str);

    void setTargetMode(STTargetMode.Enum r1);

    void setType(String str);

    void unsetTargetMode();

    XmlID xgetId();

    XmlAnyURI xgetTarget();

    STTargetMode xgetTargetMode();

    XmlAnyURI xgetType();

    void xsetId(XmlID xmlID);

    void xsetTarget(XmlAnyURI xmlAnyURI);

    void xsetTargetMode(STTargetMode sTTargetMode);

    void xsetType(XmlAnyURI xmlAnyURI);
}
