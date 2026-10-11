.class public final Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R \u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010!\"\u0004\u0008.\u0010#\u00a8\u0006/"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;",
        "",
        "()V",
        "configEditorBundle",
        "",
        "getConfigEditorBundle",
        "()Z",
        "setConfigEditorBundle",
        "(Z)V",
        "ftsIndexArgs",
        "Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;",
        "getFtsIndexArgs",
        "()Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;",
        "setFtsIndexArgs",
        "(Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;)V",
        "hwrArgs",
        "Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;",
        "getHwrArgs",
        "()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;",
        "setHwrArgs",
        "(Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;)V",
        "isBackgroundSearch",
        "setBackgroundSearch",
        "keyword",
        "",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "noteModels",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "getNoteModels",
        "()Ljava/util/List;",
        "setNoteModels",
        "(Ljava/util/List;)V",
        "searchContext",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;",
        "getSearchContext",
        "()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;",
        "setSearchContext",
        "(Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;)V",
        "searchTypes",
        "",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "getSearchTypes",
        "setSearchTypes",
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


# instance fields
.field private configEditorBundle:Z

.field private ftsIndexArgs:Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hwrArgs:Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isBackgroundSearch:Z

.field private keyword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private noteModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private searchContext:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private searchTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->noteModels:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->keyword:Ljava/lang/String;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->searchTypes:Ljava/util/List;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->hwrArgs:Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    new-instance v0, Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->ftsIndexArgs:Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->searchContext:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->configEditorBundle:Z

    return-void
.end method


# virtual methods
.method public final getConfigEditorBundle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->configEditorBundle:Z

    return p0
.end method

.method public final getFtsIndexArgs()Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->ftsIndexArgs:Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;

    return-object p0
.end method

.method public final getHwrArgs()Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->hwrArgs:Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    return-object p0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public final getNoteModels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->noteModels:Ljava/util/List;

    return-object p0
.end method

.method public final getSearchContext()Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->searchContext:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    return-object p0
.end method

.method public final getSearchTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->searchTypes:Ljava/util/List;

    return-object p0
.end method

.method public final isBackgroundSearch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->isBackgroundSearch:Z

    return p0
.end method

.method public final setBackgroundSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->isBackgroundSearch:Z

    return-void
.end method

.method public final setConfigEditorBundle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->configEditorBundle:Z

    return-void
.end method

.method public final setFtsIndexArgs(Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->ftsIndexArgs:Lcom/onyx/android/sdk/replicator/fts/bean/FTSIndexArgs;

    return-void
.end method

.method public final setHwrArgs(Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->hwrArgs:Lcom/onyx/android/sdk/universal/editor/data/HWRArgs;

    return-void
.end method

.method public final setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->keyword:Ljava/lang/String;

    return-void
.end method

.method public final setNoteModels(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->noteModels:Ljava/util/List;

    return-void
.end method

.method public final setSearchContext(Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->searchContext:Lcom/onyx/android/sdk/universal/editor/data/NoteSearchContext;

    return-void
.end method

.method public final setSearchTypes(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/data/NoteSearchArgs;->searchTypes:Ljava/util/List;

    return-void
.end method
