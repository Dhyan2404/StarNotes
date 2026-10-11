.class public final Lcom/onyx/android/sdk/universal/editor/request/pb/ExportToPBFromDBRequest;
.super Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/request/pb/ExportToPBFromDBRequest;",
        "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;",
        "noteBundle",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "(Lcom/onyx/android/sdk/note/NoteBundle;)V",
        "execute",
        "",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "noteBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getDocumentUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;-><init>(Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBFactory;->exportToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V

    return-void
.end method
