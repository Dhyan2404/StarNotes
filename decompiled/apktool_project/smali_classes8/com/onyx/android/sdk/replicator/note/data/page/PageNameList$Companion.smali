.class public final Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u001a\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004J.\u0010\t\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u000e\u001a\u00020\u000f*\u0004\u0018\u00010\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000c\u0010\u0012\u001a\u00020\u0013*\u0004\u0018\u00010\u0004J\u000c\u0010\u0014\u001a\u00020\u000f*\u0004\u0018\u00010\u0004\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList$Companion;",
        "",
        "()V",
        "clone",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;",
        "pageNameList",
        "merge",
        "a",
        "b",
        "mergeWithRemove",
        "src",
        "dst",
        "srcRemove",
        "dstRemove",
        "contains",
        "",
        "name",
        "",
        "getSize",
        "",
        "isEmpty",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final clone(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->getPageNameList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->addAll(Ljava/util/List;)V

    return-object p0
.end method

.method public final contains(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getSize(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)I
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->access$getPageNameList$p(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isEmpty(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->getPageNameList()Ljava/util/List;

    move-result-object p0

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

.method public final merge(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->merge(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->merge(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V

    return-object p0
.end method

.method public final mergeWithRemove(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList$Companion;->merge(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList$Companion;->merge(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->remove(Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;

    return-object p1
.end method
