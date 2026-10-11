.class public final Lorg/apache/poi/hwpf/model/OldFfn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final _chs:B

.field private final altFontName:Ljava/lang/String;

.field private final fontName:Ljava/lang/String;

.field private final length:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwpf/model/OldFfn;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/OldFfn;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lorg/apache/poi/hwpf/model/OldFfn;->_chs:B

    iput-object p2, p0, Lorg/apache/poi/hwpf/model/OldFfn;->fontName:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/hwpf/model/OldFfn;->altFontName:Ljava/lang/String;

    iput p4, p0, Lorg/apache/poi/hwpf/model/OldFfn;->length:I

    return-void
.end method

.method public static build([BII)Lorg/apache/poi/hwpf/model/OldFfn;
    .locals 9

    add-int/lit8 v0, p1, 0x6

    const/4 v1, 0x0

    if-le v0, p2, :cond_0

    return-object v1

    :cond_0
    aget-byte v0, p0, p1

    int-to-short v0, v0

    add-int/lit8 v2, p1, 0x1

    add-int v3, v2, v0

    if-le v3, p2, :cond_1

    sget-object p0, Lorg/apache/poi/hwpf/model/OldFfn;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Asked to read beyond font table end. Skipping font"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x3

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->valueOf(I)Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v5, Lorg/apache/poi/hwpf/model/OldFfn;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {v5}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object v5

    const-string v6, "Couldn\'t find font for type: {}"

    invoke-static {v4}, Lorg/apache/logging/log4j/util/Unbox;->box(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_3

    sget-object v4, Lorg/apache/poi/util/StringUtil;->WIN_1252:Ljava/nio/charset/Charset;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    move v5, v2

    :goto_1
    const/4 v6, -0x1

    if-ge v5, p2, :cond_5

    aget-byte v7, p0, v5

    if-nez v7, :cond_4

    sub-int/2addr v5, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_2
    if-ne v5, v6, :cond_6

    sget-object p0, Lorg/apache/poi/hwpf/model/OldFfn;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atWarn()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Couldn\'t find the zero-byte delimited font name length"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    return-object v1

    :cond_6
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0, v2, v5, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/lit8 v7, v5, 0x1

    add-int/2addr v2, v7

    sub-int v7, v2, p1

    if-ge v7, v0, :cond_a

    move v7, v2

    :goto_3
    add-int v8, p1, v0

    if-gt v7, v8, :cond_8

    aget-byte v8, p0, v7

    if-nez v8, :cond_7

    sub-int/2addr v7, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    move v7, v6

    :goto_4
    if-le v7, v6, :cond_9

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v2, v7, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :cond_9
    move v6, v7

    :cond_a
    if-gez v6, :cond_b

    const/4 p0, 0x0

    goto :goto_5

    :cond_b
    add-int/lit8 p0, v6, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x6

    add-int/2addr v5, p0

    add-int/lit8 v5, v5, 0x1

    new-instance p0, Lorg/apache/poi/hwpf/model/OldFfn;

    invoke-direct {p0, v3, p2, v1, v5}, Lorg/apache/poi/hwpf/model/OldFfn;-><init>(BLjava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public getAltFontName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/OldFfn;->altFontName:Ljava/lang/String;

    return-object p0
.end method

.method public getChs()B
    .locals 0

    iget-byte p0, p0, Lorg/apache/poi/hwpf/model/OldFfn;->_chs:B

    return p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hwpf/model/OldFfn;->length:I

    return p0
.end method

.method public getMainFontName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/OldFfn;->fontName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OldFfn{_chs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lorg/apache/poi/hwpf/model/OldFfn;->_chs:B

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/hwpf/model/OldFfn;->fontName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", altFontName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/hwpf/model/OldFfn;->altFontName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/poi/hwpf/model/OldFfn;->length:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
