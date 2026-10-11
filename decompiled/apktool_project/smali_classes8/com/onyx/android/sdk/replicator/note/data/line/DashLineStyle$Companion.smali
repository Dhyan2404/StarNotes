.class public final Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018J\u0010\u0010\u001a\u001a\u00020\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0018\u0010\u001a\u001a\u00020\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u0018R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;",
        "",
        "()V",
        "DASH_LINE_1",
        "Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;",
        "getDASH_LINE_1",
        "()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;",
        "DASH_LINE_2",
        "getDASH_LINE_2",
        "DASH_LINE_3",
        "getDASH_LINE_3",
        "DASH_LINE_4",
        "getDASH_LINE_4",
        "DASH_LINE_5",
        "getDASH_LINE_5",
        "DASH_LINE_6",
        "getDASH_LINE_6",
        "applyStyle",
        "",
        "lineStyle",
        "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;",
        "paint",
        "Landroid/graphics/Paint;",
        "strokeWidth",
        "",
        "scale",
        "create",
        "dashLineIntervals",
        "",
        "phase",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyStyle(Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;Landroid/graphics/Paint;FF)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "lineStyle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->ensureIntervalsValid()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Landroid/graphics/DashPathEffect;

    invoke-virtual {p1, p3, p4}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->getIntervalsWithScale(FF)[F

    move-result-object p3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->getPhase()F

    move-result p1

    mul-float/2addr p1, p4

    invoke-direct {p0, p3, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public final create([F)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 1
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->create([FF)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object p0

    return-object p0
.end method

.method public final create([FF)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 0
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance p0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->setDashLineIntervals([F)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->setPhase(F)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;->setType(I)V

    return-object p0
.end method

.method public final getDASH_LINE_1()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->access$getDASH_LINE_1$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getDASH_LINE_2()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->access$getDASH_LINE_2$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getDASH_LINE_3()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->access$getDASH_LINE_3$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getDASH_LINE_4()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->access$getDASH_LINE_4$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getDASH_LINE_5()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->access$getDASH_LINE_5$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object p0

    return-object p0
.end method

.method public final getDASH_LINE_6()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->access$getDASH_LINE_6$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object p0

    return-object p0
.end method
