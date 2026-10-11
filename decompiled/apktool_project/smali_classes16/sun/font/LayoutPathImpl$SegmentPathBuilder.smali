.class public final Lsun/font/LayoutPathImpl$SegmentPathBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/font/LayoutPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentPathBuilder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private a:D

.field private data:[D

.field private pconnect:Z

.field private px:D

.field private py:D

.field private w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nextPoint(DDZ)V
    .locals 6

    iget-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->px:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->py:D

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_6

    :cond_0
    iget v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->w:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    if-nez v0, :cond_1

    const/4 v0, 0x6

    new-array v0, v0, [D

    iput-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    :cond_1
    if-eqz p5, :cond_2

    const/4 v0, 0x3

    iput v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->w:I

    :cond_2
    iget v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->w:I

    if-eqz v0, :cond_3

    if-nez p5, :cond_3

    iget-boolean v1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->pconnect:Z

    if-nez v1, :cond_3

    iget-object p5, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    add-int/lit8 v1, v0, -0x3

    iput-wide p1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->px:D

    aput-wide p1, p5, v1

    add-int/lit8 v0, v0, -0x2

    iput-wide p3, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->py:D

    aput-wide p3, p5, v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    array-length v2, v1

    if-ne v0, v2, :cond_4

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    :cond_4
    if-eqz p5, :cond_5

    iget-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->px:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->py:D

    sub-double v2, p3, v2

    iget-wide v4, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->a:D

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v4, v0

    iput-wide v4, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->a:D

    :cond_5
    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    iget v1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->w:I

    add-int/lit8 v2, v1, 0x1

    aput-wide p1, v0, v1

    add-int/lit8 v1, v2, 0x1

    aput-wide p3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->w:I

    iget-wide v2, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->a:D

    aput-wide v2, v0, v1

    iput-wide p1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->px:D

    iput-wide p3, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->py:D

    iput-boolean p5, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->pconnect:Z

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs build(Lsun/font/LayoutPathImpl$EndType;[D)Lsun/font/LayoutPathImpl$SegmentPath;
    .locals 9

    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->reset(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-wide v4, p2, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v6, p2, v2

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    move v8, v2

    goto :goto_1

    :cond_0
    move v8, v0

    :goto_1
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->nextPoint(DDZ)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->complete(Lsun/font/LayoutPathImpl$EndType;)Lsun/font/LayoutPathImpl$SegmentPath;

    move-result-object p0

    return-object p0
.end method

.method public complete()Lsun/font/LayoutPathImpl$SegmentPath;
    .locals 1

    .line 1
    sget-object v0, Lsun/font/LayoutPathImpl$EndType;->EXTENDED:Lsun/font/LayoutPathImpl$EndType;

    invoke-virtual {p0, v0}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->complete(Lsun/font/LayoutPathImpl$EndType;)Lsun/font/LayoutPathImpl$SegmentPath;

    move-result-object p0

    return-object p0
.end method

.method public complete(Lsun/font/LayoutPathImpl$EndType;)Lsun/font/LayoutPathImpl$SegmentPath;
    .locals 4

    .line 2
    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    if-eqz v0, :cond_1

    iget v1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->w:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    new-instance v0, Lsun/font/LayoutPathImpl$SegmentPath;

    iget-object v1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    invoke-direct {v0, v1, p1}, Lsun/font/LayoutPathImpl$SegmentPath;-><init>([DLsun/font/LayoutPathImpl$EndType;)V

    .line 5
    invoke-virtual {p0, v3}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->reset(I)V

    goto :goto_0

    .line 6
    :cond_0
    new-array v2, v1, [D

    .line 7
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    new-instance v0, Lsun/font/LayoutPathImpl$SegmentPath;

    invoke-direct {v0, v2, p1}, Lsun/font/LayoutPathImpl$SegmentPath;-><init>([DLsun/font/LayoutPathImpl$EndType;)V

    const/4 p1, 0x2

    .line 9
    invoke-virtual {p0, p1}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->reset(I)V

    :goto_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public lineTo(DD)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->nextPoint(DDZ)V

    return-void
.end method

.method public moveTo(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->nextPoint(DDZ)V

    return-void
.end method

.method public reset(I)V
    .locals 2

    iget-object v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt p1, v0, :cond_0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    goto :goto_0

    :cond_0
    new-array p1, p1, [D

    iput-object p1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->data:[D

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->w:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->py:D

    iput-wide v0, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->px:D

    iput-boolean p1, p0, Lsun/font/LayoutPathImpl$SegmentPathBuilder;->pconnect:Z

    return-void
.end method
