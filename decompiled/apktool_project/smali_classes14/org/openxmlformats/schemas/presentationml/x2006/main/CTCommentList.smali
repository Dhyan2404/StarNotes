.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;",
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

    const-string v2, "ctcommentlistf692type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommentList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCm()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
.end method

.method public abstract getCmArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
.end method

.method public abstract getCmArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
.end method

.method public abstract getCmList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCm(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;
.end method

.method public abstract removeCm(I)V
.end method

.method public abstract setCmArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;)V
.end method

.method public abstract setCmArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTComment;)V
.end method

.method public abstract sizeOfCmArray()I
.end method
