.class final Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showTagPathPopup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->H1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/category/data/PathEntry;",
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
        "selectedPath",
        "Lcom/onyx/galaxy/note/category/data/PathEntry;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showTagPathPopup$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    check-cast p1, Lcom/onyx/galaxy/note/category/data/PathEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showTagPathPopup$1;->invoke(Lcom/onyx/galaxy/note/category/data/PathEntry;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/category/data/PathEntry;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/data/PathEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "selectedPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/PathEntry;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag_root_id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showTagPathPopup$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$gotoTagRoot(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$showTagPathPopup$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$gotoTag(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Lcom/onyx/galaxy/note/category/data/PathEntry;)V

    :goto_0
    return-void
.end method
