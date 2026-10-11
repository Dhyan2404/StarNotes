.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;
.implements Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPlusObject"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTINUABLE:Lorg/apache/poi/util/BitField;

.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field private static final OBJECT_TYPE:Lorg/apache/poi/util/BitField;


# instance fields
.field private continuedObjectData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I

.field private objectData:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

.field private objectId:I

.field private totalObjectSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x8000

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->CONTINUABLE:Lorg/apache/poi/util/BitField;

    const/16 v1, 0x7f00

    invoke-static {v1}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->OBJECT_TYPE:Lorg/apache/poi/util/BitField;

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->FLAGS_MASKS:[I

    const-string v0, "OBJECT_TYPE"

    const-string v1, "CONTINUABLE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->FLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->lambda$getGenericProperties$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getGenericProperties$0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->objectData:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    invoke-interface {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;->isContinuedRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->getObjectData()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public applyObject(Lorg/apache/poi/hwmf/draw/HwmfGraphics;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->objectData:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    check-cast p1, Lorg/apache/poi/hemf/draw/HemfGraphics;

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->continuedObjectData:Ljava/util/List;

    invoke-interface {v0, p1, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;->applyObject(Lorg/apache/poi/hemf/draw/HemfGraphics;Ljava/util/List;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->objectData:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    invoke-interface {v0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;->isContinuedRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->getPlusObjectTableEntry(I)Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->objectData:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;

    invoke-virtual {p1}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->getObjectData()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->objectData:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->linkContinuedObject(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "can\'t find previous record for continued record"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->addPlusObjectTableEntry(Lorg/apache/poi/hwmf/record/HwmfObjectTableEntry;I)V

    :goto_0
    return-void
.end method

.method public getContinuedObject()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->continuedObjectData:Ljava/util/List;

    return-object p0
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->object:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->flags:I

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "flags"

    new-instance v1, Lcom/sunia/HTREnginev2/xqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/xqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;)V

    sget-object v2, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->FLAGS_MASKS:[I

    sget-object v3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "objectId"

    new-instance v3, Lcom/sunia/HTREnginev2/yqh;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/yqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;)V

    const-string v4, "objectData"

    new-instance v5, Lcom/sunia/HTREnginev2/zqh;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/zqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;)V

    const-string v6, "continuedObject"

    iget-object v7, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->objectData:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/sunia/HTREnginev2/arh;

    invoke-direct {v8, v7}, Lcom/sunia/HTREnginev2/arh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;)V

    const-string v9, "totalObjectSize"

    new-instance v10, Lcom/sunia/HTREnginev2/brh;

    invoke-direct {v10, p0}, Lcom/sunia/HTREnginev2/brh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;)V

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getObjectData()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->objectData:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    return-object p0
.end method

.method public getObjectType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->OBJECT_TYPE:Lorg/apache/poi/util/BitField;

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->flags:I

    invoke-virtual {v0, p0}, Lorg/apache/poi/util/BitField;->getValue(I)I

    move-result p0

    invoke-static {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->valueOf(I)Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object p0

    return-object p0
.end method

.method public getTotalObjectSize()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->totalObjectSize:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->flags:I

    invoke-interface {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusObjectId;->getObjectId()I

    move-result p4

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->objectId:I

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->getObjectType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;

    move-result-object v4

    const/4 p4, 0x0

    iput p4, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->totalObjectSize:I

    long-to-int p2, p2

    sget-object p3, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->CONTINUABLE:Lorg/apache/poi/util/BitField;

    invoke-virtual {p3, p6}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p3

    iput p3, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->totalObjectSize:I

    add-int/lit8 p2, p2, -0x4

    const-wide/16 p3, 0x4

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    :goto_0
    iget-object p5, v4, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;->constructor:Ljava/util/function/Supplier;

    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->objectData:Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;

    int-to-long v2, p2

    move-object v1, p1

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;->init(Lorg/apache/poi/util/LittleEndianInputStream;JLorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectType;I)J

    move-result-wide p0

    add-long/2addr p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public linkContinuedObject(Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObjectData;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->continuedObjectData:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->continuedObjectData:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusObject$EmfPlusObject;->continuedObjectData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
