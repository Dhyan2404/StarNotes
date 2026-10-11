.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b2\u0006\u0010\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u008a\u0084\u0002"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "onViewAttachedToWindow",
        "",
        "v",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
        "note_overseasRelease",
        "penArgsOption",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;"
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lkotlin/Lazy;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;>;)",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
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
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1$onViewDetachedFromWindow$penArgsOption$2;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;

    invoke-direct {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1$onViewDetachedFromWindow$penArgsOption$2;-><init>(Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    const-string v0, "click_galaxy_eraser_param_0003"

    goto :goto_0

    :pswitch_1
    const-string v0, "click_galaxy_shape_param_0002"

    goto :goto_0

    :pswitch_2
    const-string v0, "click_galaxy_laserpointer_param_0002"

    goto :goto_0

    :pswitch_3
    const-string v0, "click_galaxy_tap_param_0002"

    goto :goto_0

    :pswitch_4
    const-string v0, "click_galaxy_pencil_param_0002"

    goto :goto_0

    :pswitch_5
    const-string v0, "click_galaxy_highlighter_param_0002"

    goto :goto_0

    :pswitch_6
    const-string v0, "click_galaxy_ballpen_param_0002"

    goto :goto_0

    :pswitch_7
    const-string v0, "click_galaxy_pen_param_0002"

    :goto_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->getViewShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_8
    const-string v2, "eraser_data"

    goto :goto_1

    :pswitch_9
    const-string v2, "figure_data"

    goto :goto_1

    :pswitch_a
    const-string v2, "laser_data"

    goto :goto_1

    :pswitch_b
    const-string v2, "tape_data"

    goto :goto_1

    :pswitch_c
    const-string v2, "pencil_data"

    goto :goto_1

    :pswitch_d
    const-string v2, "markerpen_data"

    goto :goto_1

    :pswitch_e
    const-string v2, "ballpen_data"

    goto :goto_1

    :pswitch_f
    const-string v2, "pen_data"

    :goto_1
    sget-object v1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1;->e:Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup$initAttachStateReportListener$1;->a(Lkotlin/Lazy;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;

    invoke-virtual {v1, p0, v2, v0, p1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportShowPopupMenuEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
