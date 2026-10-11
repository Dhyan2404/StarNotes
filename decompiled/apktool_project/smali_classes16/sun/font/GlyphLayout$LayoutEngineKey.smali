.class public final Lsun/font/GlyphLayout$LayoutEngineKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/GlyphLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutEngineKey"
.end annotation


# instance fields
.field private font:Lsun/font/Font2D;

.field private lang:I

.field private script:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lsun/font/Font2D;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lsun/font/GlyphLayout$LayoutEngineKey;->init(Lsun/font/Font2D;II)V

    return-void
.end method


# virtual methods
.method public copy()Lsun/font/GlyphLayout$LayoutEngineKey;
    .locals 3

    new-instance v0, Lsun/font/GlyphLayout$LayoutEngineKey;

    iget-object v1, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->font:Lsun/font/Font2D;

    iget v2, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->script:I

    iget p0, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->lang:I

    invoke-direct {v0, v1, v2, p0}, Lsun/font/GlyphLayout$LayoutEngineKey;-><init>(Lsun/font/Font2D;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    :try_start_0
    check-cast p1, Lsun/font/GlyphLayout$LayoutEngineKey;

    iget v2, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->script:I

    iget v3, p1, Lsun/font/GlyphLayout$LayoutEngineKey;->script:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->lang:I

    iget v3, p1, Lsun/font/GlyphLayout$LayoutEngineKey;->lang:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->font:Lsun/font/Font2D;

    iget-object p1, p1, Lsun/font/GlyphLayout$LayoutEngineKey;->font:Lsun/font/Font2D;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :catch_0
    return v1
.end method

.method public font()Lsun/font/Font2D;
    .locals 0

    iget-object p0, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->font:Lsun/font/Font2D;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->script:I

    iget v1, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->lang:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->font:Lsun/font/Font2D;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public init(Lsun/font/Font2D;II)V
    .locals 0

    iput-object p1, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->font:Lsun/font/Font2D;

    iput p2, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->script:I

    iput p3, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->lang:I

    return-void
.end method

.method public lang()I
    .locals 0

    iget p0, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->lang:I

    return p0
.end method

.method public script()I
    .locals 0

    iget p0, p0, Lsun/font/GlyphLayout$LayoutEngineKey;->script:I

    return p0
.end method
