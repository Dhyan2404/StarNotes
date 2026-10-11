.class public final Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShortcutBarData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarData.kt\ncom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n288#2,2:119\n*S KotlinDebug\n*F\n+ 1 ShortcutBarData.kt\ncom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion\n*L\n65#1:119,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0012\u001a\u00020\u0010J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0014\u001a\u00020\u0005R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;",
        "",
        "()V",
        "DEFAULT_CANDIDATE_LIST",
        "",
        "",
        "DEFAULT_LEFT_SIDE_LIST",
        "DEFAULT_RIGHT_SIDE_LIST",
        "",
        "FILTER_READING_MOD_SHORTCUT_LIST",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "getFILTER_READING_MOD_SHORTCUT_LIST",
        "()Ljava/util/List;",
        "SHORTCUT_LIMIT_COUNT",
        "UN_REMOVABLE_SHORTCUT_LIST",
        "copy",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;",
        "other",
        "createDefaultShortcutBarData",
        "getShortcutType",
        "shortcutType",
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
        "SMAP\nShortcutBarData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutBarData.kt\ncom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n288#2,2:119\n*S KotlinDebug\n*F\n+ 1 ShortcutBarData.kt\ncom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion\n*L\n65#1:119,2\n*E\n"
    }
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final copy(Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;)Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "other"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final createDefaultShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->isInkBeautifyFeatureEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->access$getDEFAULT_RIGHT_SIDE_LIST$cp()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_REALTIME_BEAUTIFY:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getShortcutType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->access$getDEFAULT_LEFT_SIDE_LIST$cp()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->access$getDEFAULT_RIGHT_SIDE_LIST$cp()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->access$getDEFAULT_CANDIDATE_LIST$cp()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final getFILTER_READING_MOD_SHORTCUT_LIST()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->access$getFILTER_READING_MOD_SHORTCUT_LIST$cp()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getShortcutType(I)Lcom/onyx/galaxy/note/editor/data/ShortcutType;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getShortcutType()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    return-object v0
.end method
