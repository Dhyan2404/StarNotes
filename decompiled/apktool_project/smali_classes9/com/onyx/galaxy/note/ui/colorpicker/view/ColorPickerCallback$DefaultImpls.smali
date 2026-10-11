.class public final Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onColorChange(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;I)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    return-void
.end method

.method public static onColorSelected(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;I)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    return-void
.end method

.method public static onColorSetSelected(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "colorSet"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static showDeleteDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    const-string p0, "colorPickView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cellView"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static showMessageDialog(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "message"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static startScreenCapture(Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "colorPanelView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
