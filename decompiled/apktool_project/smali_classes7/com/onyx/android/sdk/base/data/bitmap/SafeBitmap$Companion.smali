.class public final Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;",
        "",
        "()V",
        "create",
        "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/graphics/Bitmap;)Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method
