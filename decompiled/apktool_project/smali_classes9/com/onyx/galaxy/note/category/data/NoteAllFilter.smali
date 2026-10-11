.class public final Lcom/onyx/galaxy/note/category/data/NoteAllFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/category/data/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteAllFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteAllFilter.kt\ncom/onyx/galaxy/note/category/data/NoteAllFilter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/NoteAllFilter;",
        "Lcom/onyx/galaxy/note/category/data/Filter;",
        "()V",
        "fillChildrenTree",
        "",
        "list",
        "",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "provider",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
        "noteExtraProvider",
        "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;",
        "queryArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "type",
        "",
        "uniqueId",
        "",
        "Companion",
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
        "SMAP\nNoteAllFilter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteAllFilter.kt\ncom/onyx/galaxy/note/category/data/NoteAllFilter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NOTE_SET_FILTER_ID:Ljava/lang/String; = "noteSet"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final info:Lcom/onyx/galaxy/note/category/data/FilterInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final noteSetFilterArgs$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion$noteSetFilterArgs$2;->INSTANCE:Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion$noteSetFilterArgs$2;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    sput-object v1, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->noteSetFilterArgs$delegate:Lkotlin/Lazy;

    new-instance v1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    const/4 v2, 0x1

    const-string v3, "noteSet"

    invoke-direct {v1, v2, v3}, Lcom/onyx/galaxy/note/category/data/FilterInfo;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;->access$getNoteSetFilterArgs(Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->setQueryArgs(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    sput-object v1, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->info:Lcom/onyx/galaxy/note/category/data/FilterInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInfo$cp()Lcom/onyx/galaxy/note/category/data/FilterInfo;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->info:Lcom/onyx/galaxy/note/category/data/FilterInfo;

    return-object v0
.end method

.method public static final synthetic access$getNoteSetFilterArgs$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->noteSetFilterArgs$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public fillChildrenTree(Ljava/util/List;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;",
            "Lcom/onyx/android/sdk/replicator/note/db/NoteExtraProvider;",
            ")V"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "provider"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "noteExtraProvider"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;->getNoteSetExpandOp()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/onyx/galaxy/note/category/data/NoteSetUnClassfied;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/NoteSetUnClassfied;-><init>()V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/data/NoteSetUnClassfied;->info(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    new-instance p3, Lcom/onyx/galaxy/note/category/data/NoteSetNoTag;

    invoke-direct {p3}, Lcom/onyx/galaxy/note/category/data/NoteSetNoTag;-><init>()V

    invoke-virtual {p3, p2}, Lcom/onyx/galaxy/note/category/data/NoteSetNoTag;->info(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p3

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getUnClassifyCountArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;->queryCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->setCount(J)V

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getNoTagCountArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;->queryCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->setCount(J)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public info(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/galaxy/note/category/data/FilterInfo;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/data/Filter$DefaultImpls;->info(Lcom/onyx/galaxy/note/category/data/Filter;Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;)Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    return-object p0
.end method

.method public pathList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/PathEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/data/Filter$DefaultImpls;->pathList(Lcom/onyx/galaxy/note/category/data/Filter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;->access$getNoteSetFilterArgs(Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method public type()I
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->info:Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    return p0
.end method

.method public uniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->info:Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
