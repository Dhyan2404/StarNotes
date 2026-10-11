.class public final synthetic Lcom/sunia/HTREnginev2/v2e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v2e;->e:Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/v2e;->f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v2e;->e:Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v2e;->f:Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;->m(Lcom/onyx/galaxy/note/ui/adapter/ColorSetAdapter;Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;Landroid/view/View;)V

    return-void
.end method
