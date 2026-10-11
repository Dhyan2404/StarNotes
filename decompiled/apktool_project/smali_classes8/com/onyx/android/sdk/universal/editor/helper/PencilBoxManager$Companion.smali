.class public final Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u001c\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0006\u0010\u0008\u001a\u00020\u0002J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\tJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0006J \u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\t2\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u001a\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00132\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J \u0010\u0017\u001a\u00020\u00112\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\t2\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J \u0010\u0018\u001a\u00020\u00112\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\t2\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0014\u0010\u001a\u001a\u00020\u00112\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\tJ\u0012\u0010\u001b\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0004J\u001c\u0010\u001e\u001a\u00020\u00112\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J>\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00130\t2\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0018\u0008\u0002\u0010 \u001a\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\t\u0018\u00010\u001f2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0004J\u0012\u0010#\u001a\u00020\u00062\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010$\u001a\u00020\u0011R!\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\u00a8\u0006-"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;",
        "",
        "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;",
        "boxSet",
        "",
        "boxId",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;",
        "a",
        "getPencilBox",
        "",
        "getPencilBoxList",
        "",
        "getPenBoxCount",
        "",
        "hasPenBox",
        "hasSelectedPen",
        "penBox",
        "",
        "addPencilBox",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
        "penItems",
        "penItem",
        "updatePencilBox",
        "setPencilBox",
        "deletePenArgs",
        "boxIdList",
        "deletePencilBox",
        "getPenCount",
        "updateSelectedBoxId",
        "id",
        "updateSelectedId",
        "Lkotlin/Function0;",
        "defaultList",
        "selectId",
        "getPenList",
        "getPenBox",
        "clearPenBox",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "penBoxOption$delegate",
        "Lkotlin/Lazy;",
        "c",
        "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "penBoxOption",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getPenBox(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->a(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic addPencilBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->addPencilBox(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->a(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic deletePenArgs$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->deletePenArgs(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getPenBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBox(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPenCount$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic getPenList$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenList(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setPencilBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->setPencilBox(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic updatePencilBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->updatePencilBox(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic updateSelectedId$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->updateSelectedId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;
    .locals 0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

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

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->access$ensureSelectedId(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->getSelectedPencilBox(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p0

    return-object p0
.end method

.method public final addPencilBox(Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "penBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$addPencilBox$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$addPencilBox$1;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final addPencilBox(Ljava/util/List;Ljava/lang/String;)V
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
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "penItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$addPencilBox$2;

    invoke-direct {v0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$addPencilBox$2;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->access$getPenBoxOption$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final clearPenBox()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$clearPenBox$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$clearPenBox$1;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final deletePenArgs(Ljava/util/List;Ljava/lang/String;)V
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
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "penItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePenArgs$1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final deletePencilBox(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boxIdList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePencilBox$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$deletePencilBox$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final getPenBox(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->a(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p0

    return-object p0
.end method

.method public final getPenBoxCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPencilBoxList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    return p0
.end method

.method public final getPenCount(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBox(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getPenList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p0

    return p0
.end method

.method public final getPenList(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->a(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getPenList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    check-cast p2, Ljava/util/Collection;

    invoke-static {v1, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    :cond_1
    move-object p2, v0

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v1

    :cond_3
    check-cast v2, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$getPenList$1;

    invoke-direct {p2, p1, v2, v0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$getPenList$1;-><init>(Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final getPencilBox()Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;

    return-object p0
.end method

.method public final getPencilBoxList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPencilBox()Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager;->getBoxList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final hasPenBox()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBoxCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasSelectedPen()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->hasPenBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->getPenBox$default(Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/pen/PencilBox;->getSelectedId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final setPencilBox(Ljava/util/List;Ljava/lang/String;)V
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
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "penItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$setPencilBox$1;

    invoke-direct {v0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$setPencilBox$1;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final updatePencilBox(Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "penItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1;

    invoke-direct {v0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updatePencilBox$1;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final updateSelectedBoxId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "boxId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updateSelectedBoxId$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updateSelectedBoxId$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final updateSelectedId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updateSelectedId$1;

    invoke-direct {v0, p2, p1}, Lcom/onyx/android/sdk/universal/editor/helper/PencilBoxManager$Companion$updateSelectedId$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
