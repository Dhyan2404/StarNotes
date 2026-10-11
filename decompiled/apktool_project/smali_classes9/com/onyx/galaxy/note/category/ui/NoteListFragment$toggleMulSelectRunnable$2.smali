.class final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$toggleMulSelectRunnable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/Runnable;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$toggleMulSelectRunnable$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$toggleMulSelectRunnable$2;->invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getPageListAdapter(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object v0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->enableMulSelect(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$toggleMulSelectRunnable$2;->invoke()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$toggleMulSelectRunnable$2;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/n;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/n;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    return-object v0
.end method
