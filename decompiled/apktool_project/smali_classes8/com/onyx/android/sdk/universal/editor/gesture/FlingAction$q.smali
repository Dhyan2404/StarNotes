.class public final Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;->t(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$q;->e:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$q;->f:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$q;->e:Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getVisibleBoxInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;->setVisibleBoxList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$q;->f:Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction$q;->a(Lcom/onyx/android/sdk/universal/editor/request/ScrollToRequest;)V

    return-void
.end method
