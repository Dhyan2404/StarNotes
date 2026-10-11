.class final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->N1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
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
        "context",
        "Landroid/content/Context;",
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
.field final synthetic $it:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/common/data/GuideInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;->$it:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;->invoke(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->guideViewTab:Landroid/view/View;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;->$it:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/data/common/data/GuideInfo;

    sget-object v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    .line 4
    new-instance v3, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1$1;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-direct {v3, v4}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1$1;-><init>(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V

    .line 5
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/data/GuideInfo;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;Lkotlin/jvm/functions/Function1;)V

    .line 6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment$showTabLayoutGuide$2$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->getBinding$note_overseasRelease()Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteScribbleBinding;->guideViewTab:Landroid/view/View;

    const-string p1, "guideViewTab"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, v1}, Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;->show$default(Lcom/onyx/galaxy/note/common/view/GuideTipsPopup;Landroid/view/View;Landroid/graphics/Point;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
