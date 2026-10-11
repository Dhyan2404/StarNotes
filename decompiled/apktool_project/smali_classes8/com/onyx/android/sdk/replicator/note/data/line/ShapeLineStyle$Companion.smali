.class public final Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;",
        "",
        "()V",
        "parse",
        "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;",
        "jsonString",
        "",
        "parseLineStyle",
        "",
        "shapeLineStyle",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;-><init>()V

    return-void
.end method

.method private final parseLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;Ljava/lang/String;)V
    .locals 3

    const-class p0, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->uncapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle$Companion;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, p2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson2/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle$Companion;->parse(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle$Companion;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle$Companion;->parse(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;->setLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    :cond_2
    return-void
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v2, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    invoke-virtual {v0, p1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle$Companion;->parseLineStyle(Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;Ljava/lang/String;)V

    return-object v0
.end method
