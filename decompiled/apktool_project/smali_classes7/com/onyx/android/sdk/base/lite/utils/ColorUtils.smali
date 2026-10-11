.class public final Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;",
        "",
        "()V",
        "invertColor",
        "",
        "color",
        "replaceAlphaWithBitwise",
        "colorInt",
        "alpha",
        "sdk-baselite_release"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invertColor(I)I
    .locals 2

    const/high16 p0, -0x1000000

    and-int/2addr p0, p1

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    rsub-int v0, v0, 0xff

    rsub-int v1, v1, 0xff

    rsub-int p1, p1, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public final replaceAlphaWithBitwise(II)I
    .locals 1

    const/4 p0, 0x0

    const/16 v0, 0xff

    invoke-static {p2, p0, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p0

    const p2, 0xffffff

    and-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method
