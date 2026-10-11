.class public final Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilterManager"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTreeBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTreeBundle.kt\ncom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n288#2,2:177\n*S KotlinDebug\n*F\n+ 1 NoteTreeBundle.kt\ncom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager\n*L\n107#1:177,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0007J\u001e\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0003J\u000e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0002J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0002J\u0006\u0010&\u001a\u00020\'J\u000e\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020$R\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;",
        "",
        "()V",
        "flatten",
        "",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "getFlatten$note_overseasRelease",
        "()Ljava/util/List;",
        "footerFilter",
        "Lcom/onyx/galaxy/note/category/data/FooterFilter;",
        "headerFilter",
        "Lcom/onyx/galaxy/note/category/data/HeaderFilter;",
        "noteAllFilter",
        "Lcom/onyx/galaxy/note/category/data/NoteAllFilter;",
        "noteDustBinFilter",
        "Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter;",
        "noteFolderRootFilter",
        "Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;",
        "noteTagRootFilter",
        "Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;",
        "quotaFlatten",
        "quotaRoot",
        "Lcom/onyx/galaxy/note/category/data/QuotaFilter;",
        "root",
        "",
        "Lcom/onyx/galaxy/note/category/data/Filter;",
        "searchFilter",
        "Lcom/onyx/galaxy/note/category/data/SearchFilter;",
        "fillList",
        "provider",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteExtraProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;",
        "fillQuotaList",
        "generateDefaultRoot",
        "getQuotaCount",
        "",
        "type",
        "getQuotaInfo",
        "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
        "getRootFilterTitleRes",
        "filterType",
        "note_overseasRelease"
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
        "SMAP\nNoteTreeBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTreeBundle.kt\ncom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n288#2,2:177\n*S KotlinDebug\n*F\n+ 1 NoteTreeBundle.kt\ncom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager\n*L\n107#1:177,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final flatten:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final footerFilter:Lcom/onyx/galaxy/note/category/data/FooterFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final headerFilter:Lcom/onyx/galaxy/note/category/data/HeaderFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final noteAllFilter:Lcom/onyx/galaxy/note/category/data/NoteAllFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final noteDustBinFilter:Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final noteFolderRootFilter:Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final noteTagRootFilter:Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final quotaFlatten:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final quotaRoot:Lcom/onyx/galaxy/note/category/data/QuotaFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final root:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/Filter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final searchFilter:Lcom/onyx/galaxy/note/category/data/SearchFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;

    new-instance v1, Lcom/onyx/galaxy/note/category/data/HeaderFilter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/data/HeaderFilter;-><init>()V

    sput-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->headerFilter:Lcom/onyx/galaxy/note/category/data/HeaderFilter;

    new-instance v1, Lcom/onyx/galaxy/note/category/data/FooterFilter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/data/FooterFilter;-><init>()V

    sput-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->footerFilter:Lcom/onyx/galaxy/note/category/data/FooterFilter;

    new-instance v1, Lcom/onyx/galaxy/note/category/data/SearchFilter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/data/SearchFilter;-><init>()V

    sput-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->searchFilter:Lcom/onyx/galaxy/note/category/data/SearchFilter;

    new-instance v1, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;-><init>()V

    sput-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->noteAllFilter:Lcom/onyx/galaxy/note/category/data/NoteAllFilter;

    new-instance v1, Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter;-><init>()V

    sput-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->noteDustBinFilter:Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter;

    new-instance v1, Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;-><init>()V

    sput-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->noteFolderRootFilter:Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;

    new-instance v1, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;-><init>()V

    sput-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->noteTagRootFilter:Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->generateDefaultRoot()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->root:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->flatten:Ljava/util/List;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/QuotaFilter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/QuotaFilter;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->quotaRoot:Lcom/onyx/galaxy/note/category/data/QuotaFilter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->quotaFlatten:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fillQuotaList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->quotaFlatten:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->quotaRoot:Lcom/onyx/galaxy/note/category/data/QuotaFilter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/galaxy/note/category/data/QuotaFilter;->fillChildrenTree(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)V

    return-object p0
