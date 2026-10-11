.class public final Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u000b\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;",
        "",
        "()V",
        "RETRY_COUNT",
        "",
        "fail",
        "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
        "exception",
        "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "throwable",
        "",
        "success",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fail()Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;-><init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final fail(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;-><init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->setException(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V

    return-object p0
.end method

.method public final fail(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;->fail(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    move-result-object p0

    return-object p0
.end method

.method public final success()Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;-><init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->setSuccess(Z)V

    return-object p0
.end method
