.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusSetWorldTransform"
.end annotation


# instance fields
.field private flags:I

.field private final matrixData:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;->matrixData:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->clearTransform()V

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;->getMatrixData()Ljava/awt/geom/AffineTransform;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->addLeftTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->updateWindowMapMode()V

    return-void
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->setWorldTransform:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;->flags:I

    return p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/vqh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/vqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;)V

    new-instance v1, Lcom/sunia/HTREnginev2/wqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/wqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;)V

    const-string p0, "flags"

    const-string v2, "matrixData"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMatrixData()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;->matrixData:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;->flags:I

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetWorldTransform;->matrixData:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method
