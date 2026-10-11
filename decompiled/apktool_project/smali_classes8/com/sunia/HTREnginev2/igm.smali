.class public final synthetic Lcom/sunia/HTREnginev2/igm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/igm;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/igm;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;->l(Lcom/onyx/android/sdk/universal/editor/action/handler/SelectionHandlerAction;Ljava/util/List;)V

    return-void
.end method
