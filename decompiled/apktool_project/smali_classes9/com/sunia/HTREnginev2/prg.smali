.class public final synthetic Lcom/sunia/HTREnginev2/prg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/prg;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/prg;->f:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/prg;->e:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/prg;->f:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->n(Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Landroid/view/View;)V

    return-void
.end method
