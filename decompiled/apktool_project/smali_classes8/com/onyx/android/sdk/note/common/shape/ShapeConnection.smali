.class public interface abstract Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/shape/ShapeConnection$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u0004\u0018\u00010\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/shape/ShapeConnection;",
        "",
        "shapeReferenceBean",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;",
        "getShapeReferenceBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;",
        "setShapeReferenceBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V",
        "shapeSrcBean",
        "Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;",
        "getShapeSrcBean",
        "()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;",
        "setShapeSrcBean",
        "(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V",
        "ensureShapeSourceBean",
        "hasReferenceShapeBeanList",
        "",
        "resetConnection",
        "",
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
.method public abstract ensureShapeSourceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getShapeReferenceBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getShapeSrcBean()Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract hasReferenceShapeBeanList()Z
.end method

.method public abstract resetConnection()V
.end method

.method public abstract setShapeReferenceBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeReferenceBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setShapeSrcBean(Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;)V
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/shape/ShapeSourceBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
