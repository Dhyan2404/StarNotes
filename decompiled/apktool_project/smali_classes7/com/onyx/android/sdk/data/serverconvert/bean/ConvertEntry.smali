.class public final Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010A\u001a\u00020\nJ\u0008\u0010B\u001a\u0004\u0018\u000109J\u0008\u0010C\u001a\u0004\u0018\u000109J\u0006\u0010D\u001a\u00020EJ\u0006\u0010F\u001a\u00020EJ\u0006\u0010G\u001a\u00020EJ\u0006\u0010H\u001a\u00020EJ\u0006\u0010I\u001a\u00020EJ\u0006\u0010J\u001a\u00020ER\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000eR\u001c\u0010\u0018\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000eR\u001a\u0010\u001e\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR\u001a\u0010!\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000c\"\u0004\u0008#\u0010\u000eR\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001a\u00100\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u000c\"\u0004\u00082\u0010\u000eR\u0011\u00103\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u000cR\u001a\u00105\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u000c\"\u0004\u00087\u0010\u000eR\u001c\u00108\u001a\u0004\u0018\u000109X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\u001a\u0010>\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\'\"\u0004\u0008@\u0010)\u00a8\u0006K"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "",
        "()V",
        "convertType",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;",
        "getConvertType",
        "()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;",
        "setConvertType",
        "(Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;)V",
        "downloadLocalPath",
        "",
        "getDownloadLocalPath",
        "()Ljava/lang/String;",
        "setDownloadLocalPath",
        "(Ljava/lang/String;)V",
        "file",
        "Ljava/io/File;",
        "getFile",
        "()Ljava/io/File;",
        "setFile",
        "(Ljava/io/File;)V",
        "fileName",
        "getFileName",
        "setFileName",
        "filePassword",
        "getFilePassword",
        "setFilePassword",
        "ossDownloadKey",
        "getOssDownloadKey",
        "setOssDownloadKey",
        "ossUploadKey",
        "getOssUploadKey",
        "setOssUploadKey",
        "ossUploadUrl",
        "getOssUploadUrl",
        "setOssUploadUrl",
        "progressValue",
        "",
        "getProgressValue",
        "()I",
        "setProgressValue",
        "(I)V",
        "status",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;",
        "getStatus",
        "()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;",
        "setStatus",
        "(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V",
        "targetFormat",
        "getTargetFormat",
        "setTargetFormat",
        "taskId",
        "getTaskId",
        "ticket",
        "getTicket",
        "setTicket",
        "uri",
        "Landroid/net/Uri;",
        "getUri",
        "()Landroid/net/Uri;",
        "setUri",
        "(Landroid/net/Uri;)V",
        "waitingIndex",
        "getWaitingIndex",
        "setWaitingIndex",
        "generateConvertDocName",
        "generateUriFromLocalPath",
        "getImportUri",
        "isConvertFailed",
        "",
        "isConvertSuccess",
        "isConvertUnSupport",
        "isFileEncrypted",
        "isProcessing",
        "isUploadSuccess",
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
.field private convertType:Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private downloadLocalPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private file:Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private filePassword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ossDownloadKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ossUploadKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ossUploadUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressValue:I

.field private status:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private targetFormat:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final taskId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private ticket:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private uri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private waitingIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->taskId:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_NONE:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->status:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->file:Ljava/io/File;

    iput-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossUploadKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossUploadUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ticket:Ljava/lang/String;

    iput-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->downloadLocalPath:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/data/R$string;->target_format_pdf:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->targetFormat:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;->COS:Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->convertType:Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    return-void
.end method


# virtual methods
.method public final generateConvertDocName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossDownloadKey:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->targetFormat:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/DocConvertUtils;->INSTANCE:Lcom/onyx/android/sdk/data/serverconvert/DocConvertUtils;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossDownloadKey:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/serverconvert/DocConvertUtils;->generateSaveDocName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateUriFromLocalPath()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->downloadLocalPath:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->downloadLocalPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/UriUtils;->file2Uri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final getConvertType()Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->convertType:Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    return-object p0
.end method

.method public final getDownloadLocalPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->downloadLocalPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getFile()Ljava/io/File;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->file:Ljava/io/File;

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFilePassword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->filePassword:Ljava/lang/String;

    return-object p0
.end method

.method public final getImportUri()Landroid/net/Uri;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->status:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->generateUriFromLocalPath()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->uri:Landroid/net/Uri;

    :goto_0
    return-object p0
.end method

.method public final getOssDownloadKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossDownloadKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getOssUploadKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossUploadKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getOssUploadUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossUploadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getProgressValue()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->progressValue:I

    return p0
.end method

.method public final getStatus()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->status:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    return-object p0
.end method

.method public final getTargetFormat()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->targetFormat:Ljava/lang/String;

    return-object p0
.end method

.method public final getTaskId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->taskId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ticket:Ljava/lang/String;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getWaitingIndex()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->waitingIndex:I

    return p0
.end method

.method public final isConvertFailed()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->status:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_FAILED:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isConvertSuccess()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->status:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isConvertUnSupport()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->status:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_UN_SUPPORT:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFileEncrypted()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->filePassword:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public final isProcessing()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->status:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_PROCESSING:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUploadSuccess()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossUploadUrl:Ljava/lang/String;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setConvertType(Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->convertType:Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;

    return-void
.end method

.method public final setDownloadLocalPath(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->downloadLocalPath:Ljava/lang/String;

    return-void
.end method

.method public final setFile(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->file:Ljava/io/File;

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setFilePassword(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->filePassword:Ljava/lang/String;

    return-void
.end method

.method public final setOssDownloadKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossDownloadKey:Ljava/lang/String;

    return-void
.end method

.method public final setOssUploadKey(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossUploadKey:Ljava/lang/String;

    return-void
.end method

.method public final setOssUploadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ossUploadUrl:Ljava/lang/String;

    return-void
.end method

.method public final setProgressValue(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->progressValue:I

    return-void
.end method

.method public final setStatus(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->status:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    return-void
.end method

.method public final setTargetFormat(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->targetFormat:Ljava/lang/String;

    return-void
.end method

.method public final setTicket(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->ticket:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->uri:Landroid/net/Uri;

    return-void
.end method

.method public final setWaitingIndex(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->waitingIndex:I

    return-void
.end method
