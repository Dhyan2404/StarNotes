.class public final synthetic Lcom/onyx/android/sdk/universal/docmanager/action/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/a;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/a;->f:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/a;->e:Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/a;->f:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction$assertFileValid$3;->a(Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V

    return-void
.end method
