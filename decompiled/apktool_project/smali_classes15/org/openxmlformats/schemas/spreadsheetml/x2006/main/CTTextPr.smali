.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextPr;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "cttextpr0b58type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTextFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextFields;
.end method

.method public abstract getCharacterSet()Ljava/lang/String;
.end method

.method public abstract getCodePage()J
.end method

.method public abstract getComma()Z
.end method

.method public abstract getConsecutive()Z
.end method

.method public abstract getDecimal()Ljava/lang/String;
.end method

.method public abstract getDelimited()Z
.end method

.method public abstract getDelimiter()Ljava/lang/String;
.end method

.method public abstract getFileType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;
.end method

.method public abstract getFirstRow()J
.end method

.method public abstract getPrompt()Z
.end method

.method public abstract getQualifier()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;
.end method

.method public abstract getSemicolon()Z
.end method

.method public abstract getSourceFile()Ljava/lang/String;
.end method

.method public abstract getSpace()Z
.end method

.method public abstract getTab()Z
.end method

.method public abstract getTextFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextFields;
.end method

.method public abstract getThousands()Ljava/lang/String;
.end method

.method public abstract isSetCharacterSet()Z
.end method

.method public abstract isSetCodePage()Z
.end method

.method public abstract isSetComma()Z
.end method

.method public abstract isSetConsecutive()Z
.end method

.method public abstract isSetDecimal()Z
.end method

.method public abstract isSetDelimited()Z
.end method

.method public abstract isSetDelimiter()Z
.end method

.method public abstract isSetFileType()Z
.end method

.method public abstract isSetFirstRow()Z
.end method

.method public abstract isSetPrompt()Z
.end method

.method public abstract isSetQualifier()Z
.end method

.method public abstract isSetSemicolon()Z
.end method

.method public abstract isSetSourceFile()Z
.end method

.method public abstract isSetSpace()Z
.end method

.method public abstract isSetTab()Z
.end method

.method public abstract isSetTextFields()Z
.end method

.method public abstract isSetThousands()Z
.end method

.method public abstract setCharacterSet(Ljava/lang/String;)V
.end method

.method public abstract setCodePage(J)V
.end method

.method public abstract setComma(Z)V
.end method

.method public abstract setConsecutive(Z)V
.end method

.method public abstract setDecimal(Ljava/lang/String;)V
.end method

.method public abstract setDelimited(Z)V
.end method

.method public abstract setDelimiter(Ljava/lang/String;)V
.end method

.method public abstract setFileType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType$Enum;)V
.end method

.method public abstract setFirstRow(J)V
.end method

.method public abstract setPrompt(Z)V
.end method

.method public abstract setQualifier(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier$Enum;)V
.end method

.method public abstract setSemicolon(Z)V
.end method

.method public abstract setSourceFile(Ljava/lang/String;)V
.end method

.method public abstract setSpace(Z)V
.end method

.method public abstract setTab(Z)V
.end method

.method public abstract setTextFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTextFields;)V
.end method

.method public abstract setThousands(Ljava/lang/String;)V
.end method

.method public abstract unsetCharacterSet()V
.end method

.method public abstract unsetCodePage()V
.end method

.method public abstract unsetComma()V
.end method

.method public abstract unsetConsecutive()V
.end method

.method public abstract unsetDecimal()V
.end method

.method public abstract unsetDelimited()V
.end method

.method public abstract unsetDelimiter()V
.end method

.method public abstract unsetFileType()V
.end method

.method public abstract unsetFirstRow()V
.end method

.method public abstract unsetPrompt()V
.end method

.method public abstract unsetQualifier()V
.end method

.method public abstract unsetSemicolon()V
.end method

.method public abstract unsetSourceFile()V
.end method

.method public abstract unsetSpace()V
.end method

.method public abstract unsetTab()V
.end method

.method public abstract unsetTextFields()V
.end method

.method public abstract unsetThousands()V
.end method

.method public abstract xgetCharacterSet()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetCodePage()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetComma()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetConsecutive()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDecimal()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetDelimited()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDelimiter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFileType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;
.end method

.method public abstract xgetFirstRow()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPrompt()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetQualifier()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier;
.end method

.method public abstract xgetSemicolon()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSourceFile()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetSpace()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTab()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetThousands()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetCharacterSet(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetCodePage(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetComma(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetConsecutive(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDecimal(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetDelimited(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDelimiter(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFileType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFileType;)V
.end method

.method public abstract xsetFirstRow(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPrompt(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetQualifier(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STQualifier;)V
.end method

.method public abstract xsetSemicolon(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSourceFile(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetSpace(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTab(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetThousands(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
