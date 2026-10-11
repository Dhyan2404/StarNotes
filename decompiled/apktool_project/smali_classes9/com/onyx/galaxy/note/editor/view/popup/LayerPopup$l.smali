.class public final Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$l;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$l;->f:Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$l;->e:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$l;->f:Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;

    invoke-static {v0, p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->access$isNeedUpdateLayer(Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup$l;->a(Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)Z

    move-result p0

    return p0
.end method
