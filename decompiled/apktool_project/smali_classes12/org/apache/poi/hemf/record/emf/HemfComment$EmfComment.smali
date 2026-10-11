.class public Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;
.implements Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfComment"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private data:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateCommentType(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v0

    long-to-int p1, v0

    int-to-long v0, p1

    sget-object p1, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfPublic:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    iget-wide v2, p1, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    :cond_0
    return-void
.end method


# virtual methods
.method public calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->data:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    invoke-interface {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;->calcBounds(Lorg/apache/poi/hemf/record/emf/HemfRecord$RenderBounds;)V

    return-void
.end method

.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->data:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    invoke-interface {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;->draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V

    return-void
.end method

.method public getCommentData()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->data:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    return-object p0
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->comment:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/yfh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/yfh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;)V

    const-string p0, "data"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p4

    int-to-long p4, p4

    new-instance v0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;

    long-to-int p2, p2

    const/4 p3, 0x1

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;-><init>(Lorg/apache/poi/util/LittleEndianInputStream;IZ)V

    invoke-virtual {v0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataIterator;->next()Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->data:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p0

    int-to-long p0, p0

    sub-long/2addr p0, p4

    return-wide p0
.end method

.method public setCharsetProvider(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->data:Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;

    instance-of v0, p0, Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;

    invoke-interface {p0, p1}, Lorg/apache/poi/hwmf/usermodel/HwmfCharsetAware;->setCharsetProvider(Ljava/util/function/Supplier;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
