.class public Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BIT_SHIFT_16BITS:I = 0x4

.field public static final BIT_SHIFT_4BITS:I = 0x2

.field public static final BIT_SHIFT_8BITS:I = 0x3

.field public static final INDEX_SHIFT_16BITS:I = 0x1

.field public static final INDEX_SHIFT_4BITS:I = 0x3

.field public static final INDEX_SHIFT_8BITS:I = 0x2

.field public static final SHIFT_MASK_16BITS:I = 0x1

.field public static final SHIFT_MASK_4BITS:I = 0x7

.field public static final SHIFT_MASK_8BITS:I = 0x3

.field public static final UNIT_MASK_16BITS:I = 0xffff

.field public static final UNIT_MASK_4BITS:I = 0xf

.field public static final UNIT_MASK_8BITS:I = 0xff


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:[I


# direct methods
.method public constructor <init>(IIII[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->a:I

    iput p2, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->b:I

    iput p3, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->c:I

    iput p4, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->d:I

    invoke-virtual {p5}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->e:[I

    return-void
.end method

.method public static pack16bits(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static pack4bits(IIIIIIII)I
    .locals 0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x4

    or-int/2addr p1, p2

    shl-int/lit8 p2, p5, 0x4

    or-int/2addr p2, p4

    shl-int/lit8 p3, p7, 0x4

    or-int/2addr p3, p6

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack8bits(IIII)I

    move-result p0

    return p0
.end method

.method public static pack8bits(IIII)I
    .locals 0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x8

    or-int/2addr p1, p2

    invoke-static {p0, p1}, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->pack16bits(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public unpack(I)I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->e:[I

    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->a:I

    shr-int v1, p1, v1

    aget v0, v0, v1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->b:I

    and-int/2addr p1, v1

    iget v1, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->c:I

    shl-int/2addr p1, v1

    shr-int p1, v0, p1

    iget p0, p0, Lorg/mozilla/universalchardet/prober/statemachine/PkgInt;->d:I

    and-int/2addr p0, p1

    return p0
.end method
