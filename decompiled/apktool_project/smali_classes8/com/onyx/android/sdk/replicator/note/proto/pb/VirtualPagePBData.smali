.class public final Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;
.super Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVirtualPagePBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualPagePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,591:1\n1855#2,2:592\n766#2:594\n857#2,2:595\n1549#2:598\n1620#2,3:599\n1855#2,2:602\n1855#2,2:604\n766#2:606\n857#2,2:607\n1855#2,2:609\n766#2:611\n857#2,2:612\n1855#2,2:614\n1855#2,2:616\n1855#2,2:618\n1855#2,2:620\n1855#2,2:622\n1855#2,2:624\n1179#2,2:626\n1253#2,4:628\n1179#2,2:633\n1253#2,4:635\n1855#2,2:640\n766#2:642\n857#2,2:643\n1855#2,2:645\n1045#2:647\n1549#2:648\n1620#2,3:649\n1#3:597\n215#4:632\n216#4:639\n*S KotlinDebug\n*F\n+ 1 VirtualPagePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData\n*L\n228#1:592,2\n241#1:594\n241#1:595,2\n243#1:598\n243#1:599,3\n251#1:602,2\n254#1:604,2\n264#1:606\n264#1:607,2\n265#1:609,2\n306#1:611\n306#1:612,2\n307#1:614,2\n325#1:616,2\n369#1:618,2\n408#1:620,2\n418#1:622,2\n421#1:624,2\n429#1:626,2\n429#1:628,4\n468#1:633,2\n468#1:635,4\n473#1:640,2\n530#1:642\n530#1:643,2\n531#1:645,2\n585#1:647\n220#1:648\n220#1:649,3\n466#1:632\n466#1:639\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010%\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008E\u0010FJD\u0010\r\u001a\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u00040\n2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0010\u001a\u00020\u00082\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J.\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0008H\u0002J\u0018\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0008H\u0002J \u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0008H\u0002J&\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J&\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J\u001e\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J&\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001a2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J*\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0008H\u0002J,\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010&\u001a\u00020%2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J\u001e\u0010)\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J\u001e\u0010*\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J\u001e\u0010+\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J\u001e\u0010,\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J,\u00101\u001a\u00020#2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020#0-2\u0006\u0010/\u001a\u00020#2\u0006\u00100\u001a\u00020#H\u0002J\u001e\u00102\u001a\u00020\u00162\u0006\u0010&\u001a\u00020%2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0004H\u0002J,\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00042\u0006\u00103\u001a\u00020\u00112\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0014\u001a\u00020\u0008H\u0002J\u0008\u00105\u001a\u00020\u0008H\u0002J\u0010\u00106\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u00107\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u00108\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u00109\u001a\u00020\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010=\u001a\u00020\u00088\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008(\u0010:\u001a\u0004\u0008;\u0010<R\"\u0010D\u001a\u00020>8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010C\u00a8\u0006G"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;",
        "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
        "pbDataContext",
        "",
        "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
        "argsList",
        "",
        "",
        "revisionIdList",
        "Lkotlin/Pair;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
        "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;",
        "l",
        "n",
        "list",
        "u",
        "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;",
        "virtualPagePBDocument",
        "virtualPageModels",
        "documentId",
        "revisionId",
        "",
        "s",
        "q",
        "r",
        "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
        "exportNoteArgs",
        "i",
        "k",
        "j",
        "g",
        "dirPath",
        "virtualPageModel",
        "pageId",
        "Ljava/nio/file/Path;",
        "p",
        "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
        "copyNoteArgs",
        "virtualModels",
        "a",
        "t",
        "d",
        "f",
        "c",
        "",
        "copiedPathMap",
        "origin",
        "dst",
        "b",
        "e",
        "pbDocument",
        "m",
        "o",
        "exportToPBFromDB",
        "exportToDBFromPB",
        "exportToNote",
        "copyPBDataToDB",
        "Ljava/lang/String;",
        "getTEMPLATE_LOG",
        "()Ljava/lang/String;",
        "TEMPLATE_LOG",
        "",
        "I",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "type",
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
        "SMAP\nVirtualPagePBData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualPagePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,591:1\n1855#2,2:592\n766#2:594\n857#2,2:595\n1549#2:598\n1620#2,3:599\n1855#2,2:602\n1855#2,2:604\n766#2:606\n857#2,2:607\n1855#2,2:609\n766#2:611\n857#2,2:612\n1855#2,2:614\n1855#2,2:616\n1855#2,2:618\n1855#2,2:620\n1855#2,2:622\n1855#2,2:624\n1179#2,2:626\n1253#2,4:628\n1179#2,2:633\n1253#2,4:635\n1855#2,2:640\n766#2:642\n857#2,2:643\n1855#2,2:645\n1045#2:647\n1549#2:648\n1620#2,3:649\n1#3:597\n215#4:632\n216#4:639\n*S KotlinDebug\n*F\n+ 1 VirtualPagePBData.kt\ncom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData\n*L\n228#1:592,2\n241#1:594\n241#1:595,2\n243#1:598\n243#1:599,3\n251#1:602,2\n254#1:604,2\n264#1:606\n264#1:607,2\n265#1:609,2\n306#1:611\n306#1:612,2\n307#1:614,2\n325#1:616,2\n369#1:618,2\n408#1:620,2\n418#1:622,2\n421#1:624,2\n429#1:626,2\n429#1:628,4\n468#1:633,2\n468#1:635,4\n473#1:640,2\n530#1:642\n530#1:643,2\n531#1:645,2\n585#1:647\n220#1:648\n220#1:649,3\n466#1:632\n466#1:639\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;-><init>()V

    const-string v0, "template_log"

    iput-object v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->a:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->b:I

    return-void
