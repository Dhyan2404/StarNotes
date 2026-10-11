.class public final synthetic Lcom/sunia/HTREnginev2/cvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

.field public final synthetic f:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cvj;->e:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cvj;->f:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cvj;->e:Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cvj;->f:Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/ui/dialog/NoteDialogsKt;->a(Lcom/onyx/galaxy/note/common/view/LoadingDialog;Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;)V

    return-void
.end method
