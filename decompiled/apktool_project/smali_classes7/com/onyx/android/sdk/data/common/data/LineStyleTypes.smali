.class public final Lcom/onyx/android/sdk/data/common/data/LineStyleTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/common/data/LineStyleTypes;",
        "",
        "()V",
        "DASH",
        "",
        "DOT",
        "SOLID",
        "getDashIntervalsArray",
        "",
        "style",
        "base",
        "",
        "strokeWidth",
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
.field public static final DASH:I = 0x1

.field public static final DOT:I = 0x2

.field public static final INSTANCE:Lcom/onyx/android/sdk/data/common/data/LineStyleTypes;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SOLID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/LineStyleTypes;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/LineStyleTypes;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/common/data/LineStyleTypes;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/LineStyleTypes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDashIntervalsArray(IFF)[F
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-array p1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v2, p2

    sub-float/2addr v2, p3

    aput v2, p1, p0

    int-to-float p0, v1

    mul-float/2addr p2, p0

    add-float/2addr p2, p3

    aput p2, p1, v0

    goto :goto_0

    :cond_1
    new-array p1, v1, [F

    const/4 v2, 0x4

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float/2addr v2, p3

    aput v2, p1, p0

    int-to-float p0, v1

    mul-float/2addr p2, p0

    add-float/2addr p2, p3

    aput p2, p1, v0

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method
