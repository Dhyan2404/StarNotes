.class public final synthetic Lcom/sunia/HTREnginev2/pbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pbi;->e:Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pbi;->f:Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pbi;->e:Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pbi;->f:Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;->l(Lcom/onyx/galaxy/note/editor/view/adapter/HwrResourceListAdapter;Lcom/onyx/android/sdk/replicator/note/db/model/HwrResourceModel;Landroid/view/View;)V

    return-void
.end method
