.class public Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfAlphaBlend"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected alphaFormat:B

.field protected final bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

.field protected final bkColorSrc:Lorg/apache/poi/hwmf/record/HwmfColorRef;

.field protected blendFlags:B

.field protected blendOperation:B

.field protected final bounds:Ljava/awt/geom/Rectangle2D;

.field protected final destRect:Ljava/awt/geom/Rectangle2D;

.field protected srcConstantAlpha:I

.field protected final srcRect:Ljava/awt/geom/Rectangle2D;

.field protected usageSrc:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

.field protected final xFormSrc:Ljava/awt/geom/AffineTransform;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->bounds:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->destRect:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->srcRect:Ljava/awt/geom/Rectangle2D;

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->xFormSrc:Ljava/awt/geom/AffineTransform;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfColorRef;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->bkColorSrc:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    new-instance v0, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    invoke-direct {v0}, Lorg/apache/poi/hwmf/record/HwmfBitmapDib;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$10()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$9()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$8()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$7()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$4()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->lambda$getGenericProperties$5()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->bounds:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->destRect:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$10()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->srcRect:Ljava/awt/geom/Rectangle2D;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->blendOperation:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$4()Ljava/lang/Object;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->blendFlags:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$5()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->srcConstantAlpha:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$6()Ljava/lang/Object;
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->alphaFormat:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$7()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->xFormSrc:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$8()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->bkColorSrc:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$9()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->usageSrc:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    return-object p0
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->alphaBlend:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 3
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

    new-instance v1, Lcom/sunia/HTREnginev2/vhh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/vhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "bounds"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/yhh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/yhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "destRect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zhh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/zhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "srcRect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/aih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/aih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "blendOperation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/bih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "blendFlags"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/cih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "srcConstantAlpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/dih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "alphaFormat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/eih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/eih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "xFormSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/fih;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fih;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "bkColorSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/whh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/whh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string v2, "usageSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/xhh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xhh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;)V

    const-string p0, "bitmap"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result v2

    iget-object v3, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v3}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide v3

    iget-object v5, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->destRect:Ljava/awt/geom/Rectangle2D;

    invoke-static {v1, v5}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBounds2(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v5

    iput-byte v5, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->blendOperation:B

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v5

    iput-byte v5, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->blendFlags:B

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v5

    iput v5, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->srcConstantAlpha:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v5

    iput-byte v5, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->alphaFormat:B

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v6

    const-wide/16 v7, 0xc

    add-long/2addr v3, v7

    iget-object v7, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->xFormSrc:Ljava/awt/geom/AffineTransform;

    invoke-static {v1, v7}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    iget-object v7, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->bkColorSrc:Lorg/apache/poi/hwmf/record/HwmfColorRef;

    invoke-virtual {v7, v1}, Lorg/apache/poi/hwmf/record/HwmfColorRef;->init(Lorg/apache/poi/util/LittleEndianInputStream;)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v7}, Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;->valueOf(I)Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    move-result-object v7

    iput-object v7, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->usageSrc:Lorg/apache/poi/hwmf/record/HwmfFill$ColorUsage;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v12

    iget-object v13, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->srcRect:Ljava/awt/geom/Rectangle2D;

    int-to-double v14, v5

    int-to-double v5, v6

    move/from16 p2, v10

    int-to-double v10, v11

    move/from16 p3, v8

    move/from16 p4, v9

    int-to-double v8, v12

    move-wide/from16 v16, v5

    move-wide/from16 v18, v10

    move-wide/from16 v20, v8

    invoke-virtual/range {v13 .. v21}, Ljava/awt/geom/Rectangle2D;->setRect(DDDD)V

    const-wide/16 v5, 0x1c

    add-long v8, v3, v5

    iget-object v3, v0, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfAlphaBlend;->bitmap:Lorg/apache/poi/hwmf/record/HwmfBitmapDib;

    move-object/from16 v0, p1

    move-object v1, v3

    move v3, v7

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readBitmap(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hwmf/record/HwmfBitmapDib;IIIII)J

    move-result-wide v0

    add-long/2addr v8, v0

    return-wide v8
.end method
