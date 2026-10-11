.class public final synthetic Lcom/sunia/HTREnginev2/p4f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

.field public final synthetic f:Lcom/onyx/android/sdk/ui/CommonDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p4f;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/p4f;->f:Lcom/onyx/android/sdk/ui/CommonDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/p4f;->e:Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p4f;->f:Lcom/onyx/android/sdk/ui/CommonDialog;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;->r0(Lcom/onyx/galaxy/note/editor/view/dialog/DialogImageCropper;Lcom/onyx/android/sdk/ui/CommonDialog;)V

    return-void
.end method
