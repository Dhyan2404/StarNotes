.class public final Lorg/apache/poi/hslf/record/Slide;
.super Lorg/apache/poi/hslf/record/SheetContainer;
.source "SourceFile"


# static fields
.field private static _type:J = 0x3eeL


# instance fields
.field private _colorScheme:Lorg/apache/poi/hslf/record/ColorSchemeAtom;

.field private _header:[B

.field private ppDrawing:Lorg/apache/poi/hslf/record/PPDrawing;

.field private slideAtom:Lorg/apache/poi/hslf/record/SlideAtom;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 11
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/SheetContainer;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 12
    iput-object v0, p0, Lorg/apache/poi/hslf/record/Slide;->_header:[B

    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 14
    iget-object v0, p0, Lorg/apache/poi/hslf/record/Slide;->_header:[B

    sget-wide v3, Lorg/apache/poi/hslf/record/Slide;->_type:J

    long-to-int v1, v3

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    .line 15
    iget-object v0, p0, Lorg/apache/poi/hslf/record/Slide;->_header:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 16
    new-instance v0, Lorg/apache/poi/hslf/record/SlideAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/SlideAtom;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/Slide;->slideAtom:Lorg/apache/poi/hslf/record/SlideAtom;

    .line 17
    new-instance v0, Lorg/apache/poi/hslf/record/PPDrawing;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/PPDrawing;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hslf/record/Slide;->ppDrawing:Lorg/apache/poi/hslf/record/PPDrawing;

    .line 18
    new-instance v0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    invoke-direct {v0}, Lorg/apache/poi/hslf/record/ColorSchemeAtom;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/poi/hslf/record/Record;

    .line 19
    iget-object v4, p0, Lorg/apache/poi/hslf/record/Slide;->slideAtom:Lorg/apache/poi/hslf/record/SlideAtom;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lorg/apache/poi/hslf/record/Slide;->ppDrawing:Lorg/apache/poi/hslf/record/PPDrawing;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    iput-object v1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/SheetContainer;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 2
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/Slide;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 3
    invoke-static {p1, v0, p3}, Lorg/apache/poi/hslf/record/Record;->findChildRecords([BII)[Lorg/apache/poi/hslf/record/Record;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    .line 4
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    aget-object v0, p1, p3

    .line 5
    instance-of v1, v0, Lorg/apache/poi/hslf/record/SlideAtom;

    if-eqz v1, :cond_0

    .line 6
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hslf/record/SlideAtom;

    iput-object v1, p0, Lorg/apache/poi/hslf/record/Slide;->slideAtom:Lorg/apache/poi/hslf/record/SlideAtom;

    goto :goto_1

    .line 7
    :cond_0
    instance-of v1, v0, Lorg/apache/poi/hslf/record/PPDrawing;

    if-eqz v1, :cond_1

    .line 8
    move-object v1, v0

    check-cast v1, Lorg/apache/poi/hslf/record/PPDrawing;

    iput-object v1, p0, Lorg/apache/poi/hslf/record/Slide;->ppDrawing:Lorg/apache/poi/hslf/record/PPDrawing;

    .line 9
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/poi/hslf/record/Slide;->ppDrawing:Lorg/apache/poi/hslf/record/PPDrawing;

    if-eqz v1, :cond_2

    instance-of v1, v0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    if-eqz v1, :cond_2

    .line 10
    check-cast v0, Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    iput-object v0, p0, Lorg/apache/poi/hslf/record/Slide;->_colorScheme:Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getColorScheme()Lorg/apache/poi/hslf/record/ColorSchemeAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Slide;->_colorScheme:Lorg/apache/poi/hslf/record/ColorSchemeAtom;

    return-object p0
.end method

.method public getPPDrawing()Lorg/apache/poi/hslf/record/PPDrawing;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Slide;->ppDrawing:Lorg/apache/poi/hslf/record/PPDrawing;

    return-object p0
.end method

.method public getRecordType()J
    .locals 2

    sget-wide v0, Lorg/apache/poi/hslf/record/Slide;->_type:J

    return-wide v0
.end method

.method public getSlideAtom()Lorg/apache/poi/hslf/record/SlideAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/Slide;->slideAtom:Lorg/apache/poi/hslf/record/SlideAtom;

    return-object p0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/Slide;->_header:[B

    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/4 v1, 0x1

    aget-byte v4, v0, v1

    sget-wide v5, Lorg/apache/poi/hslf/record/Slide;->_type:J

    iget-object v7, p0, Lorg/apache/poi/hslf/record/RecordContainer;->_children:[Lorg/apache/poi/hslf/record/Record;

    move-object v2, p0

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/hslf/record/RecordContainer;->writeOut(BBJ[Lorg/apache/poi/hslf/record/Record;Ljava/io/OutputStream;)V

    return-void
.end method
