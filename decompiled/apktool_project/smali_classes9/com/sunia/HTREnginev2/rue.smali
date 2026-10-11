.class public final synthetic Lcom/sunia/HTREnginev2/rue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/common/view/LoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rue;->a:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rue;->a:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/datarepository/ui/DataRepositoryFragment;->l0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Ljava/lang/Object;)V

    return-void
.end method
