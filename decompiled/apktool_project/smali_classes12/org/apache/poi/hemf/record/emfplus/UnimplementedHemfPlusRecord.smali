.class public Lorg/apache/poi/hemf/record/emfplus/UnimplementedHemfPlusRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecord;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private flags:I

.field private recordType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfPlusRecordType()Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emfplus/UnimplementedHemfPlusRecord;->recordType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    return-object p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hemf/record/emfplus/UnimplementedHemfPlusRecord;->flags:I

    return p0
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

    new-instance v0, Lcom/sunia/HTREnginev2/tsn;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/tsn;-><init>(Lorg/apache/poi/hemf/record/emfplus/UnimplementedHemfPlusRecord;)V

    const-string p0, "flags"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJI)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4, p5}, Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;->getById(J)Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emfplus/UnimplementedHemfPlusRecord;->recordType:Lorg/apache/poi/hemf/record/emfplus/HemfPlusRecordType;

    iput p6, p0, Lorg/apache/poi/hemf/record/emfplus/UnimplementedHemfPlusRecord;->flags:I

    invoke-static {p1, p2, p3}, Lorg/apache/poi/util/IOUtils;->skipFully(Ljava/io/InputStream;J)J

    move-result-wide p0

    cmp-long p2, p0, p2

    if-ltz p2, :cond_0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "End of stream reached before record read"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
