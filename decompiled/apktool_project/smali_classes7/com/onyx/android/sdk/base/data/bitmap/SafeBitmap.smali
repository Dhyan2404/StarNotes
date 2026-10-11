.class public final Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\u0000J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0000J\u0006\u0010\r\u001a\u00020\u000bJ\u0006\u0010\u000e\u001a\u00020\u000fR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;",
        "",
        "()V",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "copyBitmap",
        "equal",
        "",
        "another",
        "isValid",
        "removeBitmap",
        "",
        "Companion",
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
.field public static final Companion:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->Companion:Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final copyBitmap()Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->copy(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final equal(Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "another"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/BitmapKt;->isValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public final removeBitmap()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/base/data/bitmap/SafeBitmap;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
