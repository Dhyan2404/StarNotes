.class final Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1;->a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;->invoke$lambda$0(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$openResultInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;->getGeoLayoutBackground()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->setBackground(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->onDocOpened()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->access$setVirtualDocOpenResultInfo$p(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    .line 4
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadCoreData$1$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/b;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->runInUI(Ljava/lang/Runnable;)V

    return-void
.end method
