.class public final Ljava/awt/AlphaComposite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/Composite;


# static fields
.field public static final CLEAR:I = 0x1

.field public static final Clear:Ljava/awt/AlphaComposite;

.field public static final DST:I = 0x9

.field public static final DST_ATOP:I = 0xb

.field public static final DST_IN:I = 0x6

.field public static final DST_OUT:I = 0x8

.field public static final DST_OVER:I = 0x4

.field public static final Dst:Ljava/awt/AlphaComposite;

.field public static final DstAtop:Ljava/awt/AlphaComposite;

.field public static final DstIn:Ljava/awt/AlphaComposite;

.field public static final DstOut:Ljava/awt/AlphaComposite;

.field public static final DstOver:Ljava/awt/AlphaComposite;

.field private static final MAX_RULE:I = 0xc

.field private static final MIN_RULE:I = 0x1

.field public static final SRC:I = 0x2

.field public static final SRC_ATOP:I = 0xa

.field public static final SRC_IN:I = 0x5

.field public static final SRC_OUT:I = 0x7

.field public static final SRC_OVER:I = 0x3

.field public static final Src:Ljava/awt/AlphaComposite;

.field public static final SrcAtop:Ljava/awt/AlphaComposite;

.field public static final SrcIn:Ljava/awt/AlphaComposite;

.field public static final SrcOut:Ljava/awt/AlphaComposite;

.field public static final SrcOver:Ljava/awt/AlphaComposite;

.field public static final XOR:I = 0xc

.field public static final Xor:Ljava/awt/AlphaComposite;


# instance fields
.field extraAlpha:F

.field rule:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/awt/AlphaComposite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->Dst:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->DstOver:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->SrcIn:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->DstIn:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->SrcOut:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->DstOut:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->SrcAtop:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->DstAtop:Ljava/awt/AlphaComposite;

    new-instance v0, Ljava/awt/AlphaComposite;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Ljava/awt/AlphaComposite;->Xor:Ljava/awt/AlphaComposite;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, p1, v0}, Ljava/awt/AlphaComposite;-><init>(IF)V

    return-void
.end method

.method private constructor <init>(IF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xc

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 3
    iput p1, p0, Ljava/awt/AlphaComposite;->rule:I

    .line 4
    iput p2, p0, Ljava/awt/AlphaComposite;->extraAlpha:F

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha value out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown composite rule"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(I)Ljava/awt/AlphaComposite;
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown composite rule"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    sget-object p0, Ljava/awt/AlphaComposite;->Xor:Ljava/awt/AlphaComposite;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Ljava/awt/AlphaComposite;->DstAtop:Ljava/awt/AlphaComposite;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Ljava/awt/AlphaComposite;->SrcAtop:Ljava/awt/AlphaComposite;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Ljava/awt/AlphaComposite;->Dst:Ljava/awt/AlphaComposite;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Ljava/awt/AlphaComposite;->DstOut:Ljava/awt/AlphaComposite;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Ljava/awt/AlphaComposite;->SrcOut:Ljava/awt/AlphaComposite;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Ljava/awt/AlphaComposite;->DstIn:Ljava/awt/AlphaComposite;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Ljava/awt/AlphaComposite;->SrcIn:Ljava/awt/AlphaComposite;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Ljava/awt/AlphaComposite;->DstOver:Ljava/awt/AlphaComposite;

    return-object p0

    .line 11
    :pswitch_9
    sget-object p0, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    return-object p0

    .line 12
    :pswitch_a
    sget-object p0, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    return-object p0

    .line 13
    :pswitch_b
    sget-object p0, Ljava/awt/AlphaComposite;->Clear:Ljava/awt/AlphaComposite;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(IF)Ljava/awt/AlphaComposite;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 14
    invoke-static {p0}, Ljava/awt/AlphaComposite;->getInstance(I)Ljava/awt/AlphaComposite;

    move-result-object p0

    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/awt/AlphaComposite;

    invoke-direct {v0, p0, p1}, Ljava/awt/AlphaComposite;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;Ljava/awt/RenderingHints;)Ljava/awt/CompositeContext;
    .locals 0

    new-instance p3, Lsun/java2d/SunCompositeContext;

    invoke-direct {p3, p0, p1, p2}, Lsun/java2d/SunCompositeContext;-><init>(Ljava/awt/AlphaComposite;Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V

    return-object p3
.end method

.method public derive(F)Ljava/awt/AlphaComposite;
    .locals 1

    .line 3
    iget v0, p0, Ljava/awt/AlphaComposite;->extraAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Ljava/awt/AlphaComposite;->rule:I

    .line 4
    invoke-static {p0, p1}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public derive(I)Ljava/awt/AlphaComposite;
    .locals 1

    .line 1
    iget v0, p0, Ljava/awt/AlphaComposite;->rule:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Ljava/awt/AlphaComposite;->extraAlpha:F

    .line 2
    invoke-static {p1, p0}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/awt/AlphaComposite;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/awt/AlphaComposite;

    iget v0, p0, Ljava/awt/AlphaComposite;->rule:I

    iget v2, p1, Ljava/awt/AlphaComposite;->rule:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget p0, p0, Ljava/awt/AlphaComposite;->extraAlpha:F

    iget p1, p1, Ljava/awt/AlphaComposite;->extraAlpha:F

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public getAlpha()F
    .locals 0

    iget p0, p0, Ljava/awt/AlphaComposite;->extraAlpha:F

    return p0
.end method

.method public getRule()I
    .locals 0

    iget p0, p0, Ljava/awt/AlphaComposite;->rule:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/awt/AlphaComposite;->extraAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Ljava/awt/AlphaComposite;->rule:I

    add-int/2addr v0, p0

    return v0
.end method
