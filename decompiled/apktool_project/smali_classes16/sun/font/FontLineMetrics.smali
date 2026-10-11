.class public final Lsun/font/FontLineMetrics;
.super Ljava/awt/font/LineMetrics;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final cm:Lsun/font/CoreMetrics;

.field public final frc:Ljava/awt/font/FontRenderContext;

.field public numchars:I


# direct methods
.method public constructor <init>(ILsun/font/CoreMetrics;Ljava/awt/font/FontRenderContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/awt/font/LineMetrics;-><init>()V

    iput p1, p0, Lsun/font/FontLineMetrics;->numchars:I

    iput-object p2, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iput-object p3, p0, Lsun/font/FontLineMetrics;->frc:Ljava/awt/font/FontRenderContext;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/awt/InternalError;

    invoke-direct {v0, p0}, Ljava/awt/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    check-cast p1, Lsun/font/FontLineMetrics;

    iget-object p1, p1, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    invoke-virtual {p0, p1}, Lsun/font/CoreMetrics;->equals(Lsun/font/CoreMetrics;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAscent()F
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget p0, p0, Lsun/font/CoreMetrics;->ascent:F

    return p0
.end method

.method public final getBaselineIndex()I
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget p0, p0, Lsun/font/CoreMetrics;->baselineIndex:I

    return p0
.end method

.method public final getBaselineOffsets()[F
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget-object p0, p0, Lsun/font/CoreMetrics;->baselineOffsets:[F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0
.end method

.method public final getDescent()F
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget p0, p0, Lsun/font/CoreMetrics;->descent:F

    return p0
.end method

.method public final getHeight()F
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget p0, p0, Lsun/font/CoreMetrics;->height:F

    return p0
.end method

.method public final getLeading()F
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget p0, p0, Lsun/font/CoreMetrics;->leading:F

    return p0
.end method

.method public final getNumChars()I
    .locals 0

    iget p0, p0, Lsun/font/FontLineMetrics;->numchars:I

    return p0
.end method

.method public final getStrikethroughOffset()F
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget p0, p0, Lsun/font/CoreMetrics;->strikethroughOffset:F

    return p0
.end method

.method public final getStrikethroughThickness()F
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget p0, p0, Lsun/font/CoreMetrics;->strikethroughThickness:F

    return p0
.end method

.method public final getUnderlineOffset()F
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget p0, p0, Lsun/font/CoreMetrics;->underlineOffset:F

    return p0
.end method

.method public final getUnderlineThickness()F
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    iget p0, p0, Lsun/font/CoreMetrics;->underlineThickness:F

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lsun/font/FontLineMetrics;->cm:Lsun/font/CoreMetrics;

    invoke-virtual {p0}, Lsun/font/CoreMetrics;->hashCode()I

    move-result p0

    return p0
.end method
