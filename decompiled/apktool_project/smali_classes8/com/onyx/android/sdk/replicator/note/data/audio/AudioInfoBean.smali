.class public final Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAudioInfoBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioInfoBean.kt\ncom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1747#2,3:48\n*S KotlinDebug\n*F\n+ 1 AudioInfoBean.kt\ncom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean\n*L\n45#1:48,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB1\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0015\u001a\u00020\u0003H\u0007J\u0008\u0010\u0016\u001a\u00020\u0003H\u0007J\u0012\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0007J\u0016\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u001aH\u0007R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\n\"\u0004\u0008\u0014\u0010\u000c\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "",
        "title",
        "",
        "audioPath",
        "duration",
        "",
        "creationTime",
        "(Ljava/lang/String;Ljava/lang/String;JJ)V",
        "getAudioPath",
        "()Ljava/lang/String;",
        "setAudioPath",
        "(Ljava/lang/String;)V",
        "getCreationTime",
        "()J",
        "setCreationTime",
        "(J)V",
        "getDuration",
        "setDuration",
        "getTitle",
        "setTitle",
        "getCreationTimeFormatText",
        "getDurationFormatText",
        "isFileNameEqual",
        "",
        "audioPathList",
        "",
        "Companion",
        "sdk-replicator_overseasRelease"
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
        "SMAP\nAudioInfoBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioInfoBean.kt\ncom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1747#2,3:48\n*S KotlinDebug\n*F\n+ 1 AudioInfoBean.kt\ncom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean\n*L\n45#1:48,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private audioPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private creationTime:J

.field private duration:J

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->Companion:Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->audioPath:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->duration:J

    .line 6
    iput-wide p5, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->creationTime:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    const-wide/16 v0, 0x0

    if-eqz p8, :cond_2

    move-wide p3, v0

    :cond_2
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_3

    move-wide p5, v0

    .line 7
    :cond_3
    invoke-direct/range {p0 .. p6}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public final getAudioPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->audioPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->creationTime:J

    return-wide v0
.end method

.method public final getCreationTimeFormatText()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->creationTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->getDATE_FORMAT_YYYYMMDD_HHMM_2()Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDate(Ljava/util/Date;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->duration:J

    return-wide v0
.end method

.method public final getDurationFormatText()Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/DateTimeUtil;

    iget-wide v1, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->duration:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/onyx/android/sdk/base/utils/DateTimeUtil;->formatDurationSecondRoundUp$default(Lcom/onyx/android/sdk/base/utils/DateTimeUtil;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final isFileNameEqual(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->audioPath:Ljava/lang/String;

    invoke-static {p0}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isFileNameEqual(Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "audioPathList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p1, Ljava/lang/Iterable;

    .line 3
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->isFileNameEqual(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final setAudioPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->audioPath:Ljava/lang/String;

    return-void
.end method

.method public final setCreationTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->creationTime:J

    return-void
.end method

.method public final setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->duration:J

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;->title:Ljava/lang/String;

    return-void
.end method
