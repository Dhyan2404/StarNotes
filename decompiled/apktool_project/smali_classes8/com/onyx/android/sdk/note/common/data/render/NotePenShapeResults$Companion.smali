.class public final Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0014\u0010\u0006\u001a\u00020\u0005*\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u000c\u0010\u0008\u001a\u00020\u0007*\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u0003*\u0004\u0018\u00010\u0002H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;",
        "",
        "Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;",
        "Lcom/onyx/android/sdk/pen/PenPrecision;",
        "precision",
        "",
        "isValid",
        "",
        "clearCache",
        "a",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;)Lcom/onyx/android/sdk/pen/PenPrecision;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getPrecision()Lcom/onyx/android/sdk/pen/PenPrecision;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/pen/PenPrecision;->Companion:Lcom/onyx/android/sdk/pen/PenPrecision$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/pen/PenPrecision$Companion;->minPenPrecision()Lcom/onyx/android/sdk/pen/PenPrecision;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final clearCache(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/pen/PenResult;->Companion:Lcom/onyx/android/sdk/pen/PenResult$Companion;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/pen/PenResult$Companion;->clearCache(Ljava/util/List;)V

    return-void
.end method

.method public final isValid(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;Lcom/onyx/android/sdk/pen/PenPrecision;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/pen/PenPrecision;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "precision"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults$Companion;->a(Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;)Lcom/onyx/android/sdk/pen/PenPrecision;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/pen/PenPrecision;->isValid(Lcom/onyx/android/sdk/pen/PenPrecision;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/render/NotePenShapeResults;->getResults()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
