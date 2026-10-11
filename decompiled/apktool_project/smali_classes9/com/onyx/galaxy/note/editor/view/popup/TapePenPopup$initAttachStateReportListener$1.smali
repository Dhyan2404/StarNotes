.class public final Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "onViewAttachedToWindow",
        "",
        "v",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;

.field public final synthetic f:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$1;->f:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const-string v3, "tape_data"

    const-string v4, "view_galaxy_tap_param_0001"

    const-string v5, "click"

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$1;->f:Lcom/google/gson/JsonObject;

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const-string v3, "tape_data"

    const-string v4, "click_galaxy_tap_param_0001"

    const-string v5, "click"

    iget-object v6, p0, Lcom/onyx/galaxy/note/editor/view/popup/TapePenPopup$initAttachStateReportListener$1;->f:Lcom/google/gson/JsonObject;

    invoke-virtual/range {v1 .. v6}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method
