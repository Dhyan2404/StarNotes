package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STMdxKPIProperty;

/* loaded from: classes15.dex */
public interface CTMdxKPI extends XmlObject {
    public static final DocumentFactory<CTMdxKPI> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMdxKPI> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmdxkpiec6ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getN();

    long getNp();

    STMdxKPIProperty.Enum getP();

    void setN(long j);

    void setNp(long j);

    void setP(STMdxKPIProperty.Enum r1);

    XmlUnsignedInt xgetN();

    XmlUnsignedInt xgetNp();

    STMdxKPIProperty xgetP();

    void xsetN(XmlUnsignedInt xmlUnsignedInt);

    void xsetNp(XmlUnsignedInt xmlUnsignedInt);

    void xsetP(STMdxKPIProperty sTMdxKPIProperty);
}
