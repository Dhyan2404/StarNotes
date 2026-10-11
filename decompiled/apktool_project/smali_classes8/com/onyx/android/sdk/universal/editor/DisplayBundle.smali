.class public final Lcom/onyx/android/sdk/universal/editor/DisplayBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008.\u0010/J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR.\u0010\u0015\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u00a8\u00060"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/DisplayBundle;",
        "",
        "Landroid/graphics/Point;",
        "getActivityOffset",
        "",
        "onDocumentClosed",
        "destroy",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getEditorBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "Landroid/view/View;",
        "value",
        "b",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "setView",
        "(Landroid/view/View;)V",
        "view",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "c",
        "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "getVirtualDocViewInfo",
        "()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;",
        "setVirtualDocViewInfo",
        "(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V",
        "virtualDocViewInfo",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
        "d",
        "Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
        "getRenderManager",
        "()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;",
        "setRenderManager",
        "(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V",
        "renderManager",
        "Lcom/onyx/android/sdk/base/scheduler/RequestManager;",
        "e",
        "Lcom/onyx/android/sdk/base/scheduler/RequestManager;",
        "getRequestManager",
        "()Lcom/onyx/android/sdk/base/scheduler/RequestManager;",
        "setRequestManager",
        "(Lcom/onyx/android/sdk/base/scheduler/RequestManager;)V",
        "requestManager",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:Lcom/onyx/android/sdk/base/scheduler/RequestManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->c:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->d:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    new-instance p1, Lcom/onyx/android/sdk/base/scheduler/RequestManager;

    invoke-direct {p1}, Lcom/onyx/android/sdk/base/scheduler/RequestManager;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->e:Lcom/onyx/android/sdk/base/scheduler/RequestManager;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->setView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->d:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->destroy()V

    return-void
.end method

.method public final getActivityOffset()Landroid/graphics/Point;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->b:Landroid/view/View;

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->locationInActivity(Landroid/view/View;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getX()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/WindowLocation;->getY()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getRenderManager()Lcom/onyx/android/sdk/universal/editor/display/RenderManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->d:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    return-object p0
.end method

.method public final getRequestManager()Lcom/onyx/android/sdk/base/scheduler/RequestManager;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->e:Lcom/onyx/android/sdk/base/scheduler/RequestManager;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->b:Landroid/view/View;

    return-object p0
.end method

.method public final getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->c:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-object p0
.end method

.method public final onDocumentClosed()V
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "onDocumentClosed"

    invoke-virtual {v0, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->c:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method

.method public final setRenderManager(Lcom/onyx/android/sdk/universal/editor/display/RenderManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/display/RenderManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->d:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    return-void
.end method

.method public final setRequestManager(Lcom/onyx/android/sdk/base/scheduler/RequestManager;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/scheduler/RequestManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->e:Lcom/onyx/android/sdk/base/scheduler/RequestManager;

    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->d:Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->a:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->updateEditorView(Landroid/view/View;Lorg/greenrobot/eventbus/EventBus;)V

    return-void
.end method

.method public final setVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/DisplayBundle;->c:Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    return-void
.end method
