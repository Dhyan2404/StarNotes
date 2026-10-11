.class public final synthetic Lcom/sunia/HTREnginev2/vue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vue;->e:Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;

    iput p2, p0, Lcom/sunia/HTREnginev2/vue;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vue;->e:Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;

    iget p0, p0, Lcom/sunia/HTREnginev2/vue;->f:I

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1;->e(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;I)V

    return-void
.end method
