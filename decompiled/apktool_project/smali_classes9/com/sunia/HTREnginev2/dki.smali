.class public final synthetic Lcom/sunia/HTREnginev2/dki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dki;->e:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    iput p2, p0, Lcom/sunia/HTREnginev2/dki;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/dki;->e:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    iget p0, p0, Lcom/sunia/HTREnginev2/dki;->f:I

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;->e(Lcom/onyx/galaxy/note/common/view/LoadingDialog;I)V

    return-void
.end method
