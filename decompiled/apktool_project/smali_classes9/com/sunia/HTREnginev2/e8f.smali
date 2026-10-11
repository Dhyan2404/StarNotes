.class public final synthetic Lcom/sunia/HTREnginev2/e8f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lio/reactivex/rxjava3/functions/Action;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/rxjava3/functions/Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e8f;->e:Lio/reactivex/rxjava3/functions/Action;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e8f;->e:Lio/reactivex/rxjava3/functions/Action;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/DocOverviewActionPopup$Companion;->a(Lio/reactivex/rxjava3/functions/Action;)V

    return-void
.end method
