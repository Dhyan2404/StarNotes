.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/CommentsType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/CommentsType;",
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

    const-string v2, "commentstype5085type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/CommentsType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/CommentsType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAuthorList()Lcom/microsoft/schemas/office/visio/x2012/main/AuthorListType;
.end method

.method public abstract addNewCommentList()Lcom/microsoft/schemas/office/visio/x2012/main/CommentListType;
.end method

.method public abstract getAuthorList()Lcom/microsoft/schemas/office/visio/x2012/main/AuthorListType;
.end method

.method public abstract getCommentList()Lcom/microsoft/schemas/office/visio/x2012/main/CommentListType;
.end method

.method public abstract getShowCommentTags()Z
.end method

.method public abstract isSetAuthorList()Z
.end method

.method public abstract isSetCommentList()Z
.end method

.method public abstract isSetShowCommentTags()Z
.end method

.method public abstract setAuthorList(Lcom/microsoft/schemas/office/visio/x2012/main/AuthorListType;)V
.end method

.method public abstract setCommentList(Lcom/microsoft/schemas/office/visio/x2012/main/CommentListType;)V
.end method

.method public abstract setShowCommentTags(Z)V
.end method

.method public abstract unsetAuthorList()V
.end method

.method public abstract unsetCommentList()V
.end method

.method public abstract unsetShowCommentTags()V
.end method

.method public abstract xgetShowCommentTags()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetShowCommentTags(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
