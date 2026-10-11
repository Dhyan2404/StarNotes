package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTNumFmt extends XmlObject {
    public static final DocumentFactory<CTNumFmt> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTNumFmt> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctnumfmt3870type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getFormatCode();

    long getNumFmtId();

    void setFormatCode(String str);

    void setNumFmtId(long j);

    STXstring xgetFormatCode();

    STNumFmtId xgetNumFmtId();

    void xsetFormatCode(STXstring sTXstring);

    void xsetNumFmtId(STNumFmtId sTNumFmtId);
}
