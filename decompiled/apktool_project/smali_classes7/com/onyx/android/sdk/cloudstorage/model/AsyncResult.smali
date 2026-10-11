.class public final Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u001f\u0008\u0086\u0008\u0018\u0000 ,2\u00020\u0001:\u0001,B\'\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0008H\u00c6\u0003J)\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008H\u00c6\u0001J\t\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\"\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\u000c\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0016R\u0011\u0010&\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u0016R\u0011\u0010)\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
        "",
        "",
        "retry",
        "",
        "component1",
        "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "component2",
        "",
        "component3",
        "success",
        "exception",
        "retryCount",
        "copy",
        "",
        "toString",
        "hashCode",
        "other",
        "equals",
        "a",
        "Z",
        "getSuccess",
        "()Z",
        "setSuccess",
        "(Z)V",
        "b",
        "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "getException",
        "()Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "setException",
        "(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V",
        "c",
        "I",
        "getRetryCount",
        "()I",
        "setRetryCount",
        "(I)V",
        "isNetWorkError",
        "isFinished",
        "getError",
        "()Ljava/lang/String;",
        "error",
        "<init>",
        "(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;I)V",
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
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RETRY_COUNT:I = 0x1


# instance fields
.field public a:Z

.field public b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;-><init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;I)V
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    .line 5
    iput p3, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;-><init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;IILjava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->copy(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;I)Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    return p0
.end method

.method public final component2()Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    return p0
.end method

.method public final copy(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;I)Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;
    .locals 0
    .param p2    # Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;-><init>(ZLcom/onyx/android/sdk/data/common/exception/CloudNoteException;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    iget-object v3, p1, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    iget p1, p1, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final getException()Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    return-object p0
.end method

.method public final getRetryCount()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    return p0
.end method

.method public final getSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isFinished()Z
    .locals 2

    iget-boolean v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isNetWorkError()Z
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/ConnectException;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final retry()V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    return-void
.end method

.method public final setException(Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    return-void
.end method

.method public final setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    return-void
.end method

.method public final setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncResult(success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->b:Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
