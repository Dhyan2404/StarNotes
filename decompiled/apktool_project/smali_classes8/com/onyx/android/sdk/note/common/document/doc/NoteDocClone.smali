.class public final Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J$\u0010\t\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n*\u00020\u00022\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\nJ\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000e*\u00020\u00022\u0006\u0010\r\u001a\u00020\u0005J \u0010\u0015\u001a\u00020\u0014*\u00020\u00022\n\u0010\u0012\u001a\u00060\u0010j\u0002`\u00112\u0006\u0010\u0013\u001a\u00020\u0003H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;",
        "",
        "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
        "",
        "copyPageId",
        "",
        "newIndex",
        "newPageId",
        "",
        "copyPage",
        "",
        "copyIndexes",
        "copyPageList",
        "copyIndex",
        "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;",
        "copyPageBkGround",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "newPageUniqueId",
        "",
        "a",
        "<init>",
        "()V",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic copyPage$default(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    sget-object p4, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p4}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object p4

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;->copyPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0, p1, p3}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->removePageById(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final copyPage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copyPageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPageId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getPageByUniqueId(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->savePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p4}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->notePageClone(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p4

    invoke-virtual {p4}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v0

    invoke-virtual {v0, p3, v2, p4}, Lorg/apache/commons/collections4/map/ListOrderedMap;->put(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;

    invoke-virtual {p3, p1, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocCache;->cachePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)V

    sget-object p3, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBKGround;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBKGround;

    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBKGround;->getPageBkGround(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->bkGroundResClone()Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    move-result-object p2

    invoke-virtual {p3, p1, v2, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBKGround;->setPageBkGround(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p2, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;->a(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final copyPageBkGround(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;I)Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getPageByIndex(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;I)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/note/common/document/page/NotePageSave;->savePage(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Z

    :try_start_0
    sget-object p0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBKGround;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBKGround;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/apache/commons/collections4/map/ListOrderedMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBKGround;->getPageBkGround(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;->bkGroundResClone()Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final copyPageList(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "copyIndexes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getPageDataMap()Lorg/apache/commons/collections4/map/ListOrderedMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/commons/collections4/map/ListOrderedMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, v1

    invoke-static/range {v3 .. v9}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;->copyPage$default(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocClone;Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
