.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0002R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000cR\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;",
        "",
        "",
        "driveId",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "cloudFileArgs",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;",
        "from",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "sortBy",
        "a",
        "CREATED_AT",
        "Ljava/lang/String;",
        "NAME_TAG",
        "PARENT_FILE_ID_TAG",
        "UPDATED_AT",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/SortBy;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const-string p0, "updated_at"

    goto :goto_0

    :cond_0
    const-string p0, "created_at"

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/data/SortBy;->Size:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "lowerCase(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final from(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "cloudFileArgs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setDriveId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getLimit()I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setLimit(Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getCursor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setMarker(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getParentId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "root"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setParentFileId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOrder()Lcom/onyx/android/sdk/base/data/SortOrder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->upperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setOrderDirection(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getSortBy()Lcom/onyx/android/sdk/base/data/SortBy;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs$Companion;->a(Lcom/onyx/android/sdk/base/data/SortBy;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setOrderBy(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getPrecisionSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " = "

    goto :goto_0

    :cond_1
    const-string v0, " match "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setQuery(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->getOrderBy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->getOrderDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setOrderBy(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setOrderDirection(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getFilterParent()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->getQuery()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and parent_file_id = \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->getParentFileId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunQueryArgs;->setQuery(Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method
