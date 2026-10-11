.class public final Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0011\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u00a2\u0006\u0004\u0008 \u0010\u0008B\u001b\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008 \u0010!R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R$\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR$\u0010\u0018\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u001c\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u0011\u0010\u001e\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "",
        "",
        "a",
        "Z",
        "isSuccess",
        "()Z",
        "setSuccess",
        "(Z)V",
        "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "b",
        "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "getException",
        "()Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "setException",
        "(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V",
        "exception",
        "",
        "c",
        "Ljava/lang/String;",
        "getAuthName",
        "()Ljava/lang/String;",
        "setAuthName",
        "(Ljava/lang/String;)V",
        "authName",
        "d",
        "getAccountId",
        "setAccountId",
        "accountId",
        "getError",
        "error",
        "success",
        "<init>",
        "(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Z

.field public b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->a:Z

    return-void
.end method

.method public constructor <init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->a:Z

    .line 5
    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    return-void
.end method


# virtual methods
.method public final getAccountId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getAuthName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getError()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getError()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getException()Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    return-object p0
.end method

.method public final isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->a:Z

    return p0
.end method

.method public final setAccountId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->d:Ljava/lang/String;

    return-void
.end method

.method public final setAuthName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->c:Ljava/lang/String;

    return-void
.end method

.method public final setException(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->a:Z

    return-void
.end method
