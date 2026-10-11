.class public final Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPdfTocUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTocUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,26:1\n1549#2:27\n1620#2,3:28\n*S KotlinDebug\n*F\n+ 1 PdfTocUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils\n*L\n23#1:27\n23#1:28,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0014\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;",
        "",
        "()V",
        "addPageTocEntry",
        "",
        "topTocEntry",
        "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
        "notePage",
        "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
        "pageIndex",
        "",
        "convertFromModel",
        "tree",
        "Lcom/onyx/android/sdk/base/data/Tree;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPdfTocUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfTocUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,26:1\n1549#2:27\n1620#2,3:28\n*S KotlinDebug\n*F\n+ 1 PdfTocUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils\n*L\n23#1:27\n23#1:28,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPageTocEntry(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;Lcom/onyx/android/sdk/note/common/document/page/NotePage;I)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "topTocEntry"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "notePage"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getPageInfo()Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->Companion:Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry$Companion;->addChild(Lcom/onyx/android/sdk/neopdf/PdfTocEntry;JLjava/lang/String;I)Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    :cond_0
    return-void
.end method

.method public final convertFromModel(Lcom/onyx/android/sdk/base/data/Tree;)Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/base/data/Tree;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/Tree<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;",
            ">;)",
            "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "tree"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getItem()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    new-instance v8, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;-><init>(JLjava/lang/String;ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getPageIndex()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->setPage(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/onyx/android/sdk/neopdf/PdfTocEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/Tree;->getChildren()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/Tree;

    sget-object v2, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;->INSTANCE:Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/pdf/utils/PdfTocUtils;->convertFromModel(Lcom/onyx/android/sdk/base/data/Tree;)Lcom/onyx/android/sdk/neopdf/PdfTocEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v8
.end method
