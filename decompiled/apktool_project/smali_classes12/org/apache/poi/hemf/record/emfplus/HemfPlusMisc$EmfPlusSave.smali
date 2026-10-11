.class public Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSave;
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
    name = "EmfPlusSave"
.end annotation


# instance fields
.field private flags:I

.field private stackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSave;->getStackIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->savePlusProperties(I)V

    return-void
.end method

.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->save:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSave;->flags:I

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

    new-instance v0, Lcom/sunia/HTREnginev2/nqh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/nqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSave;)V

    new-instance v1, Lcom/sunia/HTREnginev2/oqh;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/oqh;-><init>(Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSave;)V

    const-string p0, "flags"

    const-string v2, "stackIndex"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getStackIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSave;->stackIndex:I

    return p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSave;->flags:I

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hemf/record/emfplus/HemfPlusMisc$EmfPlusSave;->stackIndex:I

    const-wide/16 p0, 0x4

    return-wide p0
.end method
