.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J*\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nJ \u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;",
        "",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
        "list",
        "sortByFolder",
        "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;",
        "cloudStorageRecordProvider",
        "",
        "fileList",
        "",
        "accountId",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "toCloudFiles",
        "file",
        "toCloudFile",
        "",
        "lhs",
        "rhs",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "ascOrder",
        "",
        "b",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;->c(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$booleanComparator(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;ZZLcom/onyx/android/sdk/base/data/SortOrder;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;->b(ZZLcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    return p0
.end method

.method public static final c(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final b(ZZLcom/onyx/android/sdk/base/data/SortOrder;)I
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    const/4 p3, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_1
    if-ne p1, p2, :cond_2

    :goto_0
    move p3, v0

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    :goto_1
    move p3, v1

    :cond_3
    :goto_2
    return p3
.end method

.method public final sortByFolder(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion$sortByFolder$1;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion$sortByFolder$1;

    new-instance v0, Lcom/sunia/HTREnginev2/igk;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/igk;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public final toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "cloudStorageRecordProvider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "file"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "accountId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->getCloudFilePath()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean$Companion;->create(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->isFolder()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setDir(Z)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setCloudFilePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getParent()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v1

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFileLocalPath(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setLocalFilePath(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setAccountId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->getCTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setMd5(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->getSize()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setSize(J)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->getMediaCategory()Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setMediaCategory(Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->getLastModifiedDateTime()Ljava/util/Date;

    move-result-object p0

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    goto :goto_0

    :cond_1
    move-wide p0, v1

    :goto_0
    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->getCreatedDateTime()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    return-object v0
.end method

.method public final toCloudFiles(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudStorageRecordProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;

    invoke-virtual {p0, p1, v1, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
