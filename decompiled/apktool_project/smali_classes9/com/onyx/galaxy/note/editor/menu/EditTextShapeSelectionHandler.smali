.class public final Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;
.super Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001e\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\u001c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;",
        "Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "menu",
        "Landroid/view/View;",
        "itemView",
        "",
        "onMenuClick",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualPageBoxInfo",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shapes",
        "updateEditTextShapeSelection",
        "",
        "b",
        "Ljava/util/List;",
        "c",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;",
        "manager",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;-><init>(Lcom/onyx/galaxy/note/editor/menu/SelectionMenuHandlerManager;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method


# virtual methods
.method public onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    invoke-direct {v1, v4, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowSelectMoveLayerPopupEvent;-><init>(Ljava/util/List;Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/CreateEditTextShapeLinkEvent;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/CreateEditTextShapeLinkEvent;-><init>(Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteEditTextShapeEvent;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/DeleteEditTextShapeEvent;-><init>(Ljava/util/List;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    invoke-direct {v1, p2, v3}, Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;-><init>(Ljava/util/List;Z)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    invoke-direct {v1, p2, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/PlaceEditTextShapesEvent;-><init>(Ljava/util/List;Z)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/CopyEditTextShapeEvent;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/CopyEditTextShapeEvent;-><init>(Ljava/util/List;)V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/CutEditTextShapeEvent;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    invoke-direct {v1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/CutEditTextShapeEvent;-><init>(Ljava/util/List;)V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 p1, 0x0

    const/4 p2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->copy_success_and_long_press_paste:I

    invoke-static {p0, v0, v3, p2, p1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->cut_success_and_long_press_paste:I

    invoke-static {p0, v0, v3, p2, p1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateEditTextShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    const-string v0, "virtualPageBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->updateEditTextShapeSelection(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->b:Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/EditTextShapeSelectionHandler;->c:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-void
.end method
