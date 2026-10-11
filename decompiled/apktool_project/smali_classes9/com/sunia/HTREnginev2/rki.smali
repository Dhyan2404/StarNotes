.class public final synthetic Lcom/sunia/HTREnginev2/rki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/onyx/galaxy/note/common/view/LoadingDialog;


# direct methods
.method public synthetic constructor <init>(ILcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/rki;->e:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rki;->f:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/rki;->e:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rki;->f:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/InkBeautifyViewModel;->e(ILcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method
