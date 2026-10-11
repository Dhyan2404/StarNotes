.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->H(Landroid/widget/PopupWindow;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
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
        "com/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2",
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
.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/Pair;Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;Ljava/lang/String;Lcom/onyx/android/sdk/data/utils/JSONObjectOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/HashMap<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->f:Lkotlin/Pair;

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    iput-object p4, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->i:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "v"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->f:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->g:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto$reportShowBasePopup$1$2;->i:Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    sget-object v2, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolViewAuto;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "editorBundle"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v2, v0, v1, p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    :cond_1
    return-void
.end method
