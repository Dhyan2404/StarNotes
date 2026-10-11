.class public final Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle$Companion;",
        "",
        "()V",
        "applyStyle",
        "",
        "lineStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;",
        "paint",
        "Landroid/graphics/Paint;",
        "strokeWidth",
        "",
        "scale",
        "parse",
        "jsonString",
        "",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyStyle(Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;Landroid/graphics/Paint;FF)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "paint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->getType()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->applyStyle(Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->applyStyle(Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;Landroid/graphics/Paint;FF)V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle$Companion;->getINSTANCE()Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;->applyStyle(Landroid/graphics/Paint;FF)V

    :goto_0
    return-void
.end method

.method public final parse(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v1, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const-class v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    goto :goto_0

    :cond_3
    const-class v0, Lcom/onyx/android/sdk/replicator/note/data/line/StraightLineStyle;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;

    :goto_0
    return-object v1
.end method
