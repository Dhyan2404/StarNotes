.class public final synthetic Lcom/sunia/HTREnginev2/qrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qrg;->e:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/qrg;->f:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qrg;->e:Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qrg;->f:Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;->l(Lcom/onyx/galaxy/note/editor/view/adapter/FontItemShowAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/FontModel;Landroid/view/View;)V

    return-void
.end method
