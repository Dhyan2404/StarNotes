.class public Lcom/onyx/galaxy/note/category/data/FilterInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/data/FilterInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0016\u0018\u0000 %2\u00020\u0001:\u0001%B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008R\u001e\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001c\"\u0004\u0008$\u0010\u001e\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "",
        "type",
        "",
        "uniqueId",
        "",
        "(ILjava/lang/String;)V",
        "title",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "count",
        "",
        "getCount",
        "()J",
        "setCount",
        "(J)V",
        "hasChild",
        "",
        "getHasChild",
        "()Z",
        "setHasChild",
        "(Z)V",
        "queryArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "getQueryArgs",
        "()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "setQueryArgs",
        "(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getUniqueId",
        "setUniqueId",
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


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/data/FilterInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FILTER_INFO_OPTION_KEY:Ljava/lang/String; = "filter_info_option_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_FILTER_DUMMY:I = 0x64

.field public static final TYPE_FILTER_FOOTER:I = 0x61

.field public static final TYPE_FILTER_HEADER:I = 0x62

.field public static final TYPE_FILTER_NOTE_ALL:I = 0x1

.field public static final TYPE_FILTER_NOTE_DUSTBIN:I = 0x8

.field public static final TYPE_FILTER_NOTE_FOLDER:I = 0x5

.field public static final TYPE_FILTER_NOTE_FOLDER_ROOT:I = 0x4

.field public static final TYPE_FILTER_NOTE_SET_NO_TAG:I = 0x3

.field public static final TYPE_FILTER_NOTE_SET_UN_CLASSFIED:I = 0x2

.field public static final TYPE_FILTER_NOTE_TAG:I = 0x7

.field public static final TYPE_FILTER_NOTE_TAG_ROOT:I = 0x6

.field public static final TYPE_FILTER_QUOTA:I = 0x60

.field public static final TYPE_FILTER_QUOTA_ALL_DOC:I = 0x5d

.field public static final TYPE_FILTER_QUOTA_ENABLE_DOC:I = 0x5f

.field public static final TYPE_FILTER_QUOTA_ENABLE_OR_DELETED_DOC:I = 0x5e

.field public static final TYPE_FILTER_SEARCH:I = 0x0

.field public static final TYPE_FILTER_SEPARATOR:I = 0x63


# instance fields
.field private count:J
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private hasChild:Z
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private queryArgs:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I

.field private uniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/data/FilterInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->Companion:Lcom/onyx/galaxy/note/category/data/FilterInfo$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uniqueId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->title:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->queryArgs:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    .line 4
    iput p1, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->type:I

    .line 5
    iput-object p2, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uniqueId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/category/data/FilterInfo;-><init>(ILjava/lang/String;)V

    .line 7
    iput-object p3, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ""

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/data/FilterInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->count:J

    return-wide v0
.end method

.method public final getHasChild()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->hasChild:Z

    return p0
.end method

.method public final getQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->queryArgs:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->type:I

    return p0
.end method

.method public final getUniqueId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->uniqueId:Ljava/lang/String;

    return-object p0
.end method

.method public final setCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->count:J

    return-void
.end method

.method public final setHasChild(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->hasChild:Z

    return-void
.end method

.method public final setQueryArgs(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->queryArgs:Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->type:I

    return-void
.end method

.method public final setUniqueId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;->uniqueId:Ljava/lang/String;

    return-void
.end method
