.class public final Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B+\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\u0008\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0014\u0010\r\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0007R\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\nR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "e",
        "I",
        "type",
        "f",
        "Ljava/lang/String;",
        "name",
        "g",
        "maxLength",
        "h",
        "overflowName",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "provider",
        "Lkotlin/Function1;",
        "",
        "j",
        "Lkotlin/jvm/functions/Function1;",
        "checkDuplicate",
        "<init>",
        "(ILjava/lang/String;ILjava/lang/String;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:I

.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

.field public j:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overflowName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    .line 4
    iput p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->e:I

    .line 5
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->f:Ljava/lang/String;

    .line 6
    iput p3, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->g:I

    .line 7
    iput-object p4, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->h:Ljava/lang/String;

    .line 8
    new-instance p1, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$checkDuplicate$1;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$checkDuplicate$1;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->j:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 1
    sget-object p3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p6, Lcom/onyx/android/sdk/universal/R$integer;->edit_name_max_length:I

    invoke-virtual {p3, p6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const-string p4, ""

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCheckDuplicate$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->j:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getMaxLength$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->g:I

    return p0
.end method

.method public static final synthetic access$getName$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getOverflowName$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getProvider$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-object p0
.end method

.method public static final synthetic access$getType$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->e:I

    return p0
.end method

.method public static final synthetic access$setProvider$p(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;->i:Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$a;->e:Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$b;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$c;-><init>(Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$d;->e:Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction$d;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
