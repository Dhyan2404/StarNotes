.class public final Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction$showEditorDialog$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/SelectCaptureRectAction;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/action/SelectCaptureRectAction$showEditorDialog$1$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/ScreenCaptureEditorPopup$ScreenCaptureListener;",
        "onCancel",
        "",
        "onEditorRect",
        "rect",
        "Landroid/graphics/Rect;",
        "onStart",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->Companion:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureCancelEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureCancelEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public onEditorRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "rect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->Companion:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureEvent;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService;->Companion:Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureStartedEvent;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ScreenCaptureStartedEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/service/ScreenCaptureService$Companion;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
