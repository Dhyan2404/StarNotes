.class public final Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/ExtSSTRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InfoSubRecord"
.end annotation


# static fields
.field public static final ENCODED_SIZE:I = 0x8


# instance fields
.field private field_1_stream_pos:I

.field private field_2_bucket_sst_offset:I

.field private field_3_zero:S


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    .line 3
    iput p2, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget v0, p1, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

    .line 7
    iget-short p1, p1, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_3_zero:S

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_3_zero:S

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    .line 10
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_3_zero:S

    return-void
.end method


# virtual methods
.method public getBucketSSTOffset()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

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

    new-instance v0, Lcom/sunia/HTREnginev2/t3g;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/t3g;-><init>(Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;)V

    new-instance v1, Lcom/sunia/HTREnginev2/u3g;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u3g;-><init>(Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;)V

    const-string p0, "streamPos"

    const-string v2, "bucketSSTOffset"

    invoke-static {p0, v0, v2, v1}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getStreamPos()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_1_stream_pos:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_2_bucket_sst_offset:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short p0, p0, Lorg/apache/poi/hssf/record/ExtSSTRecord$InfoSubRecord;->field_3_zero:S

    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method
