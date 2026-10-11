.class public final Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0005\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002R\u0014\u0010\u0008\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;",
        "",
        "",
        "getBytePerScreen",
        "screenSize",
        "bitmapCacheMaxByteCount",
        "a",
        "I",
        "BYTE_PER_PIXEL",
        "b",
        "DEFAULT_SCREEN_SIZE",
        "<init>",
        "()V",
        "sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:I = 0x4

.field public static final b:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;->INSTANCE:Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic bitmapCacheMaxByteCount$default(Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;->bitmapCacheMaxByteCount(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final bitmapCacheMaxByteCount(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/BitmapLruCacheConfig;->getBytePerScreen()I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method public final getBytePerScreen()I
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenArea()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method
