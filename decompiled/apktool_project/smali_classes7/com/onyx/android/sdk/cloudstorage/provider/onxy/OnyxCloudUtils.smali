.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u00088\u00109J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002J$\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u0018\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0002J&\u0010\u001b\u001a\u00020\u001a2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\rJ\u0016\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 J\u0018\u0010%\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0008\u0010$\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\'\u001a\u00020&2\u0006\u0010#\u001a\u00020\"J&\u0010+\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020(2\u0006\u0010!\u001a\u00020 2\u0006\u0010*\u001a\u00020\u0012J\"\u0010.\u001a\u0008\u0012\u0004\u0012\u00020-0\u000c2\u0006\u0010\u001f\u001a\u00020\u001e2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cJ\u0016\u00100\u001a\u00020-2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\"J\u0016\u00100\u001a\u00020-2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020\rJ\u0010\u00103\u001a\u0002022\u0006\u00101\u001a\u00020\u0002H\u0002J\u0010\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u0002H\u0002R\u0014\u00106\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u0006:"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;",
        "",
        "",
        "prefix",
        "Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;",
        "getBaseListObjectBean",
        "partPrefix",
        "getCompleteCloudPrefix",
        "userId",
        "getOssNetDiskDirPath",
        "path",
        "appendFileSeparator",
        "",
        "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
        "list",
        "currentDir",
        "removeCurrentObject",
        "objectSummary",
        "",
        "isCurrentDir",
        "objectKey",
        "getCloudFilePath",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "sortBy",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "sortOrder",
        "",
        "sort",
        "summary",
        "isDirectory",
        "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;",
        "cloudStorageRecordProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;",
        "operationData",
        "Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;",
        "metadata",
        "cloudPath",
        "setCloudPath",
        "",
        "getHeaderAppendPosition",
        "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;",
        "ossManager",
        "checkExist",
        "copySmallFile",
        "objectList",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "toCloudFiles",
        "fileInfo",
        "toCloudFile",
        "name",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;",
        "d",
        "eTag",
        "e",
        "OSS_HEADER_APPEND_POSITION",
        "Ljava/lang/String;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OSS_HEADER_APPEND_POSITION:Ljava/lang/String; = "x-oss-next-append-position"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->g(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->h(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->f(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I

    move-result p0

    return p0
.end method

