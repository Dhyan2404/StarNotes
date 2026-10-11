.class public interface abstract Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010D\u001a\u00020EH&J\u0008\u0010F\u001a\u00020EH&J\u0008\u0010G\u001a\u00020EH&J\u0008\u0010H\u001a\u00020IH\u0016J\u0008\u0010J\u001a\u00020EH&J\u0008\u0010K\u001a\u00020EH&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0004\u0018\u00010\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u0018\u0010\u001a\u001a\u00020\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u0011\"\u0004\u0008\u001c\u0010\u0013R\u0018\u0010\u001d\u001a\u00020\u001eX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0018\u0010#\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008$\u0010\u0005\"\u0004\u0008%\u0010\u0007R\u0018\u0010&\u001a\u00020\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\'\u0010\u0011\"\u0004\u0008(\u0010\u0013R\u0018\u0010)\u001a\u00020\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010\u0011\"\u0004\u0008+\u0010\u0013R\u0018\u0010,\u001a\u00020-X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u0018\u00102\u001a\u00020\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u00083\u0010\u0011\"\u0004\u00084\u0010\u0013R\u0018\u00105\u001a\u00020\u001eX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u00086\u0010 \"\u0004\u00087\u0010\"R\u001a\u00108\u001a\u0004\u0018\u00010\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u00089\u0010\u0011\"\u0004\u0008:\u0010\u0013R\u001a\u0010;\u001a\u0004\u0018\u00010\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008<\u0010\u0011\"\u0004\u0008=\u0010\u0013R\u0018\u0010>\u001a\u00020\u001eX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008?\u0010 \"\u0004\u0008@\u0010\"R\u0018\u0010A\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008B\u0010\u000b\"\u0004\u0008C\u0010\r\u00a8\u0006L"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;",
        "",
        "boundingRect",
        "Landroid/graphics/RectF;",
        "getBoundingRect",
        "()Landroid/graphics/RectF;",
        "setBoundingRect",
        "(Landroid/graphics/RectF;)V",
        "createdAt",
        "Ljava/util/Date;",
        "getCreatedAt",
        "()Ljava/util/Date;",
        "setCreatedAt",
        "(Ljava/util/Date;)V",
        "dataUniqueId",
        "",
        "getDataUniqueId",
        "()Ljava/lang/String;",
        "setDataUniqueId",
        "(Ljava/lang/String;)V",
        "documentUniqueId",
        "getDocumentUniqueId",
        "setDocumentUniqueId",
        "groupId",
        "getGroupId",
        "setGroupId",
        "infoRevisionId",
        "getInfoRevisionId",
        "setInfoRevisionId",
        "layerId",
        "",
        "getLayerId",
        "()I",
        "setLayerId",
        "(I)V",
        "originRect",
        "getOriginRect",
        "setOriginRect",
        "pageUniqueId",
        "getPageUniqueId",
        "setPageUniqueId",
        "revisionId",
        "getRevisionId",
        "setRevisionId",
        "shapeCreateArgs",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "getShapeCreateArgs",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;",
        "setShapeCreateArgs",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V",
        "shapeUniqueId",
        "getShapeUniqueId",
        "setShapeUniqueId",
        "status",
        "getStatus",
        "setStatus",
        "subPageUniqueId",
        "getSubPageUniqueId",
        "setSubPageUniqueId",
        "text",
        "getText",
        "setText",
        "type",
        "getType",
        "setType",
        "updatedAt",
        "getUpdatedAt",
        "setUpdatedAt",
        "ensureDataUniqueId",
        "",
        "ensureShapeUniqueId",
        "resetShapeRect",
        "underContent",
        "",
        "updateShapeRect",
        "updateShapeTime",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract ensureDataUniqueId()V
.end method

.method public abstract ensureShapeUniqueId()V
.end method

.method public abstract getBoundingRect()Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getCreatedAt()Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDataUniqueId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getDocumentUniqueId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getGroupId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getInfoRevisionId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getLayerId()I
.end method

.method public abstract getOriginRect()Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getPageUniqueId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getRevisionId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getShapeCreateArgs()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getShapeUniqueId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getStatus()I
.end method

.method public abstract getSubPageUniqueId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getType()I
.end method

.method public abstract getUpdatedAt()Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract resetShapeRect()V
.end method

.method public abstract setBoundingRect(Landroid/graphics/RectF;)V
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setCreatedAt(Ljava/util/Date;)V
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setDataUniqueId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setDocumentUniqueId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setGroupId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setInfoRevisionId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setLayerId(I)V
.end method

.method public abstract setOriginRect(Landroid/graphics/RectF;)V
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setPageUniqueId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setRevisionId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setShapeCreateArgs(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeCreateArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setShapeUniqueId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setStatus(I)V
.end method

.method public abstract setSubPageUniqueId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setText(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setType(I)V
.end method

.method public abstract setUpdatedAt(Ljava/util/Date;)V
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract underContent()Z
.end method

.method public abstract updateShapeRect()V
.end method

.method public abstract updateShapeTime()V
.end method
