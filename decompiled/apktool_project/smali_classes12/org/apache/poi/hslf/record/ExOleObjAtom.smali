.class public Lorg/apache/poi/hslf/record/ExOleObjAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;,
        Lorg/apache/poi/hslf/record/ExOleObjAtom$OleType;
    }
.end annotation


# static fields
.field private static final DRAWASPECT_MASKS:[I

.field private static final DRAWASPECT_NAMES:[Ljava/lang/String;

.field public static final DRAW_ASPECT_DOCPRINT:I = 0x8

.field public static final DRAW_ASPECT_ICON:I = 0x4

.field public static final DRAW_ASPECT_THUMBNAIL:I = 0x2

.field public static final DRAW_ASPECT_VISIBLE:I = 0x1

.field private static final MAX_RECORD_LENGTH:I = 0xa00000

.field public static final SUBTYPE_CLIPART_GALLERY:I = 0x1

.field public static final SUBTYPE_DEFAULT:I = 0x0

.field public static final SUBTYPE_EQUATION:I = 0x6

.field public static final SUBTYPE_EXCEL:I = 0x3

.field public static final SUBTYPE_EXCEL_CHART:I = 0xe

.field public static final SUBTYPE_GRAPH:I = 0x4

.field public static final SUBTYPE_IMAGE:I = 0x9

.field public static final SUBTYPE_MEDIA_PLAYER:I = 0xf

.field public static final SUBTYPE_NOTEIT:I = 0xd

.field public static final SUBTYPE_ORGANIZATION_CHART:I = 0x5

.field public static final SUBTYPE_POWERPOINT_PRESENTATION:I = 0xa

.field public static final SUBTYPE_POWERPOINT_SLIDE:I = 0xb

.field public static final SUBTYPE_PROJECT:I = 0xc

.field public static final SUBTYPE_SOUND:I = 0x8

.field public static final SUBTYPE_WORDART:I = 0x7

.field public static final SUBTYPE_WORD_TABLE:I = 0x2

.field public static final TYPE_CONTROL:I = 0x2

.field public static final TYPE_EMBEDDED:I = 0x0

.field public static final TYPE_LINKED:I = 0x1


# instance fields
.field private _data:[B

.field private _header:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->DRAWASPECT_MASKS:[I

    const-string v0, "ICON"

    const-string v1, "DOCPRINT"

    const-string v2, "CONTENT"

    const-string v3, "THUMBNAIL"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->DRAWASPECT_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_header:[B

    const/16 v1, 0x18

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 5
    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_header:[B

    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/ExOleObjAtom;->getRecordType()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 6
    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    array-length p0, p0

    const/4 v1, 0x4

    invoke-static {v0, v1, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 8
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    const/high16 p2, 0xa00000

    .line 9
    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    .line 10
    array-length p1, p1

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The length of the data for a ExOleObjAtom must be at least 24 bytes, but was only "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDrawAspect()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "drawAspect"

    new-instance v1, Lcom/sunia/HTREnginev2/uxf;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/uxf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjAtom;)V

    sget-object v2, Lorg/apache/poi/hslf/record/ExOleObjAtom;->DRAWASPECT_MASKS:[I

    sget-object v3, Lorg/apache/poi/hslf/record/ExOleObjAtom;->DRAWASPECT_NAMES:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v1

    const-string v2, "type"

    invoke-static {}, Lorg/apache/poi/hslf/record/ExOleObjAtom$OleType;->values()[Lorg/apache/poi/hslf/record/ExOleObjAtom$OleType;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/vxf;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/vxf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjAtom;)V

    invoke-static {v3, v4}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object v3

    const-string v4, "objID"

    new-instance v5, Lcom/sunia/HTREnginev2/wxf;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/wxf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjAtom;)V

    const-string v6, "subType"

    invoke-static {}, Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;->values()[Lorg/apache/poi/hslf/record/ExOleObjAtom$Subtype;

    move-result-object v7

    new-instance v8, Lcom/sunia/HTREnginev2/xxf;

    invoke-direct {v8, p0}, Lcom/sunia/HTREnginev2/xxf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjAtom;)V

    invoke-static {v7, v8}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object v7

    const-string v8, "objStgDataRef"

    new-instance v9, Lcom/sunia/HTREnginev2/yxf;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/yxf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjAtom;)V

    const-string v10, "options"

    new-instance v11, Lcom/sunia/HTREnginev2/zxf;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/zxf;-><init>(Lorg/apache/poi/hslf/record/ExOleObjAtom;)V

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getIsBlank()Z
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getObjID()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getObjStgDataRef()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getOptions()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->ExOleObjAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getSubType()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/16 v0, 0xc

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public setDrawAspect(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setObjID(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/16 v0, 0x8

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setObjStgDataRef(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/16 v0, 0x10

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setOptions(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/16 v0, 0x14

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setSubType(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/ExOleObjAtom;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
