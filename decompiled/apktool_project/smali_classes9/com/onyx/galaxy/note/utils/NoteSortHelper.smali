.class public final Lcom/onyx/galaxy/note/utils/NoteSortHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/utils/NoteSortHelper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteSortHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteSortHelper.kt\ncom/onyx/galaxy/note/utils/NoteSortHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n766#2:136\n857#2,2:137\n766#2:139\n857#2,2:140\n1747#2,3:142\n766#2:145\n857#2,2:146\n766#2:148\n857#2,2:149\n1855#2,2:151\n1549#2:153\n1620#2,3:154\n*S KotlinDebug\n*F\n+ 1 NoteSortHelper.kt\ncom/onyx/galaxy/note/utils/NoteSortHelper\n*L\n35#1:136\n35#1:137,2\n36#1:139\n36#1:140,2\n57#1:142,3\n83#1:145\n83#1:146,2\n84#1:148\n84#1:149,2\n89#1:151,2\n114#1:153\n114#1:154,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002J\"\u0010\n\u001a\u00020\t2\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R%\u0010\u001e\u001a\u0010\u0012\u000c\u0012\n \u0019*\u0004\u0018\u00010\u00180\u00180\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR%\u0010!\u001a\u0010\u0012\u000c\u0012\n \u0019*\u0004\u0018\u00010\u001f0\u001f0\u00178\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u001b\u001a\u0004\u0008 \u0010\u001d\u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/NoteSortHelper;",
        "",
        "",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "notePageList",
        "sortNotePageList",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "",
        "d",
        "Lcom/onyx/galaxy/note/settings/data/SortByOption;",
        "a",
        "Lcom/onyx/galaxy/note/settings/data/SortByOption;",
        "getSortByOp",
        "()Lcom/onyx/galaxy/note/settings/data/SortByOption;",
        "sortByOp",
        "Lcom/onyx/galaxy/note/settings/data/SortOrderOption;",
        "b",
        "Lcom/onyx/galaxy/note/settings/data/SortOrderOption;",
        "getSortOrderOp",
        "()Lcom/onyx/galaxy/note/settings/data/SortOrderOption;",
        "sortOrderOp",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "kotlin.jvm.PlatformType",
        "c",
        "Landroidx/lifecycle/MutableLiveData;",
        "getSortType",
        "()Landroidx/lifecycle/MutableLiveData;",
        "sortType",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "getOrderType",
        "orderType",
        "<init>",
        "()V",
        "note_overseasRelease"
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
        "SMAP\nNoteSortHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteSortHelper.kt\ncom/onyx/galaxy/note/utils/NoteSortHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n766#2:136\n857#2,2:137\n766#2:139\n857#2,2:140\n1747#2,3:142\n766#2:145\n857#2,2:146\n766#2:148\n857#2,2:149\n1855#2,2:151\n1549#2:153\n1620#2,3:154\n*S KotlinDebug\n*F\n+ 1 NoteSortHelper.kt\ncom/onyx/galaxy/note/utils/NoteSortHelper\n*L\n35#1:136\n35#1:137,2\n36#1:139\n36#1:140,2\n57#1:142,3\n83#1:145\n83#1:146,2\n84#1:148\n84#1:149,2\n89#1:151,2\n114#1:153\n114#1:154,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/settings/data/SortByOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/galaxy/note/settings/data/SortOrderOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/SortBy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/SortOrder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/onyx/galaxy/note/settings/data/SortByOption;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/settings/data/SortByOption;-><init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/android/sdk/base/data/SortBy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->a:Lcom/onyx/galaxy/note/settings/data/SortByOption;

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/SortOrderOption;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/onyx/galaxy/note/settings/data/SortOrderOption;-><init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/android/sdk/base/data/SortOrder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->b:Lcom/onyx/galaxy/note/settings/data/SortOrderOption;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/settings/data/SortByOption;->get()Lcom/onyx/android/sdk/base/data/SortBy;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->c:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/SortOrderOption;->get()Lcom/onyx/android/sdk/base/data/SortOrder;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->d:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static synthetic a(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->g(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->e(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->f(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I

    move-result p0

    return p0
.end method

.method public static final e(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortUpdateAt()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortUpdateAt()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortUpdateAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortUpdateAt()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final f(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getManualOrderIndex()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getManualOrderIndex()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortUpdateAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortUpdateAt()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final g(ZLcom/onyx/galaxy/note/category/data/NotePageBean;Lcom/onyx/galaxy/note/category/data/NotePageBean;)I
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortCreateAt()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortCreateAt()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortCreateAt()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortCreateAt()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public final d(Ljava/lang/Exception;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;)V"
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    iget-object v2, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/SortBy;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/onyx/galaxy/note/utils/NoteSortHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortCreateAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getManualOrderIndex()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortUpdateAt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getSortName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sort by:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/SortBy;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v2

    :goto_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";order type:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/SortOrder;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";e:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";sortList:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/Object;)V

    return-void
.end method

.method public final getOrderType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/SortOrder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->d:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSortByOp()Lcom/onyx/galaxy/note/settings/data/SortByOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->a:Lcom/onyx/galaxy/note/settings/data/SortByOption;

    return-object p0
.end method

.method public final getSortOrderOp()Lcom/onyx/galaxy/note/settings/data/SortOrderOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->b:Lcom/onyx/galaxy/note/settings/data/SortOrderOption;

    return-object p0
.end method

.method public final getSortType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/SortBy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->c:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final sortNotePageList(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notePageList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v8}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteFolder()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v9}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteFolder()Z

    move-result v9

    xor-int/2addr v9, v3

    if-eqz v9, :cond_3

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/SortBy;

    if-nez v7, :cond_5

    const/4 v7, -0x1

    goto :goto_3

    :cond_5
    sget-object v8, Lcom/onyx/galaxy/note/utils/NoteSortHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    :goto_3
    if-eq v7, v3, :cond_c

    const/4 v8, 0x2

    if-eq v7, v8, :cond_b

    const/4 v8, 0x3

    if-eq v7, v8, :cond_6

    new-instance v2, Lcom/sunia/HTREnginev2/c2k;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/c2k;-><init>(Z)V

    goto :goto_6

    :cond_6
    instance-of v0, v4, Ljava/util/Collection;

    if-eqz v0, :cond_7

    move-object v0, v4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getManualOrderIndex()F

    move-result v4

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v4, v4, v7

    if-nez v4, :cond_9

    move v4, v3

    goto :goto_4

    :cond_9
    move v4, v2

    :goto_4
    xor-int/2addr v4, v3

    if-eqz v4, :cond_8

    move v2, v3

    :cond_a
    :goto_5
    new-instance v0, Lcom/sunia/HTREnginev2/b2k;

    invoke-direct {v0, v2}, Lcom/sunia/HTREnginev2/b2k;-><init>(Z)V

    move-object v2, v0

    goto :goto_6

    :cond_b
    new-instance v2, Lcom/sunia/HTREnginev2/a2k;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/a2k;-><init>(Z)V

    goto :goto_6

    :cond_c
    new-instance v2, Lcom/onyx/galaxy/note/utils/NoteSortHelper$sortNotePageList$sortComparator$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/utils/NoteSortHelper$sortNotePageList$sortComparator$1;-><init>(Lcom/onyx/galaxy/note/utils/NoteSortHelper;)V

    :goto_6
    :try_start_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->c:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    if-eq v0, v3, :cond_12

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    check-cast v6, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/onyx/galaxy/note/utils/NoteSortHelper$sortNotePageList$pageMapList$1;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteSortHelper$sortNotePageList$pageMapList$1;

    sget-object v6, Lcom/onyx/galaxy/note/utils/NoteSortHelper$sortNotePageList$pageMapList$2;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteSortHelper$sortNotePageList$pageMapList$2;

    invoke-static {v0, v4, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMapList(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->addAll(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_9

    :cond_11
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    :cond_12
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->d(Ljava/lang/Exception;Ljava/util/List;)V

    throw v0
.end method
