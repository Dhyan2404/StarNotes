.class public final synthetic Lcom/sunia/HTREnginev2/r6f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

.field public final synthetic f:Lcom/onyx/android/sdk/reader/api/ConvertArgs;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic h:Lio/reactivex/rxjava3/subjects/PublishSubject;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r6f;->e:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r6f;->f:Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/r6f;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/r6f;->h:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r6f;->e:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/r6f;->f:Lcom/onyx/android/sdk/reader/api/ConvertArgs;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/r6f;->g:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r6f;->h:Lio/reactivex/rxjava3/subjects/PublishSubject;

    check-cast p1, Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertLocalAction;->m(Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;Lcom/onyx/android/sdk/reader/api/ConvertArgs;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/reactivex/rxjava3/subjects/PublishSubject;Lcom/onyx/android/sdk/reader/request/ConvertToPDFRequest;)V

    return-void
.end method
