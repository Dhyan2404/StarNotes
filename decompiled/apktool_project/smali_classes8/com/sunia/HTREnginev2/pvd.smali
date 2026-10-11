.class public final synthetic Lcom/sunia/HTREnginev2/pvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction;Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pvd;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pvd;->f:Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pvd;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pvd;->f:Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction;->n(Lcom/onyx/android/sdk/universal/editor/action/backup/CloudRestoreAction;Lcom/onyx/android/sdk/universal/editor/events/note/CloudRestoreCompleteEvent;)V

    return-void
.end method
