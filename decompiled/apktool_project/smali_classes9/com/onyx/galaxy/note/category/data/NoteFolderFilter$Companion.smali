.class public final Lcom/onyx/galaxy/note/category/data/NoteFolderFilter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/data/NoteFolderFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/NoteFolderFilter$Companion;",
        "",
        "()V",
        "generateFolderFilterArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "uniqueId",
        "",
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/NoteFolderFilter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateFolderFilterArgs(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/settings/data/NoteConfigKt;->getCommonNoteArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const-string v1, "parentUniqueId"

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalOrNullExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    return-object p0
.end method
