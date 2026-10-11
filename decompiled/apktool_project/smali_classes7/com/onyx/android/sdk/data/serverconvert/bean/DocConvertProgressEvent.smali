.class public final Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0019\u001a\u00020\u001aR \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;",
        "",
        "()V",
        "localList",
        "",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "getLocalList",
        "()Ljava/util/List;",
        "setLocalList",
        "(Ljava/util/List;)V",
        "networkList",
        "getNetworkList",
        "setNetworkList",
        "status",
        "",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "taskId",
        "",
        "getTaskId",
        "()Ljava/lang/String;",
        "setTaskId",
        "(Ljava/lang/String;)V",
        "isAllTaskComplete",
        "",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private localList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private networkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private status:I

.field private taskId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->status:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->localList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->networkList:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->taskId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLocalList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->localList:Ljava/util/List;

    return-object p0
.end method

.method public final getNetworkList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->networkList:Ljava/util/List;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->status:I

    return p0
.end method

.method public final getTaskId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public final isAllTaskComplete()Z
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->networkList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getStatus()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    move-result-object v5

    sget-object v6, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    if-ne v5, v6, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->localList:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getStatus()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    move-result-object v5

    sget-object v6, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    if-ne v5, v6, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    if-eqz v5, :cond_3

    move-object v2, v0

    :cond_5
    check-cast v2, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    return v3
.end method

.method public final setLocalList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->localList:Ljava/util/List;

    return-void
.end method

.method public final setNetworkList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->networkList:Ljava/util/List;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->status:I

    return-void
.end method

.method public final setTaskId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/DocConvertProgressEvent;->taskId:Ljava/lang/String;

    return-void
.end method
