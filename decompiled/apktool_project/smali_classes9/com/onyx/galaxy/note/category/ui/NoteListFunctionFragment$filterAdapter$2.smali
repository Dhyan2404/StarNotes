.class final Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$filterAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$filterAdapter$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$filterAdapter$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {v1}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$filterAdapter$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->noteShadowView:Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;

    const-string v3, "noteShadowView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$filterAdapter$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListFunctionBinding;->tagShadowView:Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;

    const-string v3, "tagShadowView"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/databinding/ItemNoteShadowViewLayoutBinding;Lcom/onyx/galaxy/note/databinding/ItemTagShadowViewLayoutBinding;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFunctionFragment$filterAdapter$2;->invoke()Lcom/onyx/galaxy/note/category/view/adapter/FilterAdapter;

    move-result-object p0

    return-object p0
.end method
