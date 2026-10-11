.class public final Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPBDocumentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n1549#2:46\n1620#2,3:47\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 PBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils\n*L\n18#1:46\n18#1:47,3\n23#1:50\n23#1:51,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\r\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;",
        "",
        "",
        "pbDirPath",
        "",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
        "loadDocPBArgsList",
        "loadDocPBFileNameList",
        "Ljava/io/File;",
        "loadDocPBFileList",
        "",
        "hasDocPBFile",
        "fileName",
        "c",
        "<init>",
        "()V",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nPBDocumentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,45:1\n1549#2:46\n1620#2,3:47\n1549#2:50\n1620#2,3:51\n*S KotlinDebug\n*F\n+ 1 PBDocumentUtils.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils\n*L\n18#1:46\n18#1:47,3\n23#1:50\n23#1:51,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$parseArgs(Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->c(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    move-result-object p0

    return-object p0
.end method

.method public final hasDocPBFile(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "pbDirPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->listAllFiles(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/LinkedList;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final loadDocPBArgsList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pbDirPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->loadDocPBFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->c(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final loadDocPBFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "pbDirPath"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->listAllFiles(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/LinkedList;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils$loadDocPBFileList$1;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils$loadDocPBFileList$1;

    new-instance v0, Lcom/sunia/HTREnginev2/sjk;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/sjk;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    return-object p0
.end method

.method public final loadDocPBFileNameList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "pbDirPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->loadDocPBFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
