.class public final Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;->n()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$h;->e:Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$h;->e:Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction$h;->a(Z)Lcom/onyx/galaxy/note/category/action/MoveToSelectTagAction;

    move-result-object p0

    return-object p0
.end method
