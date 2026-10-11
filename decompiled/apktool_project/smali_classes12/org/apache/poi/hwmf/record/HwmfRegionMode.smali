.class public final enum Lorg/apache/poi/hwmf/record/HwmfRegionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hwmf/record/HwmfRegionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hwmf/record/HwmfRegionMode;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum RGN_AND:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

.field public static final enum RGN_COMPLEMENT:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

.field public static final enum RGN_COPY:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

.field public static final enum RGN_DIFF:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

.field public static final enum RGN_OR:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

.field public static final enum RGN_XOR:Lorg/apache/poi/hwmf/record/HwmfRegionMode;


# instance fields
.field private final flag:I

.field private final op:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/awt/Shape;",
            "Ljava/awt/Shape;",
            "Ljava/awt/Shape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v1, Lcom/sunia/HTREnginev2/p9i;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/p9i;-><init>()V

    const-string v2, "RGN_AND"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;-><init>(Ljava/lang/String;IILjava/util/function/BiFunction;)V

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_AND:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v1, Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v2, Lcom/sunia/HTREnginev2/q9i;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/q9i;-><init>()V

    const-string v3, "RGN_OR"

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5, v2}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;-><init>(Ljava/lang/String;IILjava/util/function/BiFunction;)V

    sput-object v1, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_OR:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v2, Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v3, Lcom/sunia/HTREnginev2/r9i;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/r9i;-><init>()V

    const-string v4, "RGN_XOR"

    const/4 v6, 0x3

    invoke-direct {v2, v4, v5, v6, v3}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;-><init>(Ljava/lang/String;IILjava/util/function/BiFunction;)V

    sput-object v2, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_XOR:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v3, Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v4, Lcom/sunia/HTREnginev2/s9i;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/s9i;-><init>()V

    const-string v5, "RGN_DIFF"

    const/4 v7, 0x4

    invoke-direct {v3, v5, v6, v7, v4}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;-><init>(Ljava/lang/String;IILjava/util/function/BiFunction;)V

    sput-object v3, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_DIFF:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v4, Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v5, Lcom/sunia/HTREnginev2/t9i;

    invoke-direct {v5}, Lcom/sunia/HTREnginev2/t9i;-><init>()V

    const-string v6, "RGN_COPY"

    const/4 v8, 0x5

    invoke-direct {v4, v6, v7, v8, v5}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;-><init>(Ljava/lang/String;IILjava/util/function/BiFunction;)V

    sput-object v4, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_COPY:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v5, Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    new-instance v6, Lcom/sunia/HTREnginev2/u9i;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/u9i;-><init>()V

    const-string v7, "RGN_COMPLEMENT"

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9, v6}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;-><init>(Ljava/lang/String;IILjava/util/function/BiFunction;)V

    sput-object v5, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->RGN_COMPLEMENT:Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    filled-new-array/range {v0 .. v5}, [Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/BiFunction<",
            "Ljava/awt/Shape;",
            "Ljava/awt/Shape;",
            "Ljava/awt/Shape;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->flag:I

    iput-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->op:Ljava/util/function/BiFunction;

    return-void
.end method

.method public static synthetic a(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->diffOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method private static andOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 1

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p0}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    new-instance p0, Ljava/awt/geom/Area;

    invoke-direct {p0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v0, p0}, Ljava/awt/geom/Area;->intersect(Ljava/awt/geom/Area;)V

    invoke-virtual {v0}, Ljava/awt/geom/Area;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public static synthetic b(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->xorOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->andOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method private static complementOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 1

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    new-instance p1, Ljava/awt/geom/Area;

    invoke-direct {p1, p0}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v0, p1}, Ljava/awt/geom/Area;->subtract(Ljava/awt/geom/Area;)V

    return-object v0
.end method

.method private static copyOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public static synthetic d(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->complementOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method private static diffOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 1

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p0}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    new-instance p0, Ljava/awt/geom/Area;

    invoke-direct {p0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v0, p0}, Ljava/awt/geom/Area;->subtract(Ljava/awt/geom/Area;)V

    return-object v0
.end method

.method public static synthetic e(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->orOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->copyOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method private static orOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 1

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p0}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    new-instance p0, Ljava/awt/geom/Area;

    invoke-direct {p0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v0, p0}, Ljava/awt/geom/Area;->add(Ljava/awt/geom/Area;)V

    return-object v0
.end method

.method public static valueOf(I)Lorg/apache/poi/hwmf/record/HwmfRegionMode;
    .locals 5

    .line 2
    invoke-static {}, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->values()[Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget v4, v3, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->flag:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hwmf/record/HwmfRegionMode;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hwmf/record/HwmfRegionMode;
    .locals 1

    sget-object v0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->$VALUES:[Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    invoke-virtual {v0}, [Lorg/apache/poi/hwmf/record/HwmfRegionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hwmf/record/HwmfRegionMode;

    return-object v0
.end method

.method private static xorOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 1

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/awt/geom/Area;

    invoke-direct {v0, p0}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    new-instance p0, Ljava/awt/geom/Area;

    invoke-direct {p0, p1}, Ljava/awt/geom/Area;-><init>(Ljava/awt/Shape;)V

    invoke-virtual {v0, p0}, Ljava/awt/geom/Area;->exclusiveOr(Ljava/awt/geom/Area;)V

    return-object v0
.end method


# virtual methods
.method public applyOp(Ljava/awt/Shape;Ljava/awt/Shape;)Ljava/awt/Shape;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->op:Ljava/util/function/BiFunction;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/awt/Shape;

    return-object p0
.end method

.method public getFlag()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwmf/record/HwmfRegionMode;->flag:I

    return p0
.end method
