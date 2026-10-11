.class public final synthetic Lcom/sunia/HTREnginev2/l2g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/view/LoadingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/l2g;->e:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l2g;->e:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/ExportSpecifiedPagesDialog;->x0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method
