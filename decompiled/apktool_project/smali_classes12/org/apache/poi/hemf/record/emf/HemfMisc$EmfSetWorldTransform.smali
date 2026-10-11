.class public Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetWorldTransform;
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
    name = "EmfSetWorldTransform"
.end annotation


# instance fields
.field protected final xForm:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/awt/geom/AffineTransform;

    invoke-direct {v0}, Ljava/awt/geom/AffineTransform;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getProperties()Lorg/apache/poi/hemf/draw/HemfDrawProperties;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->clearTransform()V

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hemf/draw/HemfDrawProperties;->addLeftTransform(Ljava/awt/geom/AffineTransform;)V

    invoke-virtual {p1}, Lorg/apache/poi/hemf/draw/HemfGraphics;->updateWindowMapMode()V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->setWorldTransform:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/elh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/elh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetWorldTransform;)V

    const-string p0, "xForm"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getXForm()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfMisc$EmfSetWorldTransform;->xForm:Ljava/awt/geom/AffineTransform;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfFill;->readXForm(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/AffineTransform;)I

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
