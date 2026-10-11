.class public final Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$Companion;,
        Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0005H\u0002J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0003J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0005H\u0007J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0005H\u0003R>\u0010\u0003\u001a&\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0004j\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u0001`\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\r8G\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0014\u001a\u00020\r8G\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;",
        "Ljava/io/Serializable;",
        "()V",
        "data",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;",
        "Lkotlin/collections/LinkedHashMap;",
        "getData",
        "()Ljava/util/LinkedHashMap;",
        "setData",
        "(Ljava/util/LinkedHashMap;)V",
        "total",
        "",
        "getTotal",
        "()J",
        "setTotal",
        "(J)V",
        "totalSize",
        "getTotalSize",
        "usedSize",
        "getUsedSize",
        "getDataBeanData",
        "key",
        "getName",
        "getSize",
        "hasType",
        "",
        "Companion",
        "DataBean",
        "sdk-data_release"
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
.field public static final Companion:Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_FREE:Ljava/lang/String; = "left"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private data:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private total:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->Companion:Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->total:J

    return-void
.end method

.method private final getDataBeanData(Ljava/lang/String;)J
    .locals 1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->data:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;->getData()J

    move-result-wide p0

    return-wide p0
.end method

.method private final getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->hasType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->data:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final hasType(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->data:Ljava/util/LinkedHashMap;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getData()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->data:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public final getSize(Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->data:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->getDataBeanData(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->total:J

    return-wide v0
.end method

.method public final getTotalSize()J
    .locals 6
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->total:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->total:J

    iget-object v0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->data:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->hasType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->total:J

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->getDataBeanData(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->total:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->total:J

    return-wide v0
.end method

.method public final getUsedSize()J
    .locals 4
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->getTotalSize()J

    move-result-wide v0

    const-string v2, "left"

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->getSize(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final setData(Ljava/util/LinkedHashMap;)V
    .locals 0
    .param p1    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean$DataBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->data:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public final setTotal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/android/sdk/data/common/data/CloudStorageStatusBean;->total:J

    return-void
.end method
