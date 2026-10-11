.class public final synthetic Lcom/sunia/HTREnginev2/r0j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r0j;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r0j;->f:Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r0j;->e:Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r0j;->f:Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;->m(Lcom/onyx/android/sdk/universal/editor/action/backup/LocalRestoreAction;Lcom/onyx/android/sdk/universal/editor/events/note/LocalRestoreCompleteEvent;)V

    return-void
.end method
