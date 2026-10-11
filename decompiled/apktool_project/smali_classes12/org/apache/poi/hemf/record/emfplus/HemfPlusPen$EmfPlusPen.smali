.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusPen"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMPOUND_LINE:Lorg/apache/poi/util/BitField;

.field private static final CUSTOM_END_CAP:Lorg/apache/poi/util/BitField;

.field private static final CUSTOM_START_CAP:Lorg/apache/poi/util/BitField;

.field private static final DASHED_LINE:Lorg/apache/poi/util/BitField;

.field private static final DASHED_LINE_CAP:Lorg/apache/poi/util/BitField;

.field private static final DASHED_LINE_OFFSET:Lorg/apache/poi/util/BitField;

.field private static final END_CAP:Lorg/apache/poi/util/BitField;

.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field private static final JOIN:Lorg/apache/poi/util/BitField;

.field private static final LINE_STYLE:Lorg/apache/poi/util/BitField;

.field private static final MITER_LIMIT:Lorg/apache/poi/util/BitField;

.field private static final NON_CENTER:Lorg/apache/poi/util/BitField;

.field private static final START_CAP:Lorg/apache/poi/util/BitField;

.field private static final TRANSFORM:Lorg/apache/poi/util/BitField;


# instance fields
.field private final brush:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;

