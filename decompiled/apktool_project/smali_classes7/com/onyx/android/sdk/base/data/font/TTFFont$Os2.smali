.class public final Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/data/font/TTFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Os2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2$CodePageRange;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2;",
        "",
        "()V",
        "CODE_PAGE_RANGE_OFFSET",
        "",
        "supportChinese",
        "",
        "codePageRangeOne",
        "",
        "CodePageRange",
        "sdk-base_release"
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
.field public static final CODE_PAGE_RANGE_OFFSET:I = 0x4e

.field public static final INSTANCE:Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2;->INSTANCE:Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final supportChinese(J)Z
    .locals 4

    const-wide/32 v0, 0x20000

    and-long/2addr v0, p1

    const-wide/32 v2, 0x40000

    and-long/2addr v2, p1

    or-long/2addr v0, v2

    const-wide/32 v2, 0x100000

    and-long p0, p1, v2

    or-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
