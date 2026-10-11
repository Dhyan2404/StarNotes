.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagList;",
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

    const-string v2, "cttaglist6477type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewTag()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTStringTag;
.end method

.method public abstract getTagArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTStringTag;
.end method

.method public abstract getTagArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTStringTag;
.end method

.method public abstract getTagList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTStringTag;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTag(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTStringTag;
.end method

.method public abstract removeTag(I)V
.end method

.method public abstract setTagArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTStringTag;)V
.end method

.method public abstract setTagArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTStringTag;)V
.end method

.method public abstract sizeOfTagArray()I
.end method
