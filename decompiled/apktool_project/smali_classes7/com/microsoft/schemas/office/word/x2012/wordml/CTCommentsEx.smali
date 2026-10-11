.class public interface abstract Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentsEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentsEx;",
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

    const-string v2, "ctcommentsexc37ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentsEx;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentsEx;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCommentEx()Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentEx;
.end method

.method public abstract getCommentExArray(I)Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentEx;
.end method

.method public abstract getCommentExArray()[Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentEx;
.end method

.method public abstract getCommentExList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentEx;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCommentEx(I)Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentEx;
.end method

.method public abstract removeCommentEx(I)V
.end method

.method public abstract setCommentExArray(ILcom/microsoft/schemas/office/word/x2012/wordml/CTCommentEx;)V
.end method

.method public abstract setCommentExArray([Lcom/microsoft/schemas/office/word/x2012/wordml/CTCommentEx;)V
.end method

.method public abstract sizeOfCommentExArray()I
.end method
