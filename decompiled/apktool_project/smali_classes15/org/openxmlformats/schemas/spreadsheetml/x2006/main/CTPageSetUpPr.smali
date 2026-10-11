.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;",
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

    const-string v2, "ctpagesetuppr24cftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAutoPageBreaks()Z
.end method

.method public abstract getFitToPage()Z
.end method

.method public abstract isSetAutoPageBreaks()Z
.end method

.method public abstract isSetFitToPage()Z
.end method

.method public abstract setAutoPageBreaks(Z)V
.end method

.method public abstract setFitToPage(Z)V
.end method

.method public abstract unsetAutoPageBreaks()V
.end method

.method public abstract unsetFitToPage()V
.end method

.method public abstract xgetAutoPageBreaks()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFitToPage()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAutoPageBreaks(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFitToPage(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
