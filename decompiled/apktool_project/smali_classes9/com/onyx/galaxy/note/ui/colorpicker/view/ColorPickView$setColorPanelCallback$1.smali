.class public final Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;",
        "onColorChange",
        "",
        "color",
        "",
        "onColorSelected",
        "startScreenCapture",
        "colorPanelView",
        "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;",
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
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1;->b(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Z)V

    return-void
.end method

.method public static final b(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Z)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->access$getCallback$p(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ViewColorPickBinding;->colorPanel:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;

    const-string v0, "colorPanel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;->startScreenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onColorChange(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-static {v0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->access$getCurrentColor$p(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->access$updateColorValue(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->access$deselect(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    :cond_0
    return-void
.end method

.method public onColorSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;->access$getCallback$p(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;->onColorSelected(I)V

    :cond_0
    return-void
.end method

.method public onColorSetSelected(Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback$DefaultImpls;->onColorSetSelected(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V

    return-void
.end method

.method public showDeleteDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback$DefaultImpls;->showDeleteDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p0

    return-object p0
.end method

.method public showMessageDialog(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback$DefaultImpls;->showMessageDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Ljava/lang/String;)V

    return-void
.end method

.method public startScreenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorPanelView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    iget-object v0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestFloatingWindowPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1;->e:Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;

    new-instance v0, Lcom/sunia/HTREnginev2/d2e;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/d2e;-><init>(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
