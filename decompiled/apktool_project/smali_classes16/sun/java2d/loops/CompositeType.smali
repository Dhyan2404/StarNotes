.class public final Lsun/java2d/loops/CompositeType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AlphaXor:Lsun/java2d/loops/CompositeType;

.field public static final Any:Lsun/java2d/loops/CompositeType;

.field public static final AnyAlpha:Lsun/java2d/loops/CompositeType;

.field public static final Clear:Lsun/java2d/loops/CompositeType;

.field public static final DESC_ALPHA_XOR:Ljava/lang/String; = "Porter-Duff Xor"

.field public static final DESC_ANY:Ljava/lang/String; = "Any CompositeContext"

.field public static final DESC_ANY_ALPHA:Ljava/lang/String; = "Any AlphaComposite Rule"

.field public static final DESC_CLEAR:Ljava/lang/String; = "Porter-Duff Clear"

.field public static final DESC_DST:Ljava/lang/String; = "Porter-Duff Dst"

.field public static final DESC_DST_ATOP:Ljava/lang/String; = "Porter-Duff Dst Atop Src"

.field public static final DESC_DST_IN:Ljava/lang/String; = "Porter-Duff Dst In Src"

.field public static final DESC_DST_OUT:Ljava/lang/String; = "Porter-Duff Dst HeldOutBy Src"

.field public static final DESC_DST_OVER:Ljava/lang/String; = "Porter-Duff Dst Over Src"

.field public static final DESC_SRC:Ljava/lang/String; = "Porter-Duff Src"

.field public static final DESC_SRC_ATOP:Ljava/lang/String; = "Porter-Duff Src Atop Dst"

.field public static final DESC_SRC_IN:Ljava/lang/String; = "Porter-Duff Src In Dst"

.field public static final DESC_SRC_NO_EA:Ljava/lang/String; = "Porter-Duff Src, No Extra Alpha"

.field public static final DESC_SRC_OUT:Ljava/lang/String; = "Porter-Duff Src HeldOutBy Dst"

.field public static final DESC_SRC_OVER:Ljava/lang/String; = "Porter-Duff Src Over Dst"

.field public static final DESC_SRC_OVER_NO_EA:Ljava/lang/String; = "Porter-Duff SrcOverDst, No Extra Alpha"

.field public static final DESC_XOR:Ljava/lang/String; = "XOR mode"

.field public static final Dst:Lsun/java2d/loops/CompositeType;

.field public static final DstAtop:Lsun/java2d/loops/CompositeType;

.field public static final DstIn:Lsun/java2d/loops/CompositeType;

.field public static final DstOut:Lsun/java2d/loops/CompositeType;

.field public static final DstOver:Lsun/java2d/loops/CompositeType;

.field public static final General:Lsun/java2d/loops/CompositeType;

.field public static final OpaqueSrcOverNoEa:Lsun/java2d/loops/CompositeType;

.field public static final Src:Lsun/java2d/loops/CompositeType;

.field public static final SrcAtop:Lsun/java2d/loops/CompositeType;

.field public static final SrcIn:Lsun/java2d/loops/CompositeType;

.field public static final SrcNoEa:Lsun/java2d/loops/CompositeType;

.field public static final SrcOut:Lsun/java2d/loops/CompositeType;

.field public static final SrcOver:Lsun/java2d/loops/CompositeType;

.field public static final SrcOverNoEa:Lsun/java2d/loops/CompositeType;

.field public static final Xor:Lsun/java2d/loops/CompositeType;

.field private static final compositeUIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static unusedUID:I = 0x1


# instance fields
.field private desc:Ljava/lang/String;

.field private next:Lsun/java2d/loops/CompositeType;

