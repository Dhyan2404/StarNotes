.class public final Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$show$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hjq/window/EasyWindow$OnWindowLifecycle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;->show(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016J\u0016\u0010\u0006\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$show$1$3",
        "Lcom/hjq/window/EasyWindow$OnWindowLifecycle;",
        "onWindowCancel",
        "",
        "easyWindow",
        "Lcom/hjq/window/EasyWindow;",
        "onWindowShow",
        "note_overseasRelease"
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$show$1$3;->e:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowCancel(Lcom/hjq/window/EasyWindow;)V
    .locals 0
    .param p1    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$show$1$3;->e:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->getUiStates()Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;->setScreenCapturing(Z)V

    return-void
.end method

.method public onWindowShow(Lcom/hjq/window/EasyWindow;)V
    .locals 0
    .param p1    # Lcom/hjq/window/EasyWindow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$show$1$3;->e:Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->getUiStates()Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle$GlobalStates;->setScreenCapturing(Z)V

    return-void
.end method
