.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuideList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuideList;",
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

    const-string v2, "ctguidelist1f95type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuideList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuideList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewGuide()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;
.end method

.method public abstract getGuideArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;
.end method

.method public abstract getGuideArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;
.end method

.method public abstract getGuideList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewGuide(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;
.end method

.method public abstract removeGuide(I)V
.end method

.method public abstract setGuideArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;)V
.end method

.method public abstract setGuideArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGuide;)V
.end method

.method public abstract sizeOfGuideArray()I
.end method
