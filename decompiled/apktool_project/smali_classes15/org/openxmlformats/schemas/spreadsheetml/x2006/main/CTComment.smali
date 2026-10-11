.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;",
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

    const-string v2, "ctcomment7bfetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTComment;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCommentPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentPr;
.end method

.method public abstract addNewText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract getAuthorId()J
.end method

.method public abstract getCommentPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentPr;
.end method

.method public abstract getGuid()Ljava/lang/String;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getShapeId()J
.end method

.method public abstract getText()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;
.end method

.method public abstract isSetCommentPr()Z
.end method

.method public abstract isSetGuid()Z
.end method

.method public abstract isSetShapeId()Z
.end method

.method public abstract setAuthorId(J)V
.end method

.method public abstract setCommentPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCommentPr;)V
.end method

.method public abstract setGuid(Ljava/lang/String;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setShapeId(J)V
.end method

.method public abstract setText(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRst;)V
.end method

.method public abstract unsetCommentPr()V
.end method

.method public abstract unsetGuid()V
.end method

.method public abstract unsetShapeId()V
.end method

.method public abstract xgetAuthorId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetGuid()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetShapeId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetAuthorId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetGuid(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetShapeId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