.end method

.method public static final synthetic access$copyToUniqueFile(Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Ljava/util/Map;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->b(Ljava/util/Map;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$exportToNote$exportVirtualPageListFunc(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->h(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;)V

    return-void
.end method

.method public static final h(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    check-cast p0, Ljava/util/Collection;

    move-object v0, p5

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    invoke-virtual {p1, p2, p5, p3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->i(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p5, p3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->k(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p5, p3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->g(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p5}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->j(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p4, p5, p3, p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->s(Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
            "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getCopyToPageIndex()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageModelList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p1, p0, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;->reorderIndexByListIndex(Ljava/util/List;)V

    return-object p1

    :cond_0
    return-object p3
.end method

.method public final b(Ljava/util/Map;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    invoke-static {p3, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1

    invoke-static {p2}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/nio/file/Path;

    return-object p0

    :cond_0
    invoke-interface {p3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p3

    :try_start_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getBaseName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getExtension(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/FileUtils;->generateUniqueFileName$default(Lcom/onyx/android/sdk/base/utils/FileUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p3, p0}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p3

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile$default(Lcom/onyx/android/sdk/base/extension/Paths;Ljava/nio/file/Path;Ljava/nio/file/Path;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p3
.end method

.method public final c(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getExtraInfoBean()Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/proto/data/ExtraInfoBean;->getExportPdfPagesResult()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult$Companion;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;->getContentPageIdMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-static {v5}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;->setContentPageIdMap(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    sget-object v12, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;

    invoke-virtual {v12, v11}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;->loadContentResourceRelativePath(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    sget-object v5, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDirFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v8, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->docResourceContentFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v10}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appDocResourceContentFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v4, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    invoke-virtual {v4, v13}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v14

    new-instance v15, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;

    move-object v4, v15

    move-object v5, v2

    move-object v6, v13

    move-object/from16 v7, p1

    move-object/from16 v8, p0

    move-object v9, v1

    invoke-direct/range {v4 .. v10}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$copyVirtualPageContentResource$2$dstPath$1;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Ljava/util/Map;Ljava/nio/file/Path;)V

    invoke-static {v14, v15}, Lcom/onyx/android/sdk/base/extension/AnyKt;->transform(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getGenerateUniqueContentFile()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;->getContentPageIdMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v11}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentPageId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v11, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentPageId(Ljava/lang/String;)V

    :cond_6
    :goto_4
    sget-object v5, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->INSTANCE:Lcom/onyx/android/sdk/base/utils/AppFilePaths;

    invoke-interface {v4}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->filesDirRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v11, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;->updateContentResourceRelativePath(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    return-void
.end method

.method public copyPBDataToDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getCopyNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDirFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setPbDirPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->getPBFileDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->loadDocPBArgsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyPBDataToDB argsList size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->o()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v2, v5}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->m(Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->rawUUID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setRevisionId(Ljava/lang/String;)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->setPageIdCopyMap(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->a(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->t(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->d(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->f(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->c(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V

    invoke-virtual {p0, v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->e(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDirFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setPbDirPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->s(Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualPageList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->r(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getMarginTemplateResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDirFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docPageMarginTemplateJsonPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    sget-object v1, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->appDocDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docPageMarginTemplateJsonPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    sget-object v3, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile$default(Lcom/onyx/android/sdk/base/extension/Paths;Ljava/nio/file/Path;Ljava/nio/file/Path;ZILjava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final e(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    sget-object v3, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isImportPDF(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;->loadContentResourceRelativePath(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pdf"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v3, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDirFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->docDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v3, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDirFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->docResourceContentFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    sget-object v5, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docTemplateResAbsolutePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "document"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v0, v6, v7, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v5, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->appDocResourceContentFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2, v5}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Z)Z

    invoke-static {v0, v6, v7, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isPDF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->INSTANCE:Lcom/onyx/android/sdk/base/utils/AppFilePaths;

    invoke-virtual {v0, v5}, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->filesDirRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentRelativePath(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public exportToDBFromPB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->getPBFileDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->loadDocPBArgsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/BasePBData;->loadRevisions(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->l(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/util/List;Ljava/util/List;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualPageList(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getPbDocRecordProvider()Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;->saveRecordList(Ljava/util/List;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "documentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", exportToDBFromPB count: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public exportToNote(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 18
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getExportNoteArgs()Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

    invoke-direct {v8}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setPbDirPath(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getPageIdList()Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object v10

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/VirtualPageQueryArgsKt;->loadValidVirtualPageQuery()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/VirtualPageQueryArgsKt;->loadEnabledVirtualPageQuery()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v11

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "virtual page exportToNote detect exportNoteArgs empty pageIds"

    invoke-static {v3, v6}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v13, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportRemovedPages()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualPageQueryArgsKt;->loadVirtualPageById(Ljava/util/Collection;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    :cond_3
    invoke-virtual {v10, v1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v13

    :goto_0
    cmp-long v3, v13, v4

    if-gtz v3, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "virtual page exportToNote detect empty virtualPageModels load from db by pageIds:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/VirtualPageQueryArgsKt;->loadValidVirtualPageQuery()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v13

    :cond_4
    move-wide v14, v13

    move-object v13, v1

    cmp-long v1, v14, v4

    if-gtz v1, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "virtual page exportToNote detect empty virtualPageModels load from db with all"

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;

    invoke-virtual {v1, v7}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->getPBFileDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/doc/PBDocumentUtils;->loadDocPBArgsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v6, p0

    invoke-virtual {v6, v1, v2, v7}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->m(Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v14, v1

    goto :goto_1

    :cond_5
    move-object/from16 v6, p0

    :goto_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x1388

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->split(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/List;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    move-object v6, v13

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->h(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;)V

    move-object/from16 v6, p0

    goto :goto_2

    :cond_6
    move-object/from16 v17, v7

    goto :goto_3

    :cond_7
    new-instance v6, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;

    move-object v1, v6

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object v4, v0

    move-object v5, v7

    move-object/from16 v17, v7

    move-object v7, v6

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$exportToNote$3;-><init>(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;)V

    invoke-virtual {v10, v13, v7}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageModelListInBatch(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lkotlin/jvm/functions/Function1;)V

    :goto_3
    cmp-long v1, v14, v11

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportRemovedPages()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v14, v1

    if-lez v1, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v1, v16

    :cond_b
    new-instance v9, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    :goto_6
    move-object/from16 v9, v16

    :cond_d
    invoke-virtual {v0, v9}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->setPageIdList(Ljava/util/List;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "documentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", virtual model exportPB count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public exportToPBFromDB(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pbDataContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->n(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->u(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

    invoke-direct {v3}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;-><init>()V

    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->s(Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->q(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualPageList(Ljava/util/List;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "documentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", save virtual page to pb count: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getPageIdCopyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDirFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v4, v8, v5}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->p(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    new-array v9, v8, [Ljava/nio/file/LinkOption;

    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/nio/file/LinkOption;

    invoke-static {v7, v9}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v7, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v9, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->INSTANCE:Lcom/onyx/android/sdk/base/utils/AppFilePaths;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->filesDirAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    :cond_4
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_5

    sget-object v11, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v12, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    sget-object v13, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v13}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->appDocDir()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docTemplateJsonDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v12

    invoke-static {v10}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    goto :goto_2

    :cond_5
    sget-object v10, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->appDocDir()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v10, v4, v11, v6}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->p(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v10

    if-nez v10, :cond_6

    goto/16 :goto_1

    :cond_6
    :goto_2
    move-object v15, v10

    sget-object v10, Lcom/onyx/android/sdk/data/common/path/ContentPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ContentPaths;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/onyx/android/sdk/data/common/path/ContentPaths;->contentRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentRelativePath(Ljava/lang/String;)V

    new-array v10, v8, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/nio/file/LinkOption;

    invoke-static {v15, v10}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object v10, v7

    move-object v11, v15

    invoke-static/range {v9 .. v14}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile$default(Lcom/onyx/android/sdk/base/extension/Paths;Ljava/nio/file/Path;Ljava/nio/file/Path;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "copy template fail; srcPath is notExists:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v8, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/nio/file/LinkOption;

    invoke-static {v7, v10}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ";dstPath is exists:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v8, [Ljava/nio/file/LinkOption;

    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/nio/file/LinkOption;

    invoke-static {v15, v8}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "src doc id:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getSrcDocId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; page id:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "srcPath:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "dst doc id:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getDstDocId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method public final g(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;->loadContentResourceRelativePath(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->INSTANCE:Lcom/onyx/android/sdk/base/utils/AppFilePaths;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->filesDirAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {v2, v0, p3}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templateResAbsolutePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    :cond_2
    new-array v0, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/ResourcePaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getDocumentId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/onyx/android/sdk/data/common/path/ResourcePaths;->docResourceContentFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportPdfPagesResult()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;->getContentPageIdMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentPageId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setContentPageId(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/bean/ExportPdfPagesResult;->getExportPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    :cond_5
    :goto_1
    new-array p2, v3, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile$default(Lcom/onyx/android/sdk/base/extension/Paths;Ljava/nio/file/Path;Ljava/nio/file/Path;ZILjava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final getTEMPLATE_LOG()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->b:I

    return p0
.end method

.method public final i(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getMarginTemplateResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    sget-object v1, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->appDocDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p2}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docPageMarginTemplateJsonPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p2}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docPageMarginTemplateJsonPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    sget-object v2, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile$default(Lcom/onyx/android/sdk/base/extension/Paths;Ljava/nio/file/Path;Ljava/nio/file/Path;ZILjava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final j(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportTemplate()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isImportPDF(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel$Companion;->loadContentResourceRelativePath(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v1

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->templateResAbsolutePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v4, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/CommonPaths;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/onyx/android/sdk/data/common/path/CommonPaths;->docDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v0}, Lcom/onyx/android/sdk/base/utils/FileUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile(Ljava/nio/file/Path;Ljava/nio/file/Path;Z)Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final k(Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;Ljava/util/List;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    sget-object v2, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserTemplateProvider()Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;

    move-result-object v2

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "geo_layout"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    sget-object v11, Lcom/onyx/android/sdk/base/extension/Paths;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Paths;

    sget-object v5, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docTemplateJsonDir(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Lcom/onyx/android/sdk/base/extension/Paths;->append(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/nio/file/LinkOption;

    invoke-static {v7, v6}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->INSTANCE:Lcom/onyx/android/sdk/base/utils/AppFilePaths;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentRelativePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/onyx/android/sdk/base/utils/AppFilePaths;->filesDirAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/onyx/android/sdk/base/extension/Paths;->toPath(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    new-array v8, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v8, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v8}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v6, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/sync/SyncConstant;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/common/sync/SyncConstant;->appDocDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v4, v1, v8}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->p(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move-object v12, v6

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportTemplate()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v12

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile$default(Lcom/onyx/android/sdk/base/extension/Paths;Ljava/nio/file/Path;Ljava/nio/file/Path;ZILjava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/replicator/note/bean/ExportNoteArgs;->getExportDirPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v4, v1, v6}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->p(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v12

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/base/extension/Paths;->copyFile$default(Lcom/onyx/android/sdk/base/extension/Paths;Ljava/nio/file/Path;Ljava/nio/file/Path;ZILjava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->resetTemplateData()V

    sget-object v6, Lcom/onyx/android/sdk/base/data/ContentConstants;->INSTANCE:Lcom/onyx/android/sdk/base/data/ContentConstants;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/onyx/android/sdk/base/data/ContentConstants;->isPDF(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_1

    :cond_6
    sget-object v6, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-interface {v12}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/onyx/android/sdk/base/utils/FileUtils;->readContentOfFileSafely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/onyx/android/sdk/genericshape/GeoFactory;->INSTANCE:Lcom/onyx/android/sdk/genericshape/GeoFactory;

    invoke-virtual {v9, v8}, Lcom/onyx/android/sdk/genericshape/GeoFactory;->parseGeoLayout(Ljava/lang/String;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->getFillColor()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_7
    if-nez v5, :cond_8

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/replicator/note/db/TemplateProvider;->loadTemplateListById(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    move-result-object v13

    if-nez v13, :cond_9

    goto/16 :goto_1

    :cond_9
    sget-object v12, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;->loadGeoLayoutFromTemplateModel$default(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;ZILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v4

    if-nez v4, :cond_a

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/Feature;->getProperties()Lcom/onyx/android/sdk/genericshape/Properties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/onyx/android/sdk/genericshape/Properties;->getFillAttr()Lcom/onyx/android/sdk/genericshape/FillAttr;

    move-result-object v8

    if-nez v8, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v8, v5}, Lcom/onyx/android/sdk/genericshape/FillAttr;->setColor(I)V

    :goto_2
    sget-object v5, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    goto/16 :goto_1

    :cond_c
    new-instance v5, Ljava/io/ByteArrayInputStream;

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v8, "this as java.lang.String).getBytes(charset)"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v11, v7}, Lcom/onyx/android/sdk/base/extension/Paths;->asFile(Ljava/nio/file/Path;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Lcom/onyx/android/sdk/base/utils/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)J

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public final l(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/util/List;Ljava/util/List;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getPbDocRecordProvider()Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    move-result-object p1

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;->loadRecordModelMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->isSynced()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setArgs(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->load()Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;

    if-eqz v2, :cond_0

    sget-object v4, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;

    invoke-virtual {v4, v2, v3}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;->fromProtoList(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;

    invoke-direct {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;-><init>()V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setDocumentId(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setStatus(I)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v1, p3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->getRevisionId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setArgs(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->load()Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;->fromProtoList(Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$loadVirtualPageFormPB$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData$loadVirtualPageFormPB$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/db/VirtualPageQueryArgsKt;->loadEmptyRevisionIdVirtualPageQuery()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->loadVirtualPageModelList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->timeBasedEpochUUID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string p2, "geo_layout"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->INSTANCE:Lcom/onyx/android/sdk/data/common/path/TemplatePaths;

    invoke-virtual {p0, p1, p3, p4}, Lcom/onyx/android/sdk/data/common/path/TemplatePaths;->docPageTemplateJsonPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final q(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getDocumentId()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;-><init>()V

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setDocumentId(Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getPbDocRecordProvider()Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;->saveRecordModel(Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;)V

    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;-><init>()V

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setDocumentId(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;->setStatus(I)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/PBDataContext;->getNoteProviderHolder()Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/provider/NoteProviderHolder;->getPbDocRecordProvider()Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;->saveRecordModel(Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;)V

    return-void
.end method

.method public final s(Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument;->Companion:Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/VirtualPagePBDocument$Companion;->toProtoList(Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/proto/VirtualDocPageProto$VirtualPageList;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    invoke-direct {p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;-><init>()V

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setDocumentId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;->setRevisionId(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setArgs(Lcom/onyx/android/sdk/replicator/note/proto/data/PBDocumentArgs;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->setData(Ljava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;->save()Lcom/onyx/android/sdk/replicator/note/proto/doc/BasePBDocument;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->b:I

    return-void
.end method

.method public final t(Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getCopyPageRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->isNullOrEmpty(Landroid/graphics/RectF;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getPageSize()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleToWidth(Landroid/graphics/RectF;Landroid/graphics/RectF;)F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getPageSizeWithMargin()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->scaleRect(Landroid/graphics/RectF;F)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->getPageSize()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->offsetToOrigin(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/CopyNoteArgs;->getCopyPageScaleMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final u(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/VirtualPagePBData;->o()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;->setRevisionId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
