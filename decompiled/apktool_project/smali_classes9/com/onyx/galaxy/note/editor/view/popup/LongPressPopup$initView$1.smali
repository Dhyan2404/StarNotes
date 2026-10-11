.class public final Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$initView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0016\u0010\u0008\u001a\u00020\u00032\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/LongPressPopup$initView$1",
        "Lcom/onyx/galaxy/note/editor/menu/SelectionMenuCallback;",
        "onMenuClick",
        "",
        "menu",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "itemView",
        "Landroid/view/View;",
        "onMenuUpdated",
        "menuViews",
        "",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$initView$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuClick(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;)V
    .locals 2
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$initView$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;->menuContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "menuContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->access$onMenuItemClick(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;Landroid/view/View;Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;)V

    return-void
.end method

.method public onMenuUpdated(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "menuViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$initView$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;)Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupLongPressBinding;->menuContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    const-string v1, "menuContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->access$onMenuUpdated(Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method
