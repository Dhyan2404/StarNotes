.class public final Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteConfig.kt\ncom/onyx/galaxy/note/settings/data/NoteSelectTypeOption\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,289:1\n37#2,2:290\n11065#3:292\n11400#3,3:293\n*S KotlinDebug\n*F\n+ 1 NoteConfig.kt\ncom/onyx/galaxy/note/settings/data/NoteSelectTypeOption\n*L\n84#1:290,2\n84#1:292\n84#1:293,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0002R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;",
        "",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "get",
        "value",
        "",
        "put",
        "",
        "a",
        "Ljava/lang/String;",
        "getKey",
        "()Ljava/lang/String;",
        "key",
        "Lcom/tencent/mmkv/MMKV;",
        "b",
        "Lcom/tencent/mmkv/MMKV;",
        "parent",
        "c",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "defaultValue",
        "<init>",
        "(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V",
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
        "SMAP\nNoteConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteConfig.kt\ncom/onyx/galaxy/note/settings/data/NoteSelectTypeOption\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,289:1\n37#2,2:290\n11065#3:292\n11400#3,3:293\n*S KotlinDebug\n*F\n+ 1 NoteConfig.kt\ncom/onyx/galaxy/note/settings/data/NoteSelectTypeOption\n*L\n84#1:290,2\n84#1:292\n84#1:293,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/tencent/mmkv/MMKV;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/galaxy/note/category/data/NoteSelectType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;-><init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/galaxy/note/category/data/NoteSelectType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/mmkv/MMKV;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/galaxy/note/category/data/NoteSelectType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->b:Lcom/tencent/mmkv/MMKV;

    .line 5
    iput-object p3, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->c:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/galaxy/note/category/data/NoteSelectType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-string p1, "note_list_select_type"

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 6
    sget-object p2, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 7
    sget-object p3, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;-><init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    return-void
.end method


# virtual methods
.method public final get()Lcom/onyx/galaxy/note/category/data/NoteSelectType;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->b:Lcom/tencent/mmkv/MMKV;

    iget-object v1, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->c:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v1, v2

    check-cast v5, Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->valueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->c:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final put(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/NoteSelectType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->b:Lcom/tencent/mmkv/MMKV;

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
