.class public interface abstract Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComments;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComments;",
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

    const-string v2, "ctthreadedcommentsaa8etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComments;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComments;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewThreadedComment()Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getThreadedCommentArray(I)Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;
.end method

.method public abstract getThreadedCommentArray()[Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;
.end method

.method public abstract getThreadedCommentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewThreadedComment(I)Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract removeThreadedComment(I)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setThreadedCommentArray(ILcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;)V
.end method

.method public abstract setThreadedCommentArray([Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;)V
.end method

.method public abstract sizeOfThreadedCommentArray()I
.end method

.method public abstract unsetExtLst()V
.end method
