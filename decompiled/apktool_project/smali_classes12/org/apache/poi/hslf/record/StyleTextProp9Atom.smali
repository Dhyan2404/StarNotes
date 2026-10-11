.class public final Lorg/apache/poi/hslf/record/StyleTextProp9Atom;
.super Lorg/apache/poi/hslf/record/RecordAtom;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0x186a0

.field private static MAX_RECORD_LENGTH:I = 0x186a0


# instance fields
.field private final autoNumberSchemes:[Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

.field private data:[B

.field private header:[B

.field private length:I

.field private recordId:S

.field private version:S


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/RecordAtom;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->header:[B

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->version:S

    iget-object p2, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->header:[B

    const/4 v3, 0x2

    invoke-static {p2, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->recordId:S

    iget-object p2, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->header:[B

    const/4 v3, 0x4

    invoke-static {p2, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->length:I

    add-int/lit8 p3, p3, -0x8

    sget p2, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->MAX_RECORD_LENGTH:I

    invoke-static {p1, v1, p3, p2}, Lorg/apache/poi/util/IOUtils;->safelyClone([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    move p1, v2

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    array-length p2, p2

    if-ge p1, p2, :cond_4

    new-instance p2, Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

    iget-object p3, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    invoke-direct {p2, p3, p1}, Lorg/apache/poi/hslf/model/textproperties/TextPFException9;-><init>([BI)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lorg/apache/poi/hslf/model/textproperties/TextPFException9;->getRecordLength()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p2, p1, 0x4

    iget-object p3, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    array-length v1, p3

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3, p1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    add-int/lit8 p1, p2, 0x4

    iget-object p3, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    array-length v1, p3

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p3, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, 0x2

    :cond_3
    add-int/lit8 p2, p1, 0x4

    iget-object p3, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    array-length p3, p3

    if-lt p2, p3, :cond_0

    :cond_4
    :goto_0
    new-array p1, v2, [Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->autoNumberSchemes:[Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public getAutoNumberTypes()[Lorg/apache/poi/hslf/model/textproperties/TextPFException9;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->autoNumberSchemes:[Lorg/apache/poi/hslf/model/textproperties/TextPFException9;

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

    new-instance v0, Lcom/sunia/HTREnginev2/i3n;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/i3n;-><init>(Lorg/apache/poi/hslf/record/StyleTextProp9Atom;)V

    const-string p0, "autoNumberSchemes"

    invoke-static {p0, v0}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->length:I

    return p0
.end method

.method public getRecordType()J
    .locals 2

    iget-short p0, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->recordId:S

    int-to-long v0, p0

    return-wide v0
.end method

.method public getVersion()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->version:S

    return p0
.end method

.method public reset(I)V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    const/4 v0, 0x1

    const/4 v2, 0x4

    invoke-static {p1, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    const/16 v0, 0x8

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object p1, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->header:[B

    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    array-length p0, p0

    invoke-static {p1, v2, p0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

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

    iget-object v0, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->header:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object p0, p0, Lorg/apache/poi/hslf/record/StyleTextProp9Atom;->data:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
