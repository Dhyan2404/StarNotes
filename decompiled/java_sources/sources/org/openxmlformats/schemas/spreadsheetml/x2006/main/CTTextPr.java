package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STFileType;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STQualifier;

/* loaded from: classes15.dex */
public interface CTTextPr extends XmlObject {
    public static final DocumentFactory<CTTextPr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextPr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttextpr0b58type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTextFields addNewTextFields();

    String getCharacterSet();

    long getCodePage();

    boolean getComma();

    boolean getConsecutive();

    String getDecimal();

    boolean getDelimited();

    String getDelimiter();

    STFileType.Enum getFileType();

    long getFirstRow();

    boolean getPrompt();

    STQualifier.Enum getQualifier();

    boolean getSemicolon();

    String getSourceFile();

    boolean getSpace();

    boolean getTab();

    CTTextFields getTextFields();

    String getThousands();

    boolean isSetCharacterSet();

    boolean isSetCodePage();

    boolean isSetComma();

    boolean isSetConsecutive();

    boolean isSetDecimal();

    boolean isSetDelimited();

    boolean isSetDelimiter();

    boolean isSetFileType();

    boolean isSetFirstRow();

    boolean isSetPrompt();

    boolean isSetQualifier();

    boolean isSetSemicolon();

    boolean isSetSourceFile();

    boolean isSetSpace();

    boolean isSetTab();

    boolean isSetTextFields();

    boolean isSetThousands();

    void setCharacterSet(String str);

    void setCodePage(long j);

    void setComma(boolean z);

    void setConsecutive(boolean z);

    void setDecimal(String str);

    void setDelimited(boolean z);

    void setDelimiter(String str);

    void setFileType(STFileType.Enum r1);

    void setFirstRow(long j);

    void setPrompt(boolean z);

    void setQualifier(STQualifier.Enum r1);

    void setSemicolon(boolean z);

    void setSourceFile(String str);

    void setSpace(boolean z);

    void setTab(boolean z);

    void setTextFields(CTTextFields cTTextFields);

    void setThousands(String str);

    void unsetCharacterSet();

    void unsetCodePage();

    void unsetComma();

    void unsetConsecutive();

    void unsetDecimal();

    void unsetDelimited();

    void unsetDelimiter();

    void unsetFileType();

    void unsetFirstRow();

    void unsetPrompt();

    void unsetQualifier();

    void unsetSemicolon();

    void unsetSourceFile();

    void unsetSpace();

    void unsetTab();

    void unsetTextFields();

    void unsetThousands();

    XmlString xgetCharacterSet();

    XmlUnsignedInt xgetCodePage();

    XmlBoolean xgetComma();

    XmlBoolean xgetConsecutive();

    STXstring xgetDecimal();

    XmlBoolean xgetDelimited();

    STXstring xgetDelimiter();

    STFileType xgetFileType();

    XmlUnsignedInt xgetFirstRow();

    XmlBoolean xgetPrompt();

    STQualifier xgetQualifier();

    XmlBoolean xgetSemicolon();

    STXstring xgetSourceFile();

    XmlBoolean xgetSpace();

    XmlBoolean xgetTab();

    STXstring xgetThousands();

    void xsetCharacterSet(XmlString xmlString);

    void xsetCodePage(XmlUnsignedInt xmlUnsignedInt);

    void xsetComma(XmlBoolean xmlBoolean);

    void xsetConsecutive(XmlBoolean xmlBoolean);

    void xsetDecimal(STXstring sTXstring);

    void xsetDelimited(XmlBoolean xmlBoolean);

    void xsetDelimiter(STXstring sTXstring);

    void xsetFileType(STFileType sTFileType);

    void xsetFirstRow(XmlUnsignedInt xmlUnsignedInt);

    void xsetPrompt(XmlBoolean xmlBoolean);

    void xsetQualifier(STQualifier sTQualifier);

    void xsetSemicolon(XmlBoolean xmlBoolean);

    void xsetSourceFile(STXstring sTXstring);

    void xsetSpace(XmlBoolean xmlBoolean);

    void xsetTab(XmlBoolean xmlBoolean);

    void xsetThousands(STXstring sTXstring);
}
