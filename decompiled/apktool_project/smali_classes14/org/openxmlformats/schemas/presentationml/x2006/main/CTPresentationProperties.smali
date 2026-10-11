.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentationProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentationProperties;",
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

    const-string v2, "ctpresentationproperties1858type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentationProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPresentationProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewClrMru()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMRU;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewHtmlPubPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHtmlPublishProperties;
.end method

.method public abstract addNewPrnPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPrintProperties;
.end method

.method public abstract addNewShowPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowProperties;
.end method

.method public abstract addNewWebPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWebProperties;
.end method

.method public abstract getClrMru()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMRU;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getHtmlPubPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHtmlPublishProperties;
.end method

.method public abstract getPrnPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPrintProperties;
.end method

.method public abstract getShowPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowProperties;
.end method

.method public abstract getWebPr()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWebProperties;
.end method

.method public abstract isSetClrMru()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHtmlPubPr()Z
.end method

.method public abstract isSetPrnPr()Z
.end method

.method public abstract isSetShowPr()Z
.end method

.method public abstract isSetWebPr()Z
.end method

.method public abstract setClrMru(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTColorMRU;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHtmlPubPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHtmlPublishProperties;)V
.end method

.method public abstract setPrnPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTPrintProperties;)V
.end method

.method public abstract setShowPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTShowProperties;)V
.end method

.method public abstract setWebPr(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWebProperties;)V
.end method

.method public abstract unsetClrMru()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHtmlPubPr()V
.end method

.method public abstract unsetPrnPr()V
.end method

.method public abstract unsetShowPr()V
.end method

.method public abstract unsetWebPr()V
.end method
