.class public final Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/event/BaseStatisticsEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0003H\u00c2\u0003J\u0013\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\u0008\u0010\u000e\u001a\u00020\tH\u0016J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\t\u0010\u0011\u001a\u00020\tH\u00d6\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;",
        "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;",
        "folderCreateFrom",
        "Lcom/onyx/android/sdk/data/FolderCreateFrom;",
        "(Lcom/onyx/android/sdk/data/FolderCreateFrom;)V",
        "component1",
        "copy",
        "dataToMap",
        "",
        "",
        "equals",
        "",
        "other",
        "",
        "getEventId",
        "hashCode",
        "",
        "toString",
        "sdk-statistics_overseasRelease"
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
.field private final folderCreateFrom:Lcom/onyx/android/sdk/data/FolderCreateFrom;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/FolderCreateFrom;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/FolderCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "folderCreateFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;->folderCreateFrom:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    return-void
.end method

.method private final component1()Lcom/onyx/android/sdk/data/FolderCreateFrom;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;->folderCreateFrom:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;Lcom/onyx/android/sdk/data/FolderCreateFrom;ILjava/lang/Object;)Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;->folderCreateFrom:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;->copy(Lcom/onyx/android/sdk/data/FolderCreateFrom;)Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/onyx/android/sdk/data/FolderCreateFrom;)Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/FolderCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "folderCreateFrom"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;-><init>(Lcom/onyx/android/sdk/data/FolderCreateFrom;)V

    return-object p0
.end method

.method public dataToMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;->folderCreateFrom:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "folder_create_from"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;->folderCreateFrom:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    iget-object p1, p1, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;->folderCreateFrom:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "folder_create"

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;->folderCreateFrom:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatisticsCreateFolderEvent(folderCreateFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsCreateFolderEvent;->folderCreateFrom:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
