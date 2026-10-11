.class public final Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\r\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR$\u0010\u0015\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "noteBundle",
        "",
        "execute",
        "",
        "g",
        "Ljava/lang/String;",
        "getQuoteId",
        "()Ljava/lang/String;",
        "setQuoteId",
        "(Ljava/lang/String;)V",
        "quoteId",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "h",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "getModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "setModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;)V",
        "model",
        "<init>",
        "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quoteId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/note/extension/NoteBundleKt;->getExcerptCollectionProvider(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/ExcerptCollectionProvider;->loadExcerptCollectionByQuoteId(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;->h:Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    return-void
.end method

.method public final getModel()Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;->h:Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    return-object p0
.end method

.method public final getQuoteId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final setModel(Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;->h:Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    return-void
.end method

.method public final setQuoteId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;->g:Ljava/lang/String;

    return-void
.end method
