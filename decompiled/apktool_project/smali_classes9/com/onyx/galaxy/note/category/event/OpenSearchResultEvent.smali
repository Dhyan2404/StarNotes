.class public final Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "a",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "model",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "b",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "getSearchBean",
        "()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "searchBean",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "c",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "getSearchType",
        "()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "setSearchType",
        "(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V",
        "searchType",
        "<init>",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "searchType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->a:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->b:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->c:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 6
    sget-object p3, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    return-void
.end method


# virtual methods
.method public final getModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->a:Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    return-object p0
.end method

.method public final getSearchBean()Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->b:Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    return-object p0
.end method

.method public final getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->c:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    return-object p0
.end method

.method public final setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/event/OpenSearchResultEvent;->c:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    return-void
.end method
