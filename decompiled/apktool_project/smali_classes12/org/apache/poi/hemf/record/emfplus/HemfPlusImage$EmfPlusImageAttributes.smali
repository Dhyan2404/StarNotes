.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusImageAttributes"
.end annotation


# instance fields
.field private clampColor:Ljava/awt/Color;

.field private final graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

.field private objectClamp:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

.field private wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-direct {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-void
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V
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

.method public getClampColor()Ljava/awt/Color;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->clampColor:Ljava/awt/Color;

    return-object p0
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

    const-string v0, "graphicsVersion"

    new-instance v1, Lcom/sunia/HTREnginev2/iqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/iqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;)V

    const-string v2, "wrapMode"

    new-instance v3, Lcom/sunia/HTREnginev2/jqh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/jqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;)V

    const-string v4, "clampColor"

    new-instance v5, Lcom/sunia/HTREnginev2/kqh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/kqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;)V

    const-string v6, "objectClamp"

    new-instance v7, Lcom/sunia/HTREnginev2/lqh;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/lqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;)V

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 0

    .line 2
    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->IMAGE_ATTRIBUTES:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    return-object p0
.end method

.method public getGraphicsVersion()Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    return-object p0
.end method

.method public getObjectClamp()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->objectClamp:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    return-object p0
.end method

.method public getWrapMode()Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->graphicsVersion:Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;

    invoke-virtual {p2, p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusHeader$EmfPlusGraphicsVersion;->init(Lorg/apache/poi/util/LittleEndianInputStream;)J

    move-result-wide p2

    const/4 p4, 0x4

    invoke-virtual {p1, p4}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p5

    invoke-static {p5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    move-result-object p5

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->wrapMode:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusWrapMode;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p5

    invoke-static {p5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusDraw;->readARGB(I)Ljava/awt/Color;

    move-result-object p5

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->clampColor:Ljava/awt/Color;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p5

    invoke-static {p5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    move-result-object p5

    iput-object p5, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusImageAttributes;->objectClamp:Lorg/apache/poi/hemf/record/emfplus/HemfPlusImage$EmfPlusObjectClamp;

    invoke-virtual {p1, p4}, Lorg/apache/poi/util/LittleEndianInputStream;->skipFully(I)V

    const-wide/16 p0, 0x14

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
