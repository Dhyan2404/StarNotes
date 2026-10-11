.class public final Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$getActionModeCallback$1;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->a()Landroid/view/ActionMode$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\r\u001a\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "com/onyx/android/sdk/textbox/listener/RichEditorGestureListener$getActionModeCallback$1",
        "Landroid/view/ActionMode$Callback2;",
        "onActionItemClicked",
        "",
        "mode",
        "Landroid/view/ActionMode;",
        "item",
        "Landroid/view/MenuItem;",
        "onCreateActionMode",
        "menu",
        "Landroid/view/Menu;",
        "onDestroyActionMode",
        "",
        "onGetContentRect",
        "view",
        "Landroid/view/View;",
        "outRect",
        "Landroid/graphics/Rect;",
        "onPrepareActionMode",
        "sdk-textbox_overseasRelease"
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
.field public final synthetic a:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$getActionModeCallback$1;->a:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget p2, Lcom/onyx/android/sdk/textbox/R$id;->item_action_paste:I

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$getActionModeCallback$1;->a:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    invoke-static {p1}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->access$getRichEditor$p(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x1020022

    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$getActionModeCallback$1;->a:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->destroyActionMode()V

    const/4 p0, 0x1

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "mode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "menu"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/textbox/R$menu;->menu:I

    invoke-virtual {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$getActionModeCallback$1;->a:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->access$setActionMode$p(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;Landroid/view/ActionMode;)V

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outRect"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$getActionModeCallback$1;->a:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    invoke-static {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->access$getRichEditor$p(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->isVertical()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-virtual {p3, p1, p1, p1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0
    .param p1    # Landroid/view/ActionMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "mode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "menu"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
