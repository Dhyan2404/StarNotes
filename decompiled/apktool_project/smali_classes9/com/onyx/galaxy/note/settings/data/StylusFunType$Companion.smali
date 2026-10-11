.class public final Lcom/onyx/galaxy/note/settings/data/StylusFunType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/settings/data/StylusFunType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStylusFunType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StylusFunType.kt\ncom/onyx/galaxy/note/settings/data/StylusFunType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,41:1\n3792#2:42\n4307#2,2:43\n*S KotlinDebug\n*F\n+ 1 StylusFunType.kt\ncom/onyx/galaxy/note/settings/data/StylusFunType$Companion\n*L\n22#1:42\n22#1:43,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/data/StylusFunType$Companion;",
        "",
        "()V",
        "getLongPressList",
        "",
        "Lcom/onyx/galaxy/note/settings/data/StylusFunType;",
        "getStylusList",
        "getSwitchList",
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
        "SMAP\nStylusFunType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StylusFunType.kt\ncom/onyx/galaxy/note/settings/data/StylusFunType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,41:1\n3792#2:42\n4307#2,2:43\n*S KotlinDebug\n*F\n+ 1 StylusFunType.kt\ncom/onyx/galaxy/note/settings/data/StylusFunType$Companion\n*L\n22#1:42\n22#1:43,2\n*E\n"
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/settings/data/StylusFunType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLongPressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/settings/data/StylusFunType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->CLOSE:Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->SWITCH_ERASER:Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    filled-new-array {p0, v0}, [Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getStylusList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/settings/data/StylusFunType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->values()[Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->getType()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSwitchList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/settings/data/StylusFunType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->CLOSE:Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->SWITCH_ERASER:Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->SWITCH_PEN_BRUSH:Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->SWITCH_TAPE_PEN:Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    sget-object v4, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->SWITCH_LAST_TOOL:Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    sget-object v5, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->SWITCH_COLOR:Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    sget-object v6, Lcom/onyx/galaxy/note/settings/data/StylusFunType;->SWITCH_LASSO:Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    filled-new-array/range {v0 .. v6}, [Lcom/onyx/galaxy/note/settings/data/StylusFunType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
