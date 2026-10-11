.class public final Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReaderDocumentTableOfContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderDocumentTableOfContent.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 ReaderDocumentTableOfContent.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent\n*L\n44#1:65,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0002J\u0006\u0010\r\u001a\u00020\u000cJ&\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00020\u000fH\u0002R\"\u0010\u0017\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;",
        "",
        "",
        "isEmpty",
        "",
        "id",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "findEntryById",
        "title",
        "findEntryByTitle",
        "desc",
        "copyAndSort",
        "",
        "reset",
        "root",
        "Lkotlin/Function1;",
        "matcher",
        "a",
        "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "getRootEntry",
        "()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
        "setRootEntry",
        "(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V",
        "rootEntry",
        "<init>",
        "sdk-readercore_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReaderDocumentTableOfContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderDocumentTableOfContent.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1855#2,2:65\n*S KotlinDebug\n*F\n+ 1 ReaderDocumentTableOfContent.kt\ncom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent\n*L\n44#1:65,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rootEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3ff

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object/from16 v0, p1

    .line 5
    :goto_0
    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;"
        }
    .end annotation

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_5
    return-object v1
.end method

.method public final copyAndSort(Z)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->copyAndSort(Z)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;-><init>(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V

    return-object p1
.end method

.method public final findEntryById(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent$findEntryById$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent$findEntryById$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object p0

    return-object p0
.end method

.method public final findEntryByTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    new-instance v1, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent$findEntryByTitle$1;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent$findEntryByTitle$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getRootEntry()Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final reset()V
    .locals 15

    new-instance v14, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3ff

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;-><init>(Ljava/lang/String;ILcom/onyx/android/sdk/reader/api/ReaderPosition;Ljava/lang/String;ZZZJZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v14, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    return-void
.end method

.method public final setRootEntry(Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContent;->a:Lcom/onyx/android/sdk/reader/api/ReaderDocumentTableOfContentEntry;

    return-void
.end method
