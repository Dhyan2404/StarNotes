.class public Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
.super Lcom/onyx/android/sdk/data/common/data/ResultCode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 (*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010#J\u000e\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001bH\u0007J\n\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0008\u0010\'\u001a\u00020\u0017H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00178G\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u00178G\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0018R&\u0010\u001a\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "T",
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;",
        "()V",
        "count",
        "",
        "getCount",
        "()J",
        "setCount",
        "(J)V",
        "cursor",
        "",
        "getCursor",
        "()Ljava/lang/String;",
        "setCursor",
        "(Ljava/lang/String;)V",
        "fetchSource",
        "",
        "getFetchSource",
        "()I",
        "setFetchSource",
        "(I)V",
        "isContentEmpty",
        "",
        "()Z",
        "isFetchFromCloud",
        "list",
        "",
        "getList",
        "()Ljava/util/List;",
        "setList",
        "(Ljava/util/List;)V",
        "add",
        "",
        "t",
        "(Ljava/lang/Object;)V",
        "ensureList",
        "getException",
        "Lcom/onyx/android/sdk/data/common/exception/ContentException;",
        "hasException",
        "Companion",
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


# static fields
.field public static final CLOUD:I = 0x1

.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private count:J

.field private cursor:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fetchSource:I

.field private list:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        alternateNames = {
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->list:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ensureList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->list:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->list:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->list:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->count:J

    return-wide v0
.end method

.method public final getCursor()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->cursor:Ljava/lang/String;

    return-object p0
.end method

.method public getException()Lcom/onyx/android/sdk/data/common/exception/ContentException;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->hasException()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/common/exception/ContentException;->Companion:Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/common/exception/ContentException$Companion;->exceptionFromCode(ILjava/lang/String;)Lcom/onyx/android/sdk/data/common/exception/ContentException;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getFetchSource()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->fetchSource:I

    return p0
.end method

.method public final getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->list:Ljava/util/List;

    return-object p0
.end method

.method public hasException()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isContentEmpty()Z
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-wide v0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->list:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isFetchFromCloud()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->fetchSource:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->count:J

    return-void
.end method

.method public final setCursor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->cursor:Ljava/lang/String;

    return-void
.end method

.method public final setFetchSource(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->fetchSource:I

    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->list:Ljava/util/List;

    return-void
.end method
