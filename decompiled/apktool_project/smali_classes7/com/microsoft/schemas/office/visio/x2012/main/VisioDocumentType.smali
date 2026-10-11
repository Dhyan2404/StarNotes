.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;",
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

    const-string v2, "visiodocumenttypebfcatype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/VisioDocumentType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewColors()Lcom/microsoft/schemas/office/visio/x2012/main/ColorsType;
.end method

.method public abstract addNewDocumentSettings()Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;
.end method

.method public abstract addNewDocumentSheet()Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSheetType;
.end method

.method public abstract addNewEventList()Lcom/microsoft/schemas/office/visio/x2012/main/EventListType;
.end method

.method public abstract addNewFaceNames()Lcom/microsoft/schemas/office/visio/x2012/main/FaceNamesType;
.end method

.method public abstract addNewHeaderFooter()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterType;
.end method

.method public abstract addNewPublishSettings()Lcom/microsoft/schemas/office/visio/x2012/main/PublishSettingsType;
.end method

.method public abstract addNewStyleSheets()Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetsType;
.end method

.method public abstract getColors()Lcom/microsoft/schemas/office/visio/x2012/main/ColorsType;
.end method

.method public abstract getDocumentSettings()Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;
.end method

.method public abstract getDocumentSheet()Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSheetType;
.end method

.method public abstract getEventList()Lcom/microsoft/schemas/office/visio/x2012/main/EventListType;
.end method

.method public abstract getFaceNames()Lcom/microsoft/schemas/office/visio/x2012/main/FaceNamesType;
.end method

.method public abstract getHeaderFooter()Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterType;
.end method

.method public abstract getPublishSettings()Lcom/microsoft/schemas/office/visio/x2012/main/PublishSettingsType;
.end method

.method public abstract getStyleSheets()Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetsType;
.end method

.method public abstract isSetColors()Z
.end method

.method public abstract isSetDocumentSettings()Z
.end method

.method public abstract isSetDocumentSheet()Z
.end method

.method public abstract isSetEventList()Z
.end method

.method public abstract isSetFaceNames()Z
.end method

.method public abstract isSetHeaderFooter()Z
.end method

.method public abstract isSetPublishSettings()Z
.end method

.method public abstract isSetStyleSheets()Z
.end method

.method public abstract setColors(Lcom/microsoft/schemas/office/visio/x2012/main/ColorsType;)V
.end method

.method public abstract setDocumentSettings(Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSettingsType;)V
.end method

.method public abstract setDocumentSheet(Lcom/microsoft/schemas/office/visio/x2012/main/DocumentSheetType;)V
.end method

.method public abstract setEventList(Lcom/microsoft/schemas/office/visio/x2012/main/EventListType;)V
.end method

.method public abstract setFaceNames(Lcom/microsoft/schemas/office/visio/x2012/main/FaceNamesType;)V
.end method

.method public abstract setHeaderFooter(Lcom/microsoft/schemas/office/visio/x2012/main/HeaderFooterType;)V
.end method

.method public abstract setPublishSettings(Lcom/microsoft/schemas/office/visio/x2012/main/PublishSettingsType;)V
.end method

.method public abstract setStyleSheets(Lcom/microsoft/schemas/office/visio/x2012/main/StyleSheetsType;)V
.end method

.method public abstract unsetColors()V
.end method

.method public abstract unsetDocumentSettings()V
.end method

.method public abstract unsetDocumentSheet()V
.end method

.method public abstract unsetEventList()V
.end method

.method public abstract unsetFaceNames()V
.end method

.method public abstract unsetHeaderFooter()V
.end method

.method public abstract unsetPublishSettings()V
.end method

.method public abstract unsetStyleSheets()V
.end method
