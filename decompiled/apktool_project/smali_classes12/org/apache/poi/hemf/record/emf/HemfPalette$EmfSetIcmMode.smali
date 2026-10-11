.class public Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfSetIcmMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode$ICMMode;
    }
.end annotation


# instance fields
.field private icmMode:Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode$ICMMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->seticmmode:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

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

    new-instance v0, Lcom/sunia/HTREnginev2/jlh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/jlh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode;)V

    const-string p0, "icmMode"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIcmMode()Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode$ICMMode;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode;->icmMode:Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode$ICMMode;

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode$ICMMode;->valueOf(I)Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode$ICMMode;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode;->icmMode:Lorg/apache/poi/hemf/record/emf/HemfPalette$EmfSetIcmMode$ICMMode;

    const-wide/16 p0, 0x4

    return-wide p0
.end method
