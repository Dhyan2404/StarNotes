.class public final synthetic Lcom/sunia/HTREnginev2/yue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yue;->e:Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yue;->e:Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment$getOnyxWebViewCallback$1;->f(Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;)V

    return-void
.end method
