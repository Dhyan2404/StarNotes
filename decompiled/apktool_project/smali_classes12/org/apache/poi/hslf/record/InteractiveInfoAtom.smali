.class public Lorg/apache/poi/hslf/record/InteractiveInfoAtom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Link;,
        Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;,
        Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;
    }
.end annotation


# static fields
.field public static final ACTION_CUSTOMSHOW:B = 0x7t

.field public static final ACTION_HYPERLINK:B = 0x4t

.field public static final ACTION_JUMP:B = 0x3t

.field public static final ACTION_MACRO:B = 0x1t

.field public static final ACTION_MEDIA:B = 0x6t

.field public static final ACTION_NONE:B = 0x0t

.field public static final ACTION_OLE:B = 0x5t

.field public static final ACTION_RUNPROGRAM:B = 0x2t

.field private static final FLAGS_MASKS:[I

.field private static final FLAGS_NAMES:[Ljava/lang/String;

.field public static final JUMP_ENDSHOW:B = 0x6t

.field public static final JUMP_FIRSTSLIDE:B = 0x3t

.field public static final JUMP_LASTSLIDE:B = 0x4t

.field public static final JUMP_LASTSLIDEVIEWED:B = 0x5t

.field public static final JUMP_NEXTSLIDE:B = 0x1t

.field public static final JUMP_NONE:B = 0x0t

.field public static final JUMP_PREVIOUSSLIDE:B = 0x2t

.field public static final LINK_CustomShow:B = 0x6t

.field public static final LINK_FirstSlide:B = 0x2t

.field public static final LINK_LastSlide:B = 0x3t

.field public static final LINK_NULL:B = -0x1t

.field public static final LINK_NextSlide:B = 0x0t

.field public static final LINK_OtherFile:B = 0xat

.field public static final LINK_OtherPresentation:B = 0x9t

.field public static final LINK_PreviousSlide:B = 0x1t

.field public static final LINK_SlideNumber:B = 0x7t

.field public static final LINK_Url:B = 0x8t


# instance fields
.field private final _data:[B

.field private final _header:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->FLAGS_MASKS:[I

    const-string v0, "CUSTOM_SHOW_RETURN"

    const-string v1, "VISITED"

    const-string v2, "ANIMATED"

    const-string v3, "STOP_SOUND"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->FLAGS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_header:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 3
    iput-object v1, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->getRecordType()J

    move-result-wide v2

    long-to-int p0, v2

    int-to-short p0, p0

    const/4 v2, 0x2

    invoke-static {v0, v2, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 p0, 0x4

    .line 5
    array-length v1, v1

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    add-int/lit8 v0, p2, 0x8

    .line 7
    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_header:[B

    add-int/lit8 p3, p3, -0x8

    .line 8
    invoke-static {}, Lorg/apache/poi/hslf/record/RecordAtom;->getMaxRecordLength()I

    move-result p2

    invoke-static {p1, v0, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    .line 9
    array-length p0, p1

    const/16 p2, 0x10

    if-lt p0, p2, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The length of the data for a InteractiveInfoAtom must be at least 16 bytes, but was only "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAction()B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0x8

    aget-byte p0, p0, v0

    return p0
.end method

.method public getFlags()B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0xb

    aget-byte p0, p0, v0

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "hyperlinkID"

    new-instance v1, Lcom/sunia/HTREnginev2/poi;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/poi;-><init>(Lorg/apache/poi/hslf/record/InteractiveInfoAtom;)V

    const-string v2, "soundRef"

    new-instance v3, Lcom/sunia/HTREnginev2/qoi;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/qoi;-><init>(Lorg/apache/poi/hslf/record/InteractiveInfoAtom;)V

    const-string v4, "action"

    invoke-static {}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;->values()[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Action;

    move-result-object v5

    new-instance v6, Lcom/sunia/HTREnginev2/roi;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/roi;-><init>(Lorg/apache/poi/hslf/record/InteractiveInfoAtom;)V

    invoke-static {v5, v6}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object v5

    const-string v6, "jump"

    invoke-static {}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;->values()[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Jump;

    move-result-object v7

    new-instance v8, Lcom/sunia/HTREnginev2/soi;

    invoke-direct {v8, p0}, Lcom/sunia/HTREnginev2/soi;-><init>(Lorg/apache/poi/hslf/record/InteractiveInfoAtom;)V

    invoke-static {v7, v8}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;

    move-result-object v7

    const-string v8, "hyperlinkType"

    invoke-static {}, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Link;->values()[Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Link;

    move-result-object v9

    new-instance v10, Lcom/sunia/HTREnginev2/toi;

    invoke-direct {v10, p0}, Lcom/sunia/HTREnginev2/toi;-><init>(Lorg/apache/poi/hslf/record/InteractiveInfoAtom;)V

    sget-object v11, Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Link;->NULL:Lorg/apache/poi/hslf/record/InteractiveInfoAtom$Link;

    invoke-static {v9, v10, v11}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;Ljava/lang/Enum;)Ljava/util/function/Supplier;

    move-result-object v9

    const-string v10, "flags"

    new-instance v11, Lcom/sunia/HTREnginev2/uoi;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/uoi;-><init>(Lorg/apache/poi/hslf/record/InteractiveInfoAtom;)V

    sget-object p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->FLAGS_MASKS:[I

    sget-object v12, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->FLAGS_NAMES:[Ljava/lang/String;

    invoke-static {v11, p0, v12}, Lorg/apache/poi/util/GenericRecordUtil;->getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;

    move-result-object v11

    invoke-static/range {v0 .. v11}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getHyperlinkID()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public getHyperlinkType()B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0xc

    aget-byte p0, p0, v0

    return p0
.end method

.method public getJump()B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0xa

    aget-byte p0, p0, v0

    return p0
.end method

.method public getOleVerb()B
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0x9

    aget-byte p0, p0, v0

    return p0
.end method

.method public getRecordType()J
    .locals 2

    sget-object p0, Lorg/apache/poi/hslf/record/RecordTypes;->InteractiveInfoAtom:Lorg/apache/poi/hslf/record/RecordTypes;

    iget-short p0, p0, Lorg/apache/poi/hslf/record/RecordTypes;->typeID:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getSoundRef()I
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p0

    return p0
.end method

.method public setAction(B)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0x8

    aput-byte p1, p0, v0

    return-void
.end method

.method public setFlags(B)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0xb

    aput-byte p1, p0, v0

    return-void
.end method

.method public setHyperlinkID(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setHyperlinkType(B)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0xc

    aput-byte p1, p0, v0

    return-void
.end method

.method public setJump(B)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0xa

    aput-byte p1, p0, v0

    return-void
.end method

.method public setOleVerb(B)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/16 v0, 0x9

    aput-byte p1, p0, v0

    return-void
.end method

.method public setSoundRef(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public writeOut(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/InteractiveInfoAtom;->_data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
