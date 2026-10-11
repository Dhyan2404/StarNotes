.class public interface abstract Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTThreadedComments2Ext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTThreadedComments2Ext;",
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

    const-string v2, "ctthreadedcomments2ext2d0ctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTThreadedComments2Ext;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTThreadedComments2Ext;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewHyperlink()Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTCommentHyperlink;
.end method

.method public abstract getChecksum()J
.end method

.method public abstract getHyperlinkArray(I)Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTCommentHyperlink;
.end method

.method public abstract getHyperlinkArray()[Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTCommentHyperlink;
.end method

.method public abstract getHyperlinkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTCommentHyperlink;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewHyperlink(I)Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTCommentHyperlink;
.end method

.method public abstract removeHyperlink(I)V
.end method

.method public abstract setChecksum(J)V
.end method

.method public abstract setHyperlinkArray(ILcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTCommentHyperlink;)V
.end method

.method public abstract setHyperlinkArray([Lcom/microsoft/schemas/office/spreadsheetml/x2020/threadedcomments2/CTCommentHyperlink;)V
.end method

.method public abstract sizeOfHyperlinkArray()I
.end method

.method public abstract xgetChecksum()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetChecksum(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
