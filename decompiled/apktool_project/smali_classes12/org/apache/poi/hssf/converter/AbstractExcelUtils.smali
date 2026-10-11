.class Lorg/apache/poi/hssf/converter/AbstractExcelUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final EMPTY:Ljava/lang/String; = ""

.field private static final EXCEL_COLUMN_WIDTH_FACTOR:S = 0x100s

.field private static final UNIT_OFFSET_LENGTH:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendAlign(Ljava/lang/StringBuilder;Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/hssf/converter/AbstractExcelUtils;->getAlign(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/hssf/converter/AbstractExcelUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "text-align:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static buildMergedRangesMap(Lorg/apache/poi/ss/usermodel/Sheet;)[[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [[Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v3

    add-int/2addr v3, v0

    array-length v4, v1

    if-ge v4, v3, :cond_1

    const-class v4, [[Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/poi/ss/util/CellRangeAddress;

    :cond_1
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    :goto_0
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v4

    if-gt v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v4

    add-int/2addr v4, v0

    aget-object v5, v1, v3

    if-nez v5, :cond_2

    new-array v5, v4, [Lorg/apache/poi/ss/util/CellRangeAddress;

    aput-object v5, v1, v3

    goto :goto_1

    :cond_2
    array-length v6, v5

    if-ge v6, v4, :cond_3

    const-class v6, [Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {v5, v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, [Lorg/apache/poi/ss/util/CellRangeAddress;

    aput-object v5, v1, v3

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v5, v4, v6, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static getAlign(Lorg/apache/poi/ss/usermodel/HorizontalAlignment;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/converter/AbstractExcelUtils$1;->$SwitchMap$org$apache$poi$ss$usermodel$HorizontalAlignment:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "right"

    return-object p0

    :cond_1
    const-string p0, "left"

    return-object p0

    :cond_2
    const-string p0, "justify"

    return-object p0

    :cond_3
    const-string p0, "center"

    return-object p0
.end method

.method public static getBorderStyle(Lorg/apache/poi/ss/usermodel/BorderStyle;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/converter/AbstractExcelUtils$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderStyle:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "solid"

    goto :goto_0

    :pswitch_0
    const-string p0, "double"

    goto :goto_0

    :pswitch_1
    const-string p0, "dashed"

    goto :goto_0

    :pswitch_2
    const-string p0, "dotted"

    goto :goto_0

    :pswitch_3
    const-string p0, "none"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBorderWidth(Lorg/apache/poi/ss/usermodel/BorderStyle;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/converter/AbstractExcelUtils$1;->$SwitchMap$org$apache$poi$ss$usermodel$BorderStyle:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const-string p0, "thin"

    goto :goto_0

    :cond_0
    const-string p0, "thick"

    goto :goto_0

    :cond_1
    const-string p0, "2pt"

    :goto_0
    return-object p0
.end method

.method public static getColor(Lorg/apache/poi/hssf/util/HSSFColor;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/util/HSSFColor;->getTriplet()[S

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-short v3, p0, v2

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "#ffffff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "white"

    return-object p0

    :cond_2
    const-string v0, "#c0c0c0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "silver"

    return-object p0

    :cond_3
    const-string v0, "#808080"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "gray"

    return-object p0

    :cond_4
    const-string v0, "#000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "black"

    :cond_5
    return-object p0
.end method

.method public static getColumnWidthInPx(I)I
    .locals 2

    div-int/lit16 v0, p0, 0x100

    mul-int/lit8 v0, v0, 0x7

    rem-int/lit16 p0, p0, 0x100

    int-to-float p0, p0

    const v1, 0x42124925

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getMergedRange([[Lorg/apache/poi/ss/util/CellRangeAddress;II)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    array-length p1, p0

    if-ge p2, p1, :cond_1

    aget-object v1, p0, p2

    :cond_1
    return-object v1
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/hssf/converter/AbstractExcelUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static loadXls(Ljava/io/File;)Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
