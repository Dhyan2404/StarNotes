.class public final Lorg/apache/poi/hwpf/model/StyleSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NIL_CHP:Lorg/apache/poi/hwpf/usermodel/CharacterProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NIL_CHPX:[B

.field private static final NIL_PAP:Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final NIL_PAPX:[B

.field public static final NIL_STYLE:I = 0xfff


# instance fields
.field private _cbStshi:I

.field private final _stshif:Lorg/apache/poi/hwpf/model/Stshif;

.field _styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;-><init>()V

    sput-object v0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAP:Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    new-instance v0, Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    invoke-direct {v0}, Lorg/apache/poi/hwpf/usermodel/CharacterProperties;-><init>()V

    sput-object v0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHP:Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHPX:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAPX:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_cbStshi:I

    add-int/lit8 p2, p2, 0x2

    new-instance v0, Lorg/apache/poi/hwpf/model/Stshif;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hwpf/model/Stshif;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_stshif:Lorg/apache/poi/hwpf/model/Stshif;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/StshifAbstractType;->getCstd()I

    move-result v1

    if-ltz v1, :cond_4

    iget v1, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_cbStshi:I

    add-int/2addr p2, v1

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/StshifAbstractType;->getCstd()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/hwpf/model/StyleDescription;

    iput-object v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_stshif:Lorg/apache/poi/hwpf/model/Stshif;

    invoke-virtual {v2}, Lorg/apache/poi/hwpf/model/types/StshifAbstractType;->getCstd()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    add-int/lit8 p2, p2, 0x2

    if-lez v2, :cond_0

    new-instance v3, Lorg/apache/poi/hwpf/model/StyleDescription;

    iget-object v4, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_stshif:Lorg/apache/poi/hwpf/model/Stshif;

    invoke-virtual {v4}, Lorg/apache/poi/hwpf/model/types/StshifAbstractType;->getCbSTDBaseInFile()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, p1, v4, p2, v5}, Lorg/apache/poi/hwpf/model/StyleDescription;-><init>([BIIZ)V

    iget-object v4, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aput-object v3, v4, v1

    :cond_0
    add-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length p2, p1

    if-ge v0, p2, :cond_3

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/model/StyleSheet;->createPap(I)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hwpf/model/StyleSheet;->createChp(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot create StyleSheet, invalid Cstd: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/types/StshifAbstractType;->getCstd()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createChp(I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aget-object v0, v0, p1

    const-string v1, " descriptions"

    const-string v2, "Cannot create Chp, empty styleDescription, had : "

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getCHP()Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getCHPX()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getBaseStyle()I

    move-result v5

    const/16 v6, 0xfff

    if-ne v5, p1, :cond_0

    move v5, v6

    :cond_0
    if-nez v3, :cond_4

    if-eqz v4, :cond_4

    new-instance p1, Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    invoke-direct {p1}, Lorg/apache/poi/hwpf/usermodel/CharacterProperties;-><init>()V

    if-eq v5, v6, :cond_3

    iget-object p1, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aget-object p1, p1, v5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/StyleDescription;->getCHP()Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, v5}, Lorg/apache/poi/hwpf/model/StyleSheet;->createChp(I)V

    invoke-virtual {p1}, Lorg/apache/poi/hwpf/model/StyleDescription;->getCHP()Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    move-result-object p0

    move-object p1, p0

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_3

    new-instance p1, Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    invoke-direct {p1}, Lorg/apache/poi/hwpf/usermodel/CharacterProperties;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    invoke-static {p1, v4, p0}, Lorg/apache/poi/hwpf/sprm/CharacterSprmUncompressor;->uncompressCHP(Lorg/apache/poi/hwpf/usermodel/CharacterProperties;[BI)Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hwpf/model/StyleDescription;->setCHP(Lorg/apache/poi/hwpf/usermodel/CharacterProperties;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createPap(I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aget-object v0, v0, p1

    const-string v1, " descriptions"

    const-string v2, "Cannot create Pap, empty styleDescription, had : "

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getPAP()Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getPAPX()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getBaseStyle()I

    move-result v5

    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    new-instance v3, Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    invoke-direct {v3}, Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;-><init>()V

    const/16 v6, 0xfff

    if-eq v5, v6, :cond_3

    iget-object v3, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aget-object v3, v3, v5

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/StyleDescription;->getPAP()Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    move-result-object v1

    if-nez v1, :cond_1

    if-eq v5, p1, :cond_0

    invoke-direct {p0, v5}, Lorg/apache/poi/hwpf/model/StyleSheet;->createPap(I)V

    invoke-virtual {v3}, Lorg/apache/poi/hwpf/model/StyleDescription;->getPAP()Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pap style "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " claimed to have itself as its parent, which isn\'t allowed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v3, v1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-nez v3, :cond_4

    new-instance v3, Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    invoke-direct {v3}, Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;-><init>()V

    :cond_4
    const/4 p0, 0x2

    invoke-static {v3, v4, p0}, Lorg/apache/poi/hwpf/sprm/ParagraphSprmUncompressor;->uncompressPAP(Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;[BI)Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hwpf/model/StyleDescription;->setPAP(Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/hwpf/model/StyleSheet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hwpf/model/StyleSheet;

    iget-object v0, p1, Lorg/apache/poi/hwpf/model/StyleSheet;->_stshif:Lorg/apache/poi/hwpf/model/Stshif;

    iget-object v2, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_stshif:Lorg/apache/poi/hwpf/model/Stshif;

    invoke-virtual {v0, v2}, Lorg/apache/poi/hwpf/model/Stshif;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p1, Lorg/apache/poi/hwpf/model/StyleSheet;->_cbStshi:I

    iget v2, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_cbStshi:I

    if-ne v0, v2, :cond_6

    iget-object v0, p1, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length v0, v0

    iget-object v2, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    goto :goto_3

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aget-object v3, v3, v0

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lorg/apache/poi/hwpf/model/StyleDescription;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_3
    return v1
.end method

.method public getCHPX(I)[B
    .locals 2

    const/16 v0, 0xfff

    if-ne p1, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHPX:[B

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHPX:[B

    return-object p0

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHPX:[B

    return-object p0

    :cond_2
    aget-object v0, v0, p1

    if-nez v0, :cond_3

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHPX:[B

    return-object p0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getCHPX()[B

    move-result-object v0

    if-nez v0, :cond_4

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHPX:[B

    return-object p0

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getCHPX()[B

    move-result-object p0

    return-object p0
.end method

.method public getCharacterStyle(I)Lorg/apache/poi/hwpf/usermodel/CharacterProperties;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xfff

    if-ne p1, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHP:Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length v0, p0

    if-lt p1, v0, :cond_1

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHP:Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHP:Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    return-object p0

    :cond_2
    aget-object p0, p0, p1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getCHP()Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_CHP:Lorg/apache/poi/hwpf/usermodel/CharacterProperties;

    :goto_0
    return-object p0
.end method

.method public getPAPX(I)[B
    .locals 2

    const/16 v0, 0xfff

    if-ne p1, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAPX:[B

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAPX:[B

    return-object p0

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAPX:[B

    return-object p0

    :cond_2
    aget-object v0, v0, p1

    if-nez v0, :cond_3

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAPX:[B

    return-object p0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getPAPX()[B

    move-result-object v0

    if-nez v0, :cond_4

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAPX:[B

    return-object p0

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getPAPX()[B

    move-result-object p0

    return-object p0
.end method

.method public getParagraphStyle(I)Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xfff

    if-ne p1, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAP:Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAP:Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    return-object p0

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAP:Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    return-object p0

    :cond_2
    aget-object v0, v0, p1

    if-nez v0, :cond_3

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAP:Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    return-object p0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getPAP()Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object p0, Lorg/apache/poi/hwpf/model/StyleSheet;->NIL_PAP:Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    return-object p0

    :cond_4
    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/StyleDescription;->getPAP()Lorg/apache/poi/hwpf/usermodel/ParagraphProperties;

    move-result-object p0

    return-object p0
.end method

.method public getStyleDescription(I)Lorg/apache/poi/hwpf/model/StyleDescription;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public numStyles()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length p0, p0

    return p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    iput v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_cbStshi:I

    const/16 v1, 0x12

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    int-to-short v0, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_stshif:Lorg/apache/poi/hwpf/model/Stshif;

    iget-object v4, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length v4, v4

    invoke-virtual {v0, v4}, Lorg/apache/poi/hwpf/model/types/StshifAbstractType;->setCstd(I)V

    iget-object v0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_stshif:Lorg/apache/poi/hwpf/model/Stshif;

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hwpf/model/types/StshifAbstractType;->serialize([BI)V

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    new-array v0, v2, [B

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/StyleSheet;->_styleDescriptions:[Lorg/apache/poi/hwpf/model/StyleDescription;

    array-length v1, p0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p0, v4

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/apache/poi/hwpf/model/StyleDescription;->toByteArray()[B

    move-result-object v5

    array-length v7, v5

    array-length v8, v5

    rem-int/2addr v8, v2

    add-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v0, v3, v7}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    array-length v5, v5

    rem-int/2addr v5, v2

    if-ne v5, v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    aput-byte v3, v0, v3

    aput-byte v3, v0, v6

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
