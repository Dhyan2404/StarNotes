.class public interface abstract Lcom/microsoft/schemas/office/visio/x2012/main/CommentEntryType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/visio/x2012/main/CommentEntryType;",
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

    const-string v2, "commententrytype3286type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/CommentEntryType;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/visio/x2012/main/CommentEntryType;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAuthorID()J
.end method

.method public abstract getAutoCommentType()J
.end method

.method public abstract getCommentID()J
.end method

.method public abstract getDate()Ljava/util/Calendar;
.end method

.method public abstract getDone()Z
.end method

.method public abstract getEditDate()Ljava/util/Calendar;
.end method

.method public abstract getPageID()J
.end method

.method public abstract getShapeID()J
.end method

.method public abstract isSetAutoCommentType()Z
.end method

.method public abstract isSetDone()Z
.end method

.method public abstract isSetEditDate()Z
.end method

.method public abstract isSetShapeID()Z
.end method

.method public abstract setAuthorID(J)V
.end method

.method public abstract setAutoCommentType(J)V
.end method

.method public abstract setCommentID(J)V
.end method

.method public abstract setDate(Ljava/util/Calendar;)V
.end method

.method public abstract setDone(Z)V
.end method

.method public abstract setEditDate(Ljava/util/Calendar;)V
.end method

.method public abstract setPageID(J)V
.end method

.method public abstract setShapeID(J)V
.end method

.method public abstract unsetAutoCommentType()V
.end method

.method public abstract unsetDone()V
.end method

.method public abstract unsetEditDate()V
.end method

.method public abstract unsetShapeID()V
.end method

.method public abstract xgetAuthorID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetAutoCommentType()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCommentID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDate()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetDone()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEditDate()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetPageID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetShapeID()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetAuthorID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetAutoCommentType(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCommentID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDate(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetDone(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEditDate(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetPageID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetShapeID(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
