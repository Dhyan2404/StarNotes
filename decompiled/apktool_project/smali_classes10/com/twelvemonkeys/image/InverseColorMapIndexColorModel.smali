.class public Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;
.super Ljava/awt/image/IndexColorModel;
.source "SourceFile"


# static fields
.field public static final f:I = 0x80

.field public static final g:I = 0xffffff

.field public static final h:I = 0xffffff


# instance fields
.field public e:I

.field protected inverseMap:Lcom/sunia/HTREnginev2/ppi;

.field protected mapSize:I

.field protected rgbs:[I


# direct methods
.method public constructor <init>(II[B[B[B)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p5}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->inverseMap:Lcom/sunia/HTREnginev2/ppi;

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->e:I

    .line 26
    invoke-static {p0}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->a(Ljava/awt/image/IndexColorModel;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->rgbs:[I

    .line 27
    array-length p2, p1

    iput p2, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->mapSize:I

    .line 28
    new-instance p2, Lcom/sunia/HTREnginev2/ppi;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/ppi;-><init>([I)V

    iput-object p2, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->inverseMap:Lcom/sunia/HTREnginev2/ppi;

    .line 29
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->b()I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->e:I

    return-void
.end method

.method public constructor <init>(II[B[B[BI)V
    .locals 0

    .line 16
    invoke-direct/range {p0 .. p6}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[BI)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->inverseMap:Lcom/sunia/HTREnginev2/ppi;

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->e:I

    .line 19
    invoke-static {p0}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->a(Ljava/awt/image/IndexColorModel;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->rgbs:[I

    .line 20
    array-length p2, p1

    iput p2, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->mapSize:I

    .line 21
    new-instance p2, Lcom/sunia/HTREnginev2/ppi;

    invoke-direct {p2, p1, p6}, Lcom/sunia/HTREnginev2/ppi;-><init>([II)V

    iput-object p2, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->inverseMap:Lcom/sunia/HTREnginev2/ppi;

    .line 22
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->b()I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->e:I

    return-void
.end method

.method public constructor <init>(II[IIZII)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p7}, Ljava/awt/image/IndexColorModel;-><init>(II[IIZII)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->inverseMap:Lcom/sunia/HTREnginev2/ppi;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->e:I

    .line 12
    invoke-static {p0}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->a(Ljava/awt/image/IndexColorModel;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->rgbs:[I

    .line 13
    array-length p2, p1

    iput p2, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->mapSize:I

    .line 14
    new-instance p2, Lcom/sunia/HTREnginev2/ppi;

    invoke-direct {p2, p1, p6}, Lcom/sunia/HTREnginev2/ppi;-><init>([II)V

    iput-object p2, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->inverseMap:Lcom/sunia/HTREnginev2/ppi;

    .line 15
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->b()I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/IndexColorModel;)V
    .locals 1

    const-string v0, "color model"

    .line 1
    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/IndexColorModel;

    invoke-static {p1}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->a(Ljava/awt/image/IndexColorModel;)[I

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;-><init>(Ljava/awt/image/IndexColorModel;[I)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/IndexColorModel;[I)V
    .locals 9

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/IndexColorModel;->getComponentSize()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v3, v0, v1

    invoke-virtual {p1}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v4

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getTransferType()I

    move-result v7

    invoke-virtual {p1}, Ljava/awt/image/IndexColorModel;->getValidPixels()Ljava/math/BigInteger;

    move-result-object v8

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Ljava/awt/image/IndexColorModel;-><init>(II[IIILjava/math/BigInteger;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->inverseMap:Lcom/sunia/HTREnginev2/ppi;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->e:I

    .line 5
    iput-object p2, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->rgbs:[I

    .line 6
    array-length p1, p2

    iput p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->mapSize:I

    .line 7
    new-instance p1, Lcom/sunia/HTREnginev2/ppi;

    invoke-direct {p1, p2}, Lcom/sunia/HTREnginev2/ppi;-><init>([I)V

    iput-object p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->inverseMap:Lcom/sunia/HTREnginev2/ppi;

    .line 8
    invoke-virtual {p0}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->b()I

    move-result p1

    iput p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->e:I

    return-void
.end method

.method public static a(Ljava/awt/image/IndexColorModel;)[I
    .locals 1

    invoke-virtual {p0}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Ljava/awt/image/IndexColorModel;->getRGBs([I)V

    return-object v0
.end method

.method public static create(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/qji;->d(Ljava/awt/Image;II)Ljava/awt/image/IndexColorModel;

    move-result-object p0

    instance-of p1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;-><init>(Ljava/awt/image/IndexColorModel;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final b()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->rgbs:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getDataElements(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x80

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/awt/image/IndexColorModel;->getTransparentPixel()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/awt/image/IndexColorModel;->getTransparentPixel()I

    move-result p1

    goto :goto_0

    :cond_0
    const v0, 0xffffff

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->e:I

    if-eq v0, v2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->inverseMap:Lcom/sunia/HTREnginev2/ppi;

    invoke-virtual {v0, p1}, Lcom/sunia/HTREnginev2/ppi;->a(I)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;->installpixel(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final installpixel(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ljava/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    if-nez p1, :cond_0

    new-array p1, v2, [I

    move-object p0, p1

    goto :goto_0

    :cond_0
    move-object p0, p1

    check-cast p0, [I

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_0
    aput p2, p1, v1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This method has not been implemented for transferType "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-nez p1, :cond_3

    new-array p1, v2, [S

    move-object p0, p1

    goto :goto_1

    :cond_3
    move-object p0, p1

    check-cast p0, [S

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_1
    int-to-short p2, p2

    aput-short p2, p1, v1

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    new-array p1, v2, [B

    move-object p0, p1

    goto :goto_2

    :cond_5
    move-object p0, p1

    check-cast p0, [B

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_2
    int-to-byte p2, p2

    aput-byte p2, p1, v1

    :goto_3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/awt/image/IndexColorModel;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IndexColorModel: "

    invoke-static {v0, v1, p0}, Lcom/twelvemonkeys/lang/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
