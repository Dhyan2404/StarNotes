.class public Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentDataEndGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfComment$EmfCommentData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfCommentDataEndGroup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentRecordType()Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfEndGroup:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    return-object p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p0

    int-to-long p2, p0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;->emfEndGroup:Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfComment$EmfComment;->validateCommentType(Lorg/apache/poi/util/LittleEndianInputStream;Lorg/apache/poi/hemf/record/emf/HemfComment$HemfCommentRecordType;)V

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->getReadIndex()I

    move-result p0

    int-to-long p0, p0

    sub-long/2addr p0, p2

    return-wide p0
.end method
