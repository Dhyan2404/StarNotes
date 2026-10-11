.class public Lcom/onyx/harfbuzz/graphics/GlyphCache$c;
.super Lcom/onyx/harfbuzz/utils/LruCache$Segment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/harfbuzz/graphics/GlyphCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/harfbuzz/utils/LruCache$Segment<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:I = 0x34


# direct methods
.method public constructor <init>(Lcom/onyx/harfbuzz/utils/LruCache;)V
    .locals 0
    .param p1    # Lcom/onyx/harfbuzz/utils/LruCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/harfbuzz/utils/LruCache<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/onyx/harfbuzz/utils/LruCache$Segment;-><init>(Lcom/onyx/harfbuzz/utils/LruCache;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/onyx/harfbuzz/graphics/GlyphImage;

    invoke-virtual {p2}, Lcom/onyx/harfbuzz/graphics/GlyphImage;->bitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/harfbuzz/graphics/GlyphCache;->e(Landroid/graphics/Bitmap;)I

    move-result p0

    add-int/lit8 p0, p0, 0x34

    return p0
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/harfbuzz/graphics/GlyphCache$c;->a(Ljava/lang/Integer;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
