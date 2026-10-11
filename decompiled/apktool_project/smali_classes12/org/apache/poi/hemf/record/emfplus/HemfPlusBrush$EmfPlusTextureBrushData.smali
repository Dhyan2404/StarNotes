.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusTextureBrushData"
.end annotation


# instance fields
.field private brushTransform:Ljava/awt/geom/AffineTransform;

.field private dataFlags:I

.field private image:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;

.field private wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->lambda$getGenericProperties$3()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->lambda$getGenericProperties$2()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->lambda$getGenericProperties$1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->dataFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$2()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->brushTransform:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$3()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->image:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;

    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 2
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

    move-result-object p2

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->image:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V

    invoke-virtual {p2}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->getEmfPlusImage()Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushBitmap(Lorg/apache/poi/sl/draw/ImageRenderer;)V

    sget-object p1, Lorg/apache/poi/hwmf/record/HwmfBrushStyle;->BS_PATTERN:Lorg/apache/poi/hwmf/record/HwmfBrushStyle;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushStyle(Lorg/apache/poi/hwmf/record/HwmfBrushStyle;)V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->brushTransform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {p2, p0}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setBrushTransform(Ljava/awt/geom/AffineTransform;)V

    return-void
.end method

.method public applyPen(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "dataFlags"

    new-instance v1, Lcom/sunia/HTREnginev2/xnh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xnh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;)V

    const-string v2, "wrapMode"

    new-instance v3, Lcom/sunia/HTREnginev2/ynh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/ynh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;)V

    const-string v4, "brushTransform"

    new-instance v5, Lcom/sunia/HTREnginev2/znh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/znh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;)V

    const-string v6, "image"

    new-instance v7, Lcom/sunia/HTREnginev2/aoh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/aoh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;->TEXTURE_FILL:Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->dataFlags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusBrushData;->TRANSFORM:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->dataFlags:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->brushTransform:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, v0}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    :cond_0
    cmp-long v0, p2, v1

    if-lez v0, :cond_1

    new-instance v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;

    invoke-direct {v3}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;-><init>()V

    iput-object v3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusBrush$EmfPlusTextureBrushData;->image:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;

    sub-long v5, p2, v1

    sget-object v7, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->IMAGE:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImage;->init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J

    move-result-wide p0

    add-long/2addr v1, p0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
