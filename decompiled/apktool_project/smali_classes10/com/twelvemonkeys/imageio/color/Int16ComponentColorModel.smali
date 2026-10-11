.class public final Lcom/twelvemonkeys/imageio/color/Int16ComponentColorModel;
.super Ljava/awt/image/ComponentColorModel;
.source "SourceFile"


# instance fields
.field public final e:Ljava/awt/image/ComponentColorModel;


# direct methods
.method public constructor <init>(Ljava/awt/color/ColorSpace;ZZ)V
    .locals 9

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz p2, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    new-instance v8, Ljava/awt/image/ComponentColorModel;

    if-eqz p2, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    const/4 v5, 0x1

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;ZZII)V

    iput-object v8, p0, Lcom/twelvemonkeys/imageio/color/Int16ComponentColorModel;->e:Ljava/awt/image/ComponentColorModel;

    return-void
.end method


# virtual methods
.method public final a([SI)V
    .locals 1

    aget-short p0, p1, p2

    const/16 v0, -0x8000

    if-gez p0, :cond_0

    sub-int/2addr p0, v0

    int-to-short p0, p0

    aput-short p0, p1, p2

    goto :goto_0

    :cond_0
    add-int/2addr p0, v0

    int-to-short p0, p0

    aput-short p0, p1, p2

    :goto_0
    return-void
.end method

.method public getBlue(Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, [S

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/color/Int16ComponentColorModel;->a([SI)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/color/Int16ComponentColorModel;->e:Ljava/awt/image/ComponentColorModel;

    invoke-virtual {p0, p1}, Ljava/awt/image/ComponentColorModel;->getBlue(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getGreen(Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, [S

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/color/Int16ComponentColorModel;->a([SI)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/color/Int16ComponentColorModel;->e:Ljava/awt/image/ComponentColorModel;

    invoke-virtual {p0, p1}, Ljava/awt/image/ComponentColorModel;->getGreen(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getRed(Ljava/lang/Object;)I
    .locals 2

    move-object v0, p1

    check-cast v0, [S

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/color/Int16ComponentColorModel;->a([SI)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/color/Int16ComponentColorModel;->e:Ljava/awt/image/ComponentColorModel;

    invoke-virtual {p0, p1}, Ljava/awt/image/ComponentColorModel;->getRed(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
