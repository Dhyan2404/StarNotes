.class public final synthetic Lcom/sunia/HTREnginev2/q7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/q7f;->e:Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/q7f;->f:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/q7f;->e:Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/q7f;->f:Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;->a(Lcom/onyx/android/sdk/universal/editor/events/app/SaveDocumentEvent;Lcom/onyx/android/sdk/universal/editor/api/DocListManagerApiSubscriber;)V

    return-void
.end method
