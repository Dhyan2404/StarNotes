package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTChartsheetProtection extends XmlObject {
    public static final DocumentFactory<CTChartsheetProtection> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChartsheetProtection> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchartsheetprotection3cc3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getAlgorithmName();

    boolean getContent();

    byte[] getHashValue();

    boolean getObjects();

    byte[] getPassword();

    byte[] getSaltValue();

    long getSpinCount();

    boolean isSetAlgorithmName();

    boolean isSetContent();

    boolean isSetHashValue();

    boolean isSetObjects();

    boolean isSetPassword();

    boolean isSetSaltValue();

    boolean isSetSpinCount();

    void setAlgorithmName(String str);

    void setContent(boolean z);

    void setHashValue(byte[] bArr);

    void setObjects(boolean z);

    void setPassword(byte[] bArr);

    void setSaltValue(byte[] bArr);

    void setSpinCount(long j);

    void unsetAlgorithmName();

    void unsetContent();

    void unsetHashValue();

    void unsetObjects();

    void unsetPassword();

    void unsetSaltValue();

    void unsetSpinCount();

    STXstring xgetAlgorithmName();

    XmlBoolean xgetContent();

    XmlBase64Binary xgetHashValue();

    XmlBoolean xgetObjects();

    STUnsignedShortHex xgetPassword();

    XmlBase64Binary xgetSaltValue();

    XmlUnsignedInt xgetSpinCount();

    void xsetAlgorithmName(STXstring sTXstring);

    void xsetContent(XmlBoolean xmlBoolean);

    void xsetHashValue(XmlBase64Binary xmlBase64Binary);

    void xsetObjects(XmlBoolean xmlBoolean);

    void xsetPassword(STUnsignedShortHex sTUnsignedShortHex);

    void xsetSaltValue(XmlBase64Binary xmlBase64Binary);

    void xsetSpinCount(XmlUnsignedInt xmlUnsignedInt);
}
