.class public interface abstract Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;",
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

    const-string v2, "ctconnectionsitelistab9etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSiteList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCxn()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;
.end method

.method public abstract getCxnArray(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;
.end method

.method public abstract getCxnArray()[Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;
.end method

.method public abstract getCxnList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCxn(I)Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;
.end method

.method public abstract removeCxn(I)V
.end method

.method public abstract setCxnArray(ILorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V
.end method

.method public abstract setCxnArray([Lorg/openxmlformats/schemas/drawingml/x2006/main/CTConnectionSite;)V
.end method

.method public abstract sizeOfCxnArray()I
.end method
