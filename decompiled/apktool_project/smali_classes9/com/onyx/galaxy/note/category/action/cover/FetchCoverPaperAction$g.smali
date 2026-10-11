.class public final Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$g;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$g;->e:Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;->access$markSyncState(Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction$g;->a(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
