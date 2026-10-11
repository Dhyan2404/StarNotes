.class public final Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1;->invoke(Lcom/onyx/android/sdk/ui/NameEditDialog;Ljava/lang/String;)V
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
.field public final synthetic e:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$e;->e:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$e;->f:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$e;->e:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$e;->f:Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;->access$getNewName$p(Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/layer/RenameLayerNameAction$create$1$e;->a(Z)V

    return-void
.end method
