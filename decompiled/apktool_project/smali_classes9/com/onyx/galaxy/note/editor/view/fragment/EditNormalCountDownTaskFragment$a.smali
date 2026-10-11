.class public final Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$a;->e:Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$a;->e:Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/fragment/EditNormalCountDownTaskFragment$a;->a(Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;)V

    return-void
.end method