.end method

.method private final generateDefaultRoot()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/Filter;",
            ">;"
        }
    .end annotation

    const/16 p0, 0xb

    new-array p0, p0, [Lcom/onyx/galaxy/note/category/data/Filter;

    const/4 v0, 0x0

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->headerFilter:Lcom/onyx/galaxy/note/category/data/HeaderFilter;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->searchFilter:Lcom/onyx/galaxy/note/category/data/SearchFilter;

    aput-object v1, p0, v0

    new-instance v0, Lcom/onyx/galaxy/note/category/data/DummyFilter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/DummyFilter;-><init>()V

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const/4 v0, 0x3

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->noteAllFilter:Lcom/onyx/galaxy/note/category/data/NoteAllFilter;

    aput-object v1, p0, v0

    new-instance v0, Lcom/onyx/galaxy/note/category/data/DummyFilter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/DummyFilter;-><init>()V

    const/4 v1, 0x4

    aput-object v0, p0, v1

    const/4 v0, 0x5

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->noteDustBinFilter:Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter;

    aput-object v1, p0, v0

    new-instance v0, Lcom/onyx/galaxy/note/category/data/DummyFilter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/DummyFilter;-><init>()V

    const/4 v1, 0x6

    aput-object v0, p0, v1

    const/4 v0, 0x7

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->noteFolderRootFilter:Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;

    aput-object v1, p0, v0

    new-instance v0, Lcom/onyx/galaxy/note/category/data/DummyFilter;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/DummyFilter;-><init>()V

    const/16 v1, 0x8

    aput-object v0, p0, v1

    const/16 v0, 0x9

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->noteTagRootFilter:Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;

    aput-object v1, p0, v0

    const/16 v0, 0xa

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->footerFilter:Lcom/onyx/galaxy/note/category/data/FooterFilter;

    aput-object v1, p0, v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getQuotaCount(I)I
    .locals 3

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->quotaFlatten:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getCount()J

    move-result-wide p0

    long-to-int v1, p0

    :cond_3
    return v1
.end method


# virtual methods
.method public final fillList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)Ljava/util/List;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteExtraProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->fillQuotaList(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)Ljava/util/List;

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->flatten:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->root:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/Filter;

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->flatten:Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/onyx/galaxy/note/category/data/Filter;->info(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1, p1, p2}, Lcom/onyx/galaxy/note/category/data/Filter;->fillChildrenTree(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/account/event/NoteCountChanged;->INSTANCE:Lcom/onyx/android/sdk/data/account/event/NoteCountChanged;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->post(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->flatten:Ljava/util/List;

    return-object p0
.end method

.method public final getFlatten$note_overseasRelease()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->flatten:Ljava/util/List;

    return-object p0
.end method

.method public final getQuotaInfo()Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;-><init>()V

    const/16 v1, 0x5f

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->getQuotaCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->setDocCount(I)V

    const/16 v1, 0x5e

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->getQuotaCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->setDocCountIncludeDustbin(I)V

    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->getQuotaCount(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;->setDocHistoryCount(I)V

    return-object v0
.end method

.method public final getRootFilterTitleRes(I)I
    .locals 0

    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-eq p1, p0, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$string;->all_note:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$string;->dustbin:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$string;->tag:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/onyx/galaxy/note/R$string;->folder:I

    goto :goto_0

    :cond_3
    sget p0, Lcom/onyx/galaxy/note/R$string;->no_mark:I

    goto :goto_0

    :cond_4
    sget p0, Lcom/onyx/galaxy/note/R$string;->no_classify:I

    goto :goto_0

    :cond_5
    sget p0, Lcom/onyx/galaxy/note/R$string;->all_note:I

    goto :goto_0

    :cond_6
    sget p0, Lcom/onyx/galaxy/note/R$string;->search:I

    :goto_0
    return p0
.end method
