.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetRenderingOrigin;
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
    name = "EmfPlusSetRenderingOrigin"
.end annotation


# instance fields
.field flags:I

.field origin:Ljava/awt/geom/Point2D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/Point2D$Double;

    invoke-direct {v0}, Ljava/awt/geom/Point2D$Double;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetRenderingOrigin;->origin:Ljava/awt/geom/Point2D;

    return-void
.end method


# virtual methods
.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->setRenderingOrigin:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetRenderingOrigin;->flags:I

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

    new-instance v0, Lcom/sunia/HTREnginev2/tqh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetRenderingOrigin;)V

    new-instance v1, Lcom/sunia/HTREnginev2/uqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/uqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetRenderingOrigin;)V

    const-string p0, "flags"

    const-string v2, "origin"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getOrigin()Ljava/awt/geom/Point2D;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetRenderingOrigin;->origin:Ljava/awt/geom/Point2D;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetRenderingOrigin;->flags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSetRenderingOrigin;->origin:Ljava/awt/geom/Point2D;

    int-to-double p2, p2

    int-to-double p4, p1

    invoke-virtual {p0, p2, p3, p4, p5}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    const-wide/16 p0, 0x8

    return-wide p0
.end method