.method public static final f(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I
    .locals 4

    const-string v0, "$sortOrder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ComparatorUtils;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->isDirectory(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)Z

    move-result v2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->isDirectory(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)Z

    move-result v1

    sget-object v3, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v0, v2, v1, v3}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->booleanComparator(ZZLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getKey(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p0}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->stringComparator(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static final g(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I
    .locals 7

    const-string v0, "$sortOrder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ComparatorUtils;

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->isDirectory(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)Z

    move-result v2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->isDirectory(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)Z

    move-result v0

    sget-object v3, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->booleanComparator(ZZLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getSize()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getSize()J

    move-result-wide v4

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->longComparator(JJLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static final h(Lcom/onyx/android/sdk/base/data/SortOrder;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)I
    .locals 7

    const-string v0, "$sortOrder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lhs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rhs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ComparatorUtils;

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->isDirectory(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)Z

    move-result v2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->isDirectory(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)Z

    move-result v0

    sget-object v3, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->booleanComparator(ZZLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getLastModified()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getLastModified()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->longComparator(JJLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final appendFileSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string p0, ""

    invoke-static {p1, p0}, Lonyx/org/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public final copySmallFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;Z)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudStorageRecordProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ossManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getCompleteCloudPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getDest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getDest()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getCompleteCloudPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getNewName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lonyx/org/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->isDirectory(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    invoke-static {v0, p1}, Lonyx/org/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "concat(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lonyx/org/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v3, p3}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\r\n"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " copy to "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-class v3, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    invoke-virtual {p1, v3, p3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->doesObjectExist(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Lonyx/org/apache/commons/io/FileExistsException;

    invoke-direct {p0}, Lonyx/org/apache/commons/io/FileExistsException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0, v1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->copySmallFile(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;

    new-instance p1, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p1, v1, p4, p3, p4}, Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;-><init>(Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/Range;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;->syncHeadObject(Lcom/onyx/android/sdk/data/common/oss/GetObjectBean;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->setCloudPath(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    const-string p0, "src"

    invoke-virtual {p1, p0, v0}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;
    .locals 2

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Unknown:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    return-object p0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->mimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Audio:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    return-object p0

    :cond_3
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isVideoType(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Video:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    return-object p0

    :cond_4
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isImageFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Image:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    :goto_2
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string p0, "\""

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/text/Regex;

    invoke-direct {v0, p0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string p0, ""

    invoke-virtual {v0, p1, p0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final getBaseListObjectBean(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getCompleteCloudPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance p0, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

    const/4 v2, 0x0

    const/16 p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3a

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final getCloudFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "objectKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/constans/Constants;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/constans/Constants;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/constans/Constants;->getNETDISK_NAME()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "separator"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, ""

    invoke-static {p0, v0, p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->replaceLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCompleteCloudPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getOssNetDiskDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0, p1}, Lonyx/org/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "concat(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getHeaderAppendPosition(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)J
    .locals 0
    .param p1    # Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "metadata"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object p0

    const-string p1, "x-oss-next-append-position"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getOssNetDiskDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/constans/Constants;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/constans/Constants;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/constans/Constants;->getNETDISK_NAME()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isCurrentDir(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "objectSummary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getKey(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getCloudFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final isDirectory(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)Z
    .locals 2
    .param p1    # Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "summary"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getSize()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDirectory(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "cloudStorageRecordProvider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "operationData"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getOrigin()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfo(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getParent()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object p0

    .line 5
    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1, p0, p2}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFileLocalPath(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfoByLocalPath(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getDir()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final removeCurrentObject(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->isCurrentDir(Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final setCloudPath(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
    .locals 0
    .param p1    # Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "metadata"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-virtual {p1, p0, p2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final sort(Ljava/util/List;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/SortBy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/SortBy;",
            "Lcom/onyx/android/sdk/base/data/SortOrder;",
            ")V"
        }
    .end annotation

    const-string p0, "sortBy"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "sortOrder"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v0, :cond_4

    const/4 p2, 0x2

    if-eq p0, p2, :cond_3

    new-instance p0, Lcom/sunia/HTREnginev2/ogk;

    invoke-direct {p0, p3}, Lcom/sunia/HTREnginev2/ogk;-><init>(Lcom/onyx/android/sdk/base/data/SortOrder;)V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/sunia/HTREnginev2/ngk;

    invoke-direct {p0, p3}, Lcom/sunia/HTREnginev2/ngk;-><init>(Lcom/onyx/android/sdk/base/data/SortOrder;)V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/sunia/HTREnginev2/mgk;

    invoke-direct {p0, p3}, Lcom/sunia/HTREnginev2/mgk;-><init>(Lcom/onyx/android/sdk/base/data/SortOrder;)V

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    return-void
.end method

.method public final toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudStorageRecordProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getKey(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getCloudFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getETag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getETag(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;

    sget-object v3, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;->create(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setCloudFilePath(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getParent()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFileLocalPath(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setLocalFilePath(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setMd5(Ljava/lang/String;)V

    .line 23
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getSize()J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setDir(Z)V

    .line 25
    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getSize()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setSize(J)V

    .line 27
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getLastModified()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    .line 28
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;->getLastModified()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    .line 29
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->d(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setMediaCategory(Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;)V

    return-object v2
.end method

.method public final toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudStorageRecordProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "path"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->getCloudFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getETag(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;

    sget-object v4, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;->create(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setCloudFilePath(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getParent()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFileLocalPath(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setLocalFilePath(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setMd5(Ljava/lang/String;)V

    .line 9
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentLength()J

    move-result-wide p0

    const-wide/16 v4, 0x0

    cmp-long p0, p0, v4

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setDir(Z)V

    .line 11
    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getContentLength()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setSize(J)V

    .line 13
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    .line 14
    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;->getLastModified()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    .line 15
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->d(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setMediaCategory(Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;)V

    return-object v3
.end method

.method public final toCloudFiles(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudStorageRecordProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudUtils;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/alibaba/sdk/android/oss/model/OSSObjectSummary;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
