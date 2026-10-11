.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;",
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

    const-string v2, "pagestypef2e7type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/PagesType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewPage()Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
.end method

.method public abstract getPageArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
.end method

.method public abstract getPageArray()[Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
.end method

.method public abstract getPageList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/PageType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewPage(I)Lcom/microsoft/schemas/office/visio/x2012/main/PageType;
.end method

.method public abstract removePage(I)V
.end method

.method public abstract setPageArray(ILcom/microsoft/schemas/office/visio/x2012/main/PageType;)V
.end method

.method public abstract setPageArray([Lcom/microsoft/schemas/office/visio/x2012/main/PageType;)V
.end method

.method public abstract sizeOfPageArray()I
.end method
