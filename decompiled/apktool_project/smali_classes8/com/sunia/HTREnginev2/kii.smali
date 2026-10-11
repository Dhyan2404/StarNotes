.class public final synthetic Lcom/sunia/HTREnginev2/kii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic g:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kii;->e:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/kii;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kii;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kii;->e:Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/kii;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kii;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    check-cast p1, Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/ImportDocumentsAction;->q(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentsResultEvent;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/DecryptPDFRequest;)V

    return-void
.end method
