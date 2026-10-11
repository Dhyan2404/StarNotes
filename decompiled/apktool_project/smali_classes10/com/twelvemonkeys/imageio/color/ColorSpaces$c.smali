.class public final Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/imageio/color/ColorSpaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;->a:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;->a:[B

    check-cast p1, Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;

    iget-object p1, p1, Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;->a:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/color/ColorSpaces$c;->a:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method
