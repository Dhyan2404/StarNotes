.class public final Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->s()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRelayoutRealtimeBeautifyShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,529:1\n766#2:530\n857#2,2:531\n*S KotlinDebug\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$3\n*L\n102#1:530\n102#1:531,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRelayoutRealtimeBeautifyShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,529:1\n766#2:530\n857#2,2:531\n*S KotlinDebug\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$3\n*L\n102#1:530\n102#1:531,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->access$isNonScaledShape(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$g;->e:Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->access$getRelatedShapes$p(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$g;->a(Ljava/util/List;)V

    return-void
.end method
