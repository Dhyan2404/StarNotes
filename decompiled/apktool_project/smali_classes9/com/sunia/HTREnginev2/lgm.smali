.class public final synthetic Lcom/sunia/HTREnginev2/lgm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lgm;->e:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/lgm;->f:Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lgm;->e:Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lgm;->f:Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;->f(Lcom/onyx/galaxy/note/editor/viewmodel/SelectionHwrViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V

    return-void
.end method
