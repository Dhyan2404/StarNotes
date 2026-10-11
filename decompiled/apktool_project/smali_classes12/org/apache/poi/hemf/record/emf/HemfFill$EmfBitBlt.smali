.class public Lorg/apache/poi/hemf/record/emf/HemfFill$EmfBitBlt;
.super Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfBitBlt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfStretchBlt;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->bitBlt:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public srcEqualsDstDimension()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
