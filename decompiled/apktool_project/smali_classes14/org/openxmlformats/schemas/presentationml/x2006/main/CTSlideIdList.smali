.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;",
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

    const-string v2, "ctslideidlist70a5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSldId()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
.end method

.method public abstract getSldIdArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
.end method

.method public abstract getSldIdArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
.end method

.method public abstract getSldIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewSldId(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;
.end method

.method public abstract removeSldId(I)V
.end method

.method public abstract setSldIdArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V
.end method

.method public abstract setSldIdArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideIdListEntry;)V
.end method

.method public abstract sizeOfSldIdArray()I
.end method
