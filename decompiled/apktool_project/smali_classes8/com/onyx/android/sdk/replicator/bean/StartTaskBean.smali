.class public final Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008R(\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00058\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;",
        "",
        "",
        "key",
        "setKey",
        "",
        "syncRecordType",
        "setSyncRecordType",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "getTaskDisposable",
        "taskDisposable",
        "setTaskDisposable",
        "<set-?>",
        "a",
        "Ljava/lang/String;",
        "getKey",
        "()Ljava/lang/String;",
        "b",
        "I",
        "getSyncRecordType",
        "()I",
        "c",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:I

.field public c:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getSyncRecordType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->b:I

    return p0
.end method

.method public final getTaskDisposable()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method

.method public final setKey(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setSyncRecordType(I)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->b:I

    return-object p0
.end method

.method public final setTaskDisposable(Lio/reactivex/rxjava3/disposables/Disposable;)Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;
    .locals 0
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/bean/StartTaskBean;->c:Lio/reactivex/rxjava3/disposables/Disposable;

    return-object p0
.end method
