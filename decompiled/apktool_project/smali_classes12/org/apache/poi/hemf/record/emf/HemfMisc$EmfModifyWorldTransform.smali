.class public Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfModifyWorldTransform"
.end annotation


# instance fields
.field protected header:Lorg/apache/poi/hemf/record/emf/HemfHeader;

.field protected modifyWorldTransformMode:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

.field protected final xForm:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->modifyWorldTransformMode:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hemf/record/emf/HemfMisc$1;->$SwitchMap$org$apache$poi$hemf$record$emf$HemfMisc$HemfModifyWorldTransformMode:[I

    iget-object v2, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->modifyWorldTransformMode:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->clearTransform()V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->addLeftTransform(Ljava/awt/geom/AffineTransform;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->clearTransform()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->addRightTransform(Ljava/awt/geom/AffineTransform;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->addLeftTransform(Ljava/awt/geom/AffineTransform;)V

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->updateWindowMapMode()V

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Lorg/apache/poi/hwmf/draw/HwmfDrawProperties;->setLocation(DD)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->modifyWorldTransform:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/alh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/alh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;)V

    new-instance v1, Lcom/sunia/HTREnginev2/blh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/blh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;)V

    const-string p0, "xForm"

    const-string v2, "modifyWorldTransformMode"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getModifyWorldTransformMode()Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->modifyWorldTransformMode:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    return-object p0
.end method

.method public getXForm()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide p4

    long-to-int p1, p4

    invoke-static {p1}, Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;->valueOf(I)Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->modifyWorldTransformMode:Lorg/apache/poi/hemf/record/emf/HemfMisc$HemfModifyWorldTransformMode;

    const-wide/16 p0, 0x4

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public setHeader(Lorg/apache/poi/hemf/record/emf/HemfHeader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfModifyWorldTransform;->header:Lorg/apache/poi/hemf/record/emf/HemfHeader;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
