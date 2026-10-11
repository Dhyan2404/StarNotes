.class public final Lorg/apache/poi/hwpf/model/OldFontTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private final _fontNames:[Lorg/apache/poi/hwpf/model/OldFfn;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hwpf/model/OldFontTable;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hwpf/model/OldFontTable;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    add-int/2addr p3, p2

    add-int/lit8 p2, p2, 0x2

    :goto_0
    invoke-static {p1, p2, p3}, Lorg/apache/poi/hwpf/model/OldFfn;->build([BII)Lorg/apache/poi/hwpf/model/OldFfn;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Lorg/apache/poi/hwpf/model/OldFfn;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hwpf/model/OldFfn;

    iput-object p1, p0, Lorg/apache/poi/hwpf/model/OldFontTable;->_fontNames:[Lorg/apache/poi/hwpf/model/OldFfn;

    return-void

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/apache/poi/hwpf/model/OldFfn;->getLength()I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0
.end method


# virtual methods
.method public getFontNames()[Lorg/apache/poi/hwpf/model/OldFfn;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/OldFontTable;->_fontNames:[Lorg/apache/poi/hwpf/model/OldFfn;

    return-object p0
.end method

.method public getMainFont(I)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/OldFontTable;->_fontNames:[Lorg/apache/poi/hwpf/model/OldFfn;

    array-length v0, p0

    if-lt p1, v0, :cond_0

    sget-object p0, Lorg/apache/poi/hwpf/model/OldFontTable;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p0}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p0

    const-string p1, "Mismatch in chpFtc with stringCount"

    invoke-interface {p0, p1}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/poi/hwpf/model/OldFfn;->getMainFontName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OldFontTable{_fontNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/hwpf/model/OldFontTable;->_fontNames:[Lorg/apache/poi/hwpf/model/OldFfn;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
