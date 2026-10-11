.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon16;
.super Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPolyPolygon16"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfPolyPolygon;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->polyPolygon16:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public readPoint(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointS(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p0

    return-wide p0
.end method
