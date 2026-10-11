.class public final Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction$d;->e:Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction$d;->e:Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction$d;->e:Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getVisibleBoxInfoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->displayBoxListAfterStopScroll(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/gesture/AfterStopScrollAction$d;->a(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
