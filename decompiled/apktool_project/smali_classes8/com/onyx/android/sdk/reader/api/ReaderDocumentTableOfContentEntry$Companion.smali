.class public final Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004J\u0016\u0010\u000c\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000c\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;",
        "",
        "()V",
        "DEFAULT_TITLE_LIMIT_LENGTH",
        "",
        "addEntry",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "parent",
        "child",
        "title",
        "",
        "pageIndex",
        "createEntry",
        "position",
        "Lcom/onyx/android/sdk/reader/api/ReaderPosition;",
        "sdk-readercore_overseasRelease"
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
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final addEntry(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "child"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final addEntry(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Ljava/lang/String;I)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 16
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "parent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "title"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3fc

    const/4 v15, 0x0

    move-object v2, v1

    move/from16 v4, p3

    invoke-direct/range {v2 .. v15}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry$Companion;->addEntry(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object v0

    return-object v0
.end method

.method public final createEntry(Ljava/lang/String;I)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "title"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    .line 2
    new-instance v1, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;

    invoke-direct {v1}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;-><init>()V

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/reader/impl/ReaderPositionImpl;->fromPageIndex(I)Lcom/onyx/android/sdk/reader/api/ReaderPosition;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3f8

    const/4 v14, 0x0

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v14}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final createEntry(Ljava/lang/String;Lcom/onyx/android/sdk/reader/api/ReaderPosition;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/reader/api/ReaderPosition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "title"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    .line 5
    invoke-interface/range {p2 .. p2}, Lcom/onyx/android/sdk/reader/api/ReaderPosition;->getPageIndex()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3f8

    const/4 v14, 0x0

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v14}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
