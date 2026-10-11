.class final Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/app/Activity;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemBarEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemBarEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,117:1\n157#2,8:118\n157#2,8:126\n*S KotlinDebug\n*F\n+ 1 SystemBarEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1\n*L\n106#1:118,8\n113#1:126,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "activity",
        "Landroid/app/Activity;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSystemBarEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemBarEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,117:1\n157#2,8:118\n157#2,8:126\n*S KotlinDebug\n*F\n+ 1 SystemBarEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1\n*L\n106#1:118,8\n113#1:126,8\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1;->invoke(Landroid/app/Activity;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getStatusBarHideOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "editorContainer"

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;->getScribbleFragment()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 7
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;->getScribbleFragment()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler$updateDataTopPadding$1;->this$0:Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;

    .line 10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v0}, Lcom/onyx/android/sdk/extension/ViewKt;->isCoveredByStatusBar(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/extension/ActivityExtKt;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v1

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/handler/SystemBarEventHandler;->getScribbleFragment()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->editorContainer:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 15
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
