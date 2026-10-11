.class public final Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0008\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\n\u0010\r\u001a\u00020\u000e*\u00020\u0005J\u0014\u0010\u000f\u001a\u00020\u0010*\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u0015\u0010\u0003\u001a\u00020\u0004*\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;",
        "",
        "()V",
        "richTextPage",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "getRichTextPage",
        "(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "createRichTextPage",
        "index",
        "",
        "pageUniqueId",
        "",
        "hasRichText",
        "",
        "setupRichPageDataMap",
        "",
        "pageNameList",
        "Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createRichTextPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;ILjava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageUniqueId"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->createNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getRichTextPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p0}, Lorg/apache/commons/collections4/map/ListOrderedMap;->put(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getRichTextPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getRichTextPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;->createRichTextPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;ILjava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getRichTextPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/ListOrderedMap;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getValue(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->isLoaded()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;->loadPage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)V

    :cond_1
    return-object p0
.end method

.method public final hasRichText(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getRichTextPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;->getRichTextPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->hasShapes(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setupRichPageDataMap(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->loadPageIndex(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Lcom/onyx/android/sdk/replicator/note/data/page/PageNameList;)Ljava/util/LinkedHashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocRichPage;->createRichTextPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;ILjava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
