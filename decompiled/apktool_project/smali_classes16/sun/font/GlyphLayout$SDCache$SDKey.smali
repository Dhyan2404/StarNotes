.class final Lsun/font/GlyphLayout$SDCache$SDKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/GlyphLayout$SDCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SDKey"
.end annotation


# instance fields
.field private final font:Ljava/awt/Font;

.field private final frc:Ljava/awt/font/FontRenderContext;

.field private final hash:I


# direct methods
.method public constructor <init>(Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/font/GlyphLayout$SDCache$SDKey;->font:Ljava/awt/Font;

    iput-object p2, p0, Lsun/font/GlyphLayout$SDCache$SDKey;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p1}, Ljava/awt/Font;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/awt/font/FontRenderContext;->hashCode()I

    move-result p2

    xor-int/2addr p1, p2

    iput p1, p0, Lsun/font/GlyphLayout$SDCache$SDKey;->hash:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Lsun/font/GlyphLayout$SDCache$SDKey;

    iget v1, p0, Lsun/font/GlyphLayout$SDCache$SDKey;->hash:I

    iget v2, p1, Lsun/font/GlyphLayout$SDCache$SDKey;->hash:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lsun/font/GlyphLayout$SDCache$SDKey;->font:Ljava/awt/Font;

    iget-object v2, p1, Lsun/font/GlyphLayout$SDCache$SDKey;->font:Ljava/awt/Font;

    invoke-virtual {v1, v2}, Ljava/awt/Font;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lsun/font/GlyphLayout$SDCache$SDKey;->frc:Ljava/awt/font/FontRenderContext;

    iget-object p1, p1, Lsun/font/GlyphLayout$SDCache$SDKey;->frc:Ljava/awt/font/FontRenderContext;

    invoke-virtual {p0, p1}, Ljava/awt/font/FontRenderContext;->equals(Ljava/awt/font/FontRenderContext;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lsun/font/GlyphLayout$SDCache$SDKey;->hash:I

    return p0
.end method
