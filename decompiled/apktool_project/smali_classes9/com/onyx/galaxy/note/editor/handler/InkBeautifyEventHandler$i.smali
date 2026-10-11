.class public final Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;->k(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$i;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$i;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$i;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->getRelayoutShapes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$i;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;->getLastLineShapes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler$i;->a(Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;)V

    return-void
.end method
