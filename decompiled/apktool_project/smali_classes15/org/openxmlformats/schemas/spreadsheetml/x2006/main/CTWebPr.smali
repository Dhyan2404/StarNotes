.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPr;",
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

    const-string v2, "ctwebpre615type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWebPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTables()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTables;
.end method

.method public abstract getConsecutive()Z
.end method

.method public abstract getEditPage()Ljava/lang/String;
.end method

.method public abstract getFirstRow()Z
.end method

.method public abstract getHtmlFormat()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHtmlFmt$Enum;
.end method

.method public abstract getHtmlTables()Z
.end method

.method public abstract getParsePre()Z
.end method

.method public abstract getPost()Ljava/lang/String;
.end method

.method public abstract getSourceData()Z
.end method

.method public abstract getTables()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTables;
.end method

.method public abstract getTextDates()Z
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getXl2000()Z
.end method

.method public abstract getXl97()Z
.end method

.method public abstract getXml()Z
.end method

.method public abstract isSetConsecutive()Z
.end method

.method public abstract isSetEditPage()Z
.end method

.method public abstract isSetFirstRow()Z
.end method

.method public abstract isSetHtmlFormat()Z
.end method

.method public abstract isSetHtmlTables()Z
.end method

.method public abstract isSetParsePre()Z
.end method

.method public abstract isSetPost()Z
.end method

.method public abstract isSetSourceData()Z
.end method

.method public abstract isSetTables()Z
.end method

.method public abstract isSetTextDates()Z
.end method

.method public abstract isSetUrl()Z
.end method

.method public abstract isSetXl2000()Z
.end method

.method public abstract isSetXl97()Z
.end method

.method public abstract isSetXml()Z
.end method

.method public abstract setConsecutive(Z)V
.end method

.method public abstract setEditPage(Ljava/lang/String;)V
.end method

.method public abstract setFirstRow(Z)V
.end method

.method public abstract setHtmlFormat(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHtmlFmt$Enum;)V
.end method

.method public abstract setHtmlTables(Z)V
.end method

.method public abstract setParsePre(Z)V
.end method

.method public abstract setPost(Ljava/lang/String;)V
.end method

.method public abstract setSourceData(Z)V
.end method

.method public abstract setTables(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTables;)V
.end method

.method public abstract setTextDates(Z)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method

.method public abstract setXl2000(Z)V
.end method

.method public abstract setXl97(Z)V
.end method

.method public abstract setXml(Z)V
.end method

.method public abstract unsetConsecutive()V
.end method

.method public abstract unsetEditPage()V
.end method

.method public abstract unsetFirstRow()V
.end method

.method public abstract unsetHtmlFormat()V
.end method

.method public abstract unsetHtmlTables()V
.end method

.method public abstract unsetParsePre()V
.end method

.method public abstract unsetPost()V
.end method

.method public abstract unsetSourceData()V
.end method

.method public abstract unsetTables()V
.end method

.method public abstract unsetTextDates()V
.end method

.method public abstract unsetUrl()V
.end method

.method public abstract unsetXl2000()V
.end method

.method public abstract unsetXl97()V
.end method

.method public abstract unsetXml()V
.end method

.method public abstract xgetConsecutive()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEditPage()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFirstRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHtmlFormat()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHtmlFmt;
.end method

.method public abstract xgetHtmlTables()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetParsePre()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPost()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetSourceData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTextDates()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUrl()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetXl2000()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetXl97()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetXml()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetConsecutive(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEditPage(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFirstRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHtmlFormat(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHtmlFmt;)V
.end method

.method public abstract xsetHtmlTables(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetParsePre(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPost(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetSourceData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTextDates(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUrl(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetXl2000(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetXl97(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetXml(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
