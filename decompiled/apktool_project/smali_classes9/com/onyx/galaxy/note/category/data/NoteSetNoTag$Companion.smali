.class public final Lcom/onyx/galaxy/note/category/data/NoteSetNoTag$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/data/NoteSetNoTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/NoteSetNoTag$Companion;",
        "",
        "()V",
        "NOTE_SET_NO_TAG_ID",
        "",
        "info",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "getInfo",
        "()Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "noTagFilterArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "getNoTagFilterArgs",
        "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "noTagFilterArgs$delegate",
        "Lkotlin/Lazy;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/NoteSetNoTag$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNoTagFilterArgs(Lcom/onyx/galaxy/note/category/data/NoteSetNoTag$Companion;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/NoteSetNoTag$Companion;->getNoTagFilterArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method

.method private final getNoTagFilterArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/NoteSetNoTag;->access$getNoTagFilterArgs$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method


# virtual methods
.method public final getInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/data/NoteSetNoTag;->access$getInfo$cp()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    return-object p0
.end method
