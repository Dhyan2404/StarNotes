.class public final Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
.super Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;",
        "Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;",
        "()V",
        "applyStyle",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "strokeWidth",
        "",
        "scale",
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


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DASH_LINE_1:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DASH_LINE_2:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DASH_LINE_3:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DASH_LINE_4:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DASH_LINE_5:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DASH_LINE_6:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->create([F)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_1:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->create([F)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_2:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->create([F)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object v1

    sput-object v1, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_3:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->create([F)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_4:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_4

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->create([F)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object v2

    sput-object v2, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_5:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    new-array v1, v1, [F

    fill-array-data v1, :array_5

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->create([F)Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_6:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    return-void

    :array_0
    .array-data 4
        0x41000000    # 8.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_1
    .array-data 4
        0x41a00000    # 20.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_2
    .array-data 4
        0x42200000    # 40.0f
        0x41700000    # 15.0f
    .end array-data

    :array_3
    .array-data 4
        0x41a00000    # 20.0f
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
    .end array-data

    :array_4
    .array-data 4
        0x41a00000    # 20.0f
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
    .end array-data

    :array_5
    .array-data 4
        0x42200000    # 40.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDASH_LINE_1$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_1:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    return-object v0
.end method

.method public static final synthetic access$getDASH_LINE_2$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_2:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    return-object v0
.end method

.method public static final synthetic access$getDASH_LINE_3$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_3:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    return-object v0
.end method

.method public static final synthetic access$getDASH_LINE_4$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_4:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    return-object v0
.end method

.method public static final synthetic access$getDASH_LINE_5$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_5:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    return-object v0
.end method

.method public static final synthetic access$getDASH_LINE_6$cp()Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->DASH_LINE_6:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;

    return-object v0
.end method


# virtual methods
.method public applyStyle(Landroid/graphics/Paint;FF)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle;->Companion:Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/onyx/android/sdk/replicator/note/data/line/DashLineStyle$Companion;->applyStyle(Lcom/onyx/android/sdk/replicator/note/data/line/LineStyle;Landroid/graphics/Paint;FF)V

    return-void
.end method
