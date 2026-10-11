.class public Lcom/onyx/android/sdk/matisse/GifSizeFilter;
.super Lcom/onyx/android/sdk/matisse/filter/Filter;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/android/sdk/matisse/filter/Filter;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/matisse/GifSizeFilter;->a:I

    iput p2, p0, Lcom/onyx/android/sdk/matisse/GifSizeFilter;->b:I

    iput p3, p0, Lcom/onyx/android/sdk/matisse/GifSizeFilter;->c:I

    return-void
.end method


# virtual methods
.method public constraintTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/matisse/MimeType;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/matisse/GifSizeFilter$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/matisse/GifSizeFilter$1;-><init>(Lcom/onyx/android/sdk/matisse/GifSizeFilter;)V

    return-object v0
.end method

.method public filter(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/matisse/filter/Filter;->needFiltering(Landroid/content/Context;Lcom/onyx/android/sdk/matisse/internal/entity/Item;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/matisse/internal/utils/PhotoMetadataUtils;->getBitmapBound(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/onyx/android/sdk/matisse/GifSizeFilter;->a:I

    if-lt v0, v2, :cond_2

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget v0, p0, Lcom/onyx/android/sdk/matisse/GifSizeFilter;->b:I

    if-lt p1, v0, :cond_2

    iget-wide p1, p2, Lcom/onyx/android/sdk/matisse/internal/entity/Item;->size:J

    iget p0, p0, Lcom/onyx/android/sdk/matisse/GifSizeFilter;->c:I

    int-to-long v2, p0

    cmp-long p0, p1, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;

    const/4 p1, 0x1

    const-string p2, "error"

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/matisse/internal/entity/IncapableCause;-><init>(ILjava/lang/String;)V

    return-object p0
.end method
