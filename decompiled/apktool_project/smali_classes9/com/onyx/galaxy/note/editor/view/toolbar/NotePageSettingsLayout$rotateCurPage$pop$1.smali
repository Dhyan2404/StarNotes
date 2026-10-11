.class final Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$rotateCurPage$pop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->I(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/MenuItem;",
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
        "it",
        "Landroid/view/MenuItem;",
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
.field final synthetic $pageIndex:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$rotateCurPage$pop$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$rotateCurPage$pop$1;->$pageIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/MenuItem;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$rotateCurPage$pop$1;->invoke(Landroid/view/MenuItem;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/MenuItem;)V
    .locals 8
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 3
    sget v0, Lcom/onyx/galaxy/note/R$id;->rotate_90_anticlockwise:I

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->ANTI_CLOCKWISE_90:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$id;->rotate_180_clockwise:I

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->CLOCKWISE_180:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->CLOCKWISE_90:Lcom/onyx/android/sdk/universal/editor/data/RotationType;

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/RotationType;->getDegrees()I

    move-result v2

    .line 7
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$rotateCurPage$pop$1;->this$0:Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "editorBundle"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    new-instance v6, Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEvent;

    new-instance v7, Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NotePageSettingsLayout$rotateCurPage$pop$1;->$pageIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;-><init>(Ljava/util/List;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v6, v7}, Lcom/onyx/android/sdk/universal/editor/events/app/RotatePageEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/RotatePageArgs;)V

    invoke-static {p1, v6}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
