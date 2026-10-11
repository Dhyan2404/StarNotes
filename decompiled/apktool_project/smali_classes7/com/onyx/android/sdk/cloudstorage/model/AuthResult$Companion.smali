.class public final Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u0007\u001a\u00020\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;",
        "",
        "()V",
        "authFail",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "exception",
        "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "authSuccess",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final authFail()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;-><init>(Z)V

    return-object p0
.end method

.method public final authFail(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;-><init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V

    return-object p0
.end method

.method public final authSuccess()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;-><init>(Z)V

    return-object p0
.end method
