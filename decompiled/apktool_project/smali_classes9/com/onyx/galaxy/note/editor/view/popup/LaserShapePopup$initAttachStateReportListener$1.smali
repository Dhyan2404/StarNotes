.class public final Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initAttachStateReportListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->y()V
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
        "com/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initAttachStateReportListener$1",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->access$getData(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)Ljava/util/LinkedList;

    move-result-object p0

    const-string v1, "view_galaxy_laserpointer_param_0001"

    const-string v2, "click"

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;->access$getData(Lcom/onyx/galaxy/note/editor/view/popup/LaserShapePopup;)Ljava/util/LinkedList;

    move-result-object p0

    const-string v1, "click_galaxy_laserpointer_param_0001"

    const-string v2, "click"

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
