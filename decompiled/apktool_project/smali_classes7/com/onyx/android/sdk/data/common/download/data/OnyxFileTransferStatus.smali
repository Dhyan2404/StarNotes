.class public final Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u0011\u0008\u0016\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010(\u001a\u00020)H\u0007J\u0008\u0010*\u001a\u00020\u0011H\u0007J\u0008\u0010+\u001a\u00020\u0011H\u0007J\u0006\u0010,\u001a\u00020-J\u0006\u0010.\u001a\u00020-J\u0006\u0010/\u001a\u00020-J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0016\u00100\u001a\u00020-2\u0006\u00101\u001a\u00020 2\u0006\u00102\u001a\u000203J\u0010\u00104\u001a\u00020-2\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0018\u00104\u001a\u00020-2\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u000206H\u0007R\u001e\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0005R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\u0005R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0007\"\u0004\u0008\'\u0010\u0005\u00a8\u00068"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;",
        "T",
        "Ljava/io/Serializable;",
        "()V",
        "entry",
        "(Ljava/lang/Object;)V",
        "getEntry",
        "()Ljava/lang/Object;",
        "setEntry",
        "Ljava/lang/Object;",
        "errorResultCode",
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;",
        "getErrorResultCode",
        "()Lcom/onyx/android/sdk/data/common/data/ResultCode;",
        "setErrorResultCode",
        "(Lcom/onyx/android/sdk/data/common/data/ResultCode;)V",
        "isUpload",
        "",
        "()Z",
        "setUpload",
        "(Z)V",
        "newTag",
        "",
        "getNewTag",
        "setNewTag",
        "progressInfo",
        "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "getProgressInfo",
        "()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
        "setProgressInfo",
        "(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V",
        "status",
        "",
        "getStatus",
        "()I",
        "setStatus",
        "(I)V",
        "tag",
        "getTag",
        "setTag",
        "getProgress",
        "",
        "isCompleted",
        "isError",
        "setCompleteStatus",
        "",
        "setErrorStatus",
        "setInvalidStatus",
        "updateErrorResultCode",
        "code",
        "message",
        "",
        "updateProgressInfo",
        "currentOffset",
        "",
        "totalLength",
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
.field private entry:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorResultCode:Lcom/onyx/android/sdk/data/common/data/ResultCode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isUpload:Z

.field private newTag:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private status:I

.field private tag:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    .line 5
    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->entry:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getEntry()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->entry:Ljava/lang/Object;

    return-object p0
.end method

.method public final getErrorResultCode()Lcom/onyx/android/sdk/data/common/data/ResultCode;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->errorResultCode:Lcom/onyx/android/sdk/data/common/data/ResultCode;

    return-object p0
.end method

.method public final getNewTag()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->newTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final getProgress()D
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getProgressInfo()Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->status:I

    return p0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public final isCompleted()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->status:I

    int-to-byte p0, p0

    const/4 v0, -0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isError()Z
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->status:I

    int-to-byte p0, p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUpload()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->isUpload:Z

    return p0
.end method

.method public final setCompleteStatus()V
    .locals 1

    const/4 v0, -0x3

    iput v0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->status:I

    return-void
.end method

.method public final setEntry(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->entry:Ljava/lang/Object;

    return-void
.end method

.method public final setErrorResultCode(Lcom/onyx/android/sdk/data/common/data/ResultCode;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/common/data/ResultCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->errorResultCode:Lcom/onyx/android/sdk/data/common/data/ResultCode;

    return-void
.end method

.method public final setErrorStatus()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->status:I

    return-void
.end method

.method public final setInvalidStatus()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->status:I

    return-void
.end method

.method public final setNewTag(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->newTag:Ljava/lang/Object;

    return-void
.end method

.method public final setProgressInfo(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;",
            ")",
            "Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "progressInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->status:I

    return-object p0
.end method

.method public final setProgressInfo(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->status:I

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->tag:Ljava/lang/Object;

    return-void
.end method

.method public final setUpload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->isUpload:Z

    return-void
.end method

.method public final updateErrorResultCode(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ResultCode;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;-><init>()V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setMessage(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->errorResultCode:Lcom/onyx/android/sdk/data/common/data/ResultCode;

    return-void
.end method

.method public final updateProgressInfo(JJ)V
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setSoFarBytes(J)V

    .line 3
    invoke-virtual {v0, p3, p4}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setTotalBytes(J)V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getSoFarBytes()J

    move-result-wide p1

    long-to-double p1, p1

    const/16 p3, 0x64

    int-to-double p3, p3

    mul-double/2addr p1, p3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->getTotalBytes()J

    move-result-wide p3

    long-to-double p3, p3

    div-double/2addr p1, p3

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;->setProgress(D)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->updateProgressInfo(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method

.method public final updateProgressInfo(Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    const-string v0, "progressInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->progressInfo:Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lcom/onyx/android/sdk/data/common/download/data/OnyxFileTransferStatus;->status:I

    return-void
.end method