.field private compoundLineData:[D

.field private customEndCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;

.field private customStartCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;

.field private dashOffset:Ljava/lang/Double;

.field private dashedLineCapType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

.field private dashedLineData:[F

.field private endCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field private final graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

.field private lineJoin:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineJoin;

.field private miterLimit:Ljava/lang/Double;

.field private penAlignment:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPenAlignment;

.field private penDataFlags:I

.field private penWidth:D

.field private startCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

.field private style:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

.field private final trans:Ljava/awt/geom/AffineTransform;

.field private type:I

.field private unitType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->TRANSFORM:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->START_CAP:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->END_CAP:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->JOIN:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->MITER_LIMIT:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->LINE_STYLE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->DASHED_LINE_CAP:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->DASHED_LINE_OFFSET:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x100

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->DASHED_LINE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x200

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->NON_CENTER:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x400

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->COMPOUND_LINE:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x800

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->CUSTOM_START_CAP:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x1000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->CUSTOM_END_CAP:Lorg/apache/poi/util/BitField;

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->FLAGS_MASKS:[I

    const-string v1, "TRANSFORM"

    const-string v2, "START_CAP"

    const-string v3, "END_CAP"

    const-string v4, "JOIN"

    const-string v5, "MITER_LIMIT"

    const-string v6, "LINE_STYLE"

    const-string v7, "DASHED_LINE_CAP"

    const-string v8, "DASHED_LINE_OFFSET"

    const-string v9, "DASHED_LINE"

    const-string v10, "NON_CENTER"

    const-string v11, "COMPOUND_LINE"

    const-string v12, "CUSTOM_START_CAP"

    const-string v13, "CUSTOM_END_CAP"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->FLAGS_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->trans:Ljava/awt/geom/AffineTransform;

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->FLAT:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->startCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->endCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineJoin;->ROUND:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineJoin;

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lineJoin:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineJoin;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->miterLimit:Ljava/lang/Double;

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->SOLID:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->style:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->brush:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Number;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$3()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$17()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$11()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$init$1(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;)V

    return-void
.end method

.method public static synthetic f(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$14()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$8()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$12()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private initCustomCap(Ljava/util/function/Consumer;Lorg/apache/poi/util/LittleEndianInputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;",
            ">;",
            "Lorg/apache/poi/util/LittleEndianInputStream;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    new-instance p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    invoke-virtual {p0, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-long/2addr v0, v2

    if-eqz p0, :cond_1

    new-instance p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusAdjustableArrowCap;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPathArrowCap;-><init>()V

    :goto_1
    invoke-virtual {p0, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public static synthetic j(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$16()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$18()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$10()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->miterLimit:Ljava/lang/Double;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$11()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->style:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$12()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashedLineCapType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$13()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashOffset:Ljava/lang/Double;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$14()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashedLineData:[F

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$15()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penAlignment:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPenAlignment;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$16()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->compoundLineData:[D

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$17()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->customStartCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$18()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->customEndCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$19()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->brush:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->type:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->unitType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penWidth:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->trans:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->startCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$8()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->endCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$9()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lineJoin:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineJoin;

    return-object p0
.end method

.method private synthetic lambda$init$0(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->customStartCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;

    return-void
.end method

.method private synthetic lambda$init$1(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->customEndCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;

    return-void
.end method

.method public static synthetic m(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$10()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$13()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$15()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$init$0(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusCustomLineCap;)V

    return-void
.end method

.method public static synthetic t(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lambda$getGenericProperties$19()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hemf/draw/HemfGraphics;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->brush:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;

    invoke-virtual {v1, p1, p2}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->applyPen(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V

    iget-wide p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penWidth:D

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenWidth(D)V

    sget-object p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusPen$EmfPlusLineCapType:[I

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->startCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, p2, :cond_0

    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;->FLAT:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;->SQUARE:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;->ROUND:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;

    :goto_0
    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$1;->$SwitchMap$org$apache$poi$hemf$record$emfplus$HemfPlusPen$EmfPlusLineJoin:[I

    iget-object v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lineJoin:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineJoin;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_3

    if-eq v2, p2, :cond_2

    const/4 p2, 0x4

    if-eq v2, p2, :cond_2

    sget-object p2, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;->BEVEL:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;

    goto :goto_1

    :cond_2
    sget-object p2, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;->MITER:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;

    goto :goto_1

    :cond_3
    sget-object p2, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;->ROUND:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;

    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashedLineData:[F

    if-nez v1, :cond_4

    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->SOLID:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    goto :goto_2

    :cond_4
    sget-object v1, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->USERSTYLE:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    :goto_2
    sget-object v2, Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;->SOLID:Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashOffset:Ljava/lang/Double;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v2, v5, v7

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v4

    :goto_3
    iget-object v5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->unitType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    sget-object v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;->World:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    if-eq v5, v6, :cond_7

    sget-object v6, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;->Display:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    if-ne v5, v6, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :cond_7
    :goto_4
    invoke-static {p1, p2, v1, v2, v3}, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->valueOf(Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineCap;Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineJoin;Lorg/apache/poi/hwmf/record/HwmfPenStyle$HwmfLineDash;ZZ)Lorg/apache/poi/hemf/record/emf/HemfPenStyle;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashedLineData:[F

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfPenStyle;->setLineDashes([F)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setPenStyle(Lorg/apache/poi/hwmf/record/HwmfPenStyle;)V

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lcom/sunia/HTREnginev2/osh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/osh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/hth;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/hth;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->FLAGS_MASKS:[I

    sget-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "flags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/psh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/psh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "unitType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/qsh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/qsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "penWidth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/rsh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/rsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "trans"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ssh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ssh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "startCap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/tsh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/tsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "endCap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ush;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ush;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "join"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/vsh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "miterLimit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/wsh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zsh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "dashedLineCapType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ath;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ath;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "dashOffset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bth;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bth;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "dashedLineData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/cth;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cth;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "penAlignment"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dth;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dth;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "compoundLineData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/eth;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/eth;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "customStartCap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fth;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fth;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string v2, "customEndCap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/gth;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gth;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    const-string p0, "brush"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->PEN:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-object p0
.end method

.method public getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-virtual {p4, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide p4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->type:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->unitType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw$EmfPlusUnitType;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penWidth:D

    const-wide/16 v0, 0x10

    add-long/2addr p4, v0

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->TRANSFORM:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->trans:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, v0}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p4, v0

    :cond_0
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->START_CAP:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->startCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    add-long/2addr p4, v1

    :cond_1
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->END_CAP:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->endCap:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineCapType;

    add-long/2addr p4, v1

    :cond_2
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->JOIN:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineJoin;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineJoin;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->lineJoin:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineJoin;

    add-long/2addr p4, v1

    :cond_3
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->MITER_LIMIT:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->miterLimit:Ljava/lang/Double;

    add-long/2addr p4, v1

    :cond_4
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->LINE_STYLE:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->style:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusLineStyle;

    add-long/2addr p4, v1

    :cond_5
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->DASHED_LINE_CAP:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashedLineCapType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusDashedLineCapType;

    add-long/2addr p4, v1

    :cond_6
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->DASHED_LINE_OFFSET:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashOffset:Ljava/lang/Double;

    add-long/2addr p4, v1

    :cond_7
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->DASHED_LINE:Lorg/apache/poi/util/BitField;

    iget v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v3}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_9

    if-gt v0, v4, :cond_9

    new-array v5, v0, [F

    iput-object v5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashedLineData:[F

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_8

    iget-object v6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->dashedLineData:[F

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    int-to-long v5, v0

    add-long/2addr p4, v5

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid dash data size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_1
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->NON_CENTER:Lorg/apache/poi/util/BitField;

    iget v5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v5}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPenAlignment;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPenAlignment;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penAlignment:Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPenAlignment;

    add-long/2addr p4, v1

    :cond_b
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->COMPOUND_LINE:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_d

    if-gt v0, v4, :cond_d

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->compoundLineData:[D

    :goto_2
    if-ge v3, v0, :cond_c

    iget-object v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->compoundLineData:[D

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFloat()F

    move-result v2

    float-to-double v4, v2

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    add-long/2addr p4, v0

    goto :goto_3

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid compound line data size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_3
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->CUSTOM_START_CAP:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/sunia/HTREnginev2/xsh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xsh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->initCustomCap(Ljava/util/function/Consumer;Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide v0

    add-long/2addr p4, v0

    :cond_f
    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->CUSTOM_END_CAP:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->penDataFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/sunia/HTREnginev2/ysh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ysh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;)V

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->initCustomCap(Ljava/util/function/Consumer;Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide v0

    add-long/2addr p4, v0

    :cond_10
    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusPen$EmfPlusPen;->brush:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;

    sub-long v2, p2, p4

    sget-object v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->BRUSH:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrush;->init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J

    move-result-wide p0

    add-long/2addr p4, p0

    return-wide p4
.end method