.field private uniqueID:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lsun/java2d/loops/CompositeType;->compositeUIDMap:Ljava/util/HashMap;

    new-instance v0, Lsun/java2d/loops/CompositeType;

    const/4 v1, 0x0

    const-string v2, "Any CompositeContext"

    invoke-direct {v0, v1, v2}, Lsun/java2d/loops/CompositeType;-><init>(Lsun/java2d/loops/CompositeType;Ljava/lang/String;)V

    sput-object v0, Lsun/java2d/loops/CompositeType;->Any:Lsun/java2d/loops/CompositeType;

    sput-object v0, Lsun/java2d/loops/CompositeType;->General:Lsun/java2d/loops/CompositeType;

    const-string v1, "Any AlphaComposite Rule"

    invoke-virtual {v0, v1}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v1

    sput-object v1, Lsun/java2d/loops/CompositeType;->AnyAlpha:Lsun/java2d/loops/CompositeType;

    const-string v2, "XOR mode"

    invoke-virtual {v0, v2}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v0

    sput-object v0, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    const-string v0, "Porter-Duff Clear"

    invoke-virtual {v1, v0}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v0

    sput-object v0, Lsun/java2d/loops/CompositeType;->Clear:Lsun/java2d/loops/CompositeType;

    const-string v0, "Porter-Duff Src"

    invoke-virtual {v1, v0}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v2

    sput-object v2, Lsun/java2d/loops/CompositeType;->Src:Lsun/java2d/loops/CompositeType;

    const-string v3, "Porter-Duff Dst"

    invoke-virtual {v1, v3}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v3

    sput-object v3, Lsun/java2d/loops/CompositeType;->Dst:Lsun/java2d/loops/CompositeType;

    const-string v3, "Porter-Duff Src Over Dst"

    invoke-virtual {v1, v3}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v3

    sput-object v3, Lsun/java2d/loops/CompositeType;->SrcOver:Lsun/java2d/loops/CompositeType;

    const-string v4, "Porter-Duff Dst Over Src"

    invoke-virtual {v1, v4}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v4

    sput-object v4, Lsun/java2d/loops/CompositeType;->DstOver:Lsun/java2d/loops/CompositeType;

    const-string v4, "Porter-Duff Src In Dst"

    invoke-virtual {v1, v4}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v4

    sput-object v4, Lsun/java2d/loops/CompositeType;->SrcIn:Lsun/java2d/loops/CompositeType;

    const-string v4, "Porter-Duff Dst In Src"

    invoke-virtual {v1, v4}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v4

    sput-object v4, Lsun/java2d/loops/CompositeType;->DstIn:Lsun/java2d/loops/CompositeType;

    const-string v4, "Porter-Duff Src HeldOutBy Dst"

    invoke-virtual {v1, v4}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v4

    sput-object v4, Lsun/java2d/loops/CompositeType;->SrcOut:Lsun/java2d/loops/CompositeType;

    const-string v4, "Porter-Duff Dst HeldOutBy Src"

    invoke-virtual {v1, v4}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v4

    sput-object v4, Lsun/java2d/loops/CompositeType;->DstOut:Lsun/java2d/loops/CompositeType;

    const-string v4, "Porter-Duff Src Atop Dst"

    invoke-virtual {v1, v4}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v4

    sput-object v4, Lsun/java2d/loops/CompositeType;->SrcAtop:Lsun/java2d/loops/CompositeType;

    const-string v4, "Porter-Duff Dst Atop Src"

    invoke-virtual {v1, v4}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v4

    sput-object v4, Lsun/java2d/loops/CompositeType;->DstAtop:Lsun/java2d/loops/CompositeType;

    const-string v4, "Porter-Duff Xor"

    invoke-virtual {v1, v4}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v1

    sput-object v1, Lsun/java2d/loops/CompositeType;->AlphaXor:Lsun/java2d/loops/CompositeType;

    const-string v1, "Porter-Duff Src, No Extra Alpha"

    invoke-virtual {v2, v1}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v2

    sput-object v2, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    const-string v2, "Porter-Duff SrcOverDst, No Extra Alpha"

    invoke-virtual {v3, v2}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v2

    sput-object v2, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v2, v0}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsun/java2d/loops/CompositeType;->deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;

    move-result-object v0

    sput-object v0, Lsun/java2d/loops/CompositeType;->OpaqueSrcOverNoEa:Lsun/java2d/loops/CompositeType;

    return-void
