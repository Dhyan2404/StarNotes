.class final Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;->invoke(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3
    .param p1    # Lcom/google/android/material/tabs/TabLayout$Tab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->tabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "tabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/extension/TabLayoutKt;->indexOfTab(Lcom/google/android/material/tabs/TabLayout;Lcom/google/android/material/tabs/TabLayout$Tab;)I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->rvColorSet:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->colorPickView:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup$addEvent$1;->this$0:Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;->access$getBinding(Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;)Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/PopupColorPickBinding;->rvColorSet:Lcom/onyx/android/sdk/theme/widgets/TintRecycleView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
