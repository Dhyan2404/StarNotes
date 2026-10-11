.class public Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfChord;
.super Lorg/apache/poi/hwmf/record/HwmfDraw$WmfChord;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hemf/record/emf/HemfRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfDraw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfChord"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfChord;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfChord;Ljava/awt/geom/Path2D;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfChord;->lambda$draw$0(Ljava/awt/geom/Path2D;)V

    return-void
.end method

.method private synthetic lambda$draw$0(Ljava/awt/geom/Path2D;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getShape()Ljava/awt/geom/Arc2D;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lorg/apache/poi/hemf/draw/HemfGraphics;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/xgh;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xgh;-><init>(Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfChord;)V

    invoke-virtual {p0}, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->getFillDrawStyle()Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/apache/poi/hemf/draw/HemfGraphics;->draw(Ljava/util/function/Consumer;Lorg/apache/poi/hwmf/draw/HwmfGraphics$FillDrawStyle;)V

    return-void
.end method

.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->chord:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method

.method public bridge synthetic getGenericRecordType()Ljava/lang/Enum;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfChord;->getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public getGenericRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw$EmfChord;->getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    move-result-object p0

    return-object p0
.end method

.method public init(Lorg/apache/poi/util/LittleEndianInputStream;JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->bounds:Ljava/awt/geom/Rectangle2D;

    invoke-static {p1, p2}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readRectL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Rectangle2D;)J

    move-result-wide p2

    iget-object p4, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->startPoint:Ljava/awt/geom/Point2D;

    invoke-static {p1, p4}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p4

    add-long/2addr p2, p4

    iget-object p0, p0, Lorg/apache/poi/hwmf/record/HwmfDraw$WmfArc;->endPoint:Ljava/awt/geom/Point2D;

    invoke-static {p1, p0}, Lorg/apache/poi/hemf/record/emf/HemfDraw;->readPointL(Lorg/apache/poi/util/LittleEndianInputStream;Ljava/awt/geom/Point2D;)J

    move-result-wide p0

    add-long/2addr p2, p0

    return-wide p2
.end method