.end method

.method private constructor <init>(Lsun/java2d/loops/CompositeType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/java2d/loops/CompositeType;->next:Lsun/java2d/loops/CompositeType;

    iput-object p2, p0, Lsun/java2d/loops/CompositeType;->desc:Ljava/lang/String;

    invoke-static {p2}, Lsun/java2d/loops/CompositeType;->makeUniqueID(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lsun/java2d/loops/CompositeType;->uniqueID:I

    return-void
.end method

.method public static forAlphaComposite(Ljava/awt/AlphaComposite;)Lsun/java2d/loops/CompositeType;
    .locals 2

    invoke-virtual {p0}, Ljava/awt/AlphaComposite;->getRule()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "Unrecognized alpha rule"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lsun/java2d/loops/CompositeType;->AlphaXor:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_1
    sget-object p0, Lsun/java2d/loops/CompositeType;->DstAtop:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_2
    sget-object p0, Lsun/java2d/loops/CompositeType;->SrcAtop:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_3
    sget-object p0, Lsun/java2d/loops/CompositeType;->Dst:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_4
    sget-object p0, Lsun/java2d/loops/CompositeType;->DstOut:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_5
    sget-object p0, Lsun/java2d/loops/CompositeType;->SrcOut:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_6
    sget-object p0, Lsun/java2d/loops/CompositeType;->DstIn:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_7
    sget-object p0, Lsun/java2d/loops/CompositeType;->SrcIn:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_8
    sget-object p0, Lsun/java2d/loops/CompositeType;->DstOver:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_9
    invoke-virtual {p0}, Ljava/awt/AlphaComposite;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_0

    sget-object p0, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    return-object p0

    :cond_0
    sget-object p0, Lsun/java2d/loops/CompositeType;->SrcOver:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, Ljava/awt/AlphaComposite;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_1

    sget-object p0, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    return-object p0

    :cond_1
    sget-object p0, Lsun/java2d/loops/CompositeType;->Src:Lsun/java2d/loops/CompositeType;

    return-object p0

    :pswitch_b
    sget-object p0, Lsun/java2d/loops/CompositeType;->Clear:Lsun/java2d/loops/CompositeType;

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

.method public static final declared-synchronized makeUniqueID(Ljava/lang/String;)I
    .locals 4

    const-class v0, Lsun/java2d/loops/CompositeType;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/java2d/loops/CompositeType;->compositeUIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    sget v2, Lsun/java2d/loops/CompositeType;->unusedUID:I

    const/16 v3, 0xff

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    sput v3, Lsun/java2d/loops/CompositeType;->unusedUID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v1, "composite type id overflow"

    invoke-direct {p0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public deriveSubType(Ljava/lang/String;)Lsun/java2d/loops/CompositeType;
    .locals 1

    new-instance v0, Lsun/java2d/loops/CompositeType;

    invoke-direct {v0, p0, p1}, Lsun/java2d/loops/CompositeType;-><init>(Lsun/java2d/loops/CompositeType;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lsun/java2d/loops/CompositeType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lsun/java2d/loops/CompositeType;

    iget p1, p1, Lsun/java2d/loops/CompositeType;->uniqueID:I

    iget p0, p0, Lsun/java2d/loops/CompositeType;->uniqueID:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/CompositeType;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperType()Lsun/java2d/loops/CompositeType;
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/CompositeType;->next:Lsun/java2d/loops/CompositeType;

    return-object p0
.end method

.method public getUniqueID()I
    .locals 0

    iget p0, p0, Lsun/java2d/loops/CompositeType;->uniqueID:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/CompositeType;->desc:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isDerivedFrom(Lsun/java2d/loops/CompositeType;)Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lsun/java2d/loops/CompositeType;->desc:Ljava/lang/String;

    iget-object v1, p1, Lsun/java2d/loops/CompositeType;->desc:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lsun/java2d/loops/CompositeType;->next:Lsun/java2d/loops/CompositeType;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/java2d/loops/CompositeType;->desc:Ljava/lang/String;

    return-object p0
.end method
