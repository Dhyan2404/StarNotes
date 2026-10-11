.class public Lorg/apache/poi/hemf/record/emf/UnimplementedHemfRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecordWithoutProperties;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private recordType:Lorg/apache/poi/hemf/record/emf/HemfRecordType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/UnimplementedHemfRecord;->recordType:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4, p5}, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->getById(J)Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p4

    iput-object p4, p0, Lorg/apache/poi/hemf/record/emf/UnimplementedHemfRecord;->recordType:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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
