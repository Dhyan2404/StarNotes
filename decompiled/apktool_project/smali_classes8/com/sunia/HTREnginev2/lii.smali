.class public final synthetic Lcom/sunia/HTREnginev2/lii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lii;->e:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lii;->e:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    check-cast p1, Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->o(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lcom/onyx/android/sdk/data/common/download/data/ProgressInfo;)V

    return-void
.end method
