.class public final synthetic Lcom/sunia/HTREnginev2/w0m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w0m;->e:Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w0m;->e:Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;->l(Lcom/onyx/android/sdk/universal/editor/action/layer/SaveNotePageLayersAction;Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;)V

    return-void
.end method
