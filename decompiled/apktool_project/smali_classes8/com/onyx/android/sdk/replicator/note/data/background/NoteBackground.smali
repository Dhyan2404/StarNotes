.class public final Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0002B\u001b\u0008\u0016\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\tJ\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0005J\u0006\u0010\u0013\u001a\u00020\u0006J\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\u000cJ\u0010\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0000J\u0010\u0010\u001b\u001a\u00020\u00192\u0008\u0010\u001c\u001a\u0004\u0018\u00010\tJ\u000e\u0010\u001d\u001a\u00020\u00192\u0006\u0010\n\u001a\u00020\u0006J\u001a\u0010\u001e\u001a\u00020\u00192\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u000e\u0010 \u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u000cR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;",
        "Ljava/io/Serializable;",
        "()V",
        "pageBKGroundMap",
        "",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;",
        "(Ljava/util/Map;)V",
        "bkGroundConfig",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;",
        "docBKGround",
        "useDocBKGround",
        "",
        "equals",
        "other",
        "",
        "getBkGroundConfig",
        "getBkGroundRes",
        "pageId",
        "getDocBKGround",
        "getPageBKGroundMap",
        "hashCode",
        "",
        "isUseDocBKGround",
        "merge",
        "",
        "background",
        "setBkGroundConfig",
        "config",
        "setDocBKGround",
        "setPageBKGroundMap",
        "value",
        "setUseDocBKGround",
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


# instance fields
.field private bkGroundConfig:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pageBKGroundMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useDocBKGround:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->Companion:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes$Companion;->create()Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pageBKGroundMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    .line 6
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->Companion:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes$Companion;->create()Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    .line 7
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    iget-object v3, p1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->useDocBKGround:Z

    iget-boolean v3, p1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->useDocBKGround:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->bkGroundConfig:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->bkGroundConfig:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBkGroundConfig()Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->bkGroundConfig:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    return-object p0
.end method

.method public final getBkGroundRes(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pageId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    :cond_0
    return-object p1
.end method

.method public final getDocBKGround()Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    return-object p0
.end method

.method public final getPageBKGroundMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->useDocBKGround:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->bkGroundConfig:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isUseDocBKGround()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->useDocBKGround:Z

    return p0
.end method

.method public final merge(Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->isUseDocBKGround()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->setDocBKGround(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->isUseDocBKGround()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->setUseDocBKGround(Z)V

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final setBkGroundConfig(Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->bkGroundConfig:Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;

    return-void
.end method

.method public final setDocBKGround(Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "docBKGround"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    return-void
.end method

.method public final setPageBKGroundMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->pageBKGroundMap:Ljava/util/Map;

    return-void
.end method

.method public final setUseDocBKGround(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->useDocBKGround:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/background/NoteBackground;->docBKGround:Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->setGlobal(Z)V

    return-void
.end method
