.class public Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:[I

.field public final b:[I

.field public c:I

.field public final synthetic d:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->d:Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array v0, p1, [I

    .line 2
    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->a:[I

    new-array p1, p1, [I

    .line 3
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->b:[I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;-><init>(Lorg/apache/commons/compress/harmony/pack200/SegmentHeader;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->c:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->a:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->b:[I

    aget v3, v2, v1

    add-int/2addr v3, v4

    aput v3, v2, v1

    move v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->a:[I

    aput p1, v1, v3

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->b:[I

    aput v4, p1, v3

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->c:I

    array-length p0, v1

    sub-int/2addr p0, v4

    if-le v3, p0, :cond_2

    array-length p0, v1

    add-int/lit8 p0, p0, 0x8

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v1, v0, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->c:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->b:[I

    aget v3, v2, v0

    aget v2, v2, v1

    if-le v3, v2, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/SegmentHeader$b;->a:[I

    aget p0, p0, v1

    return p0
.end method
