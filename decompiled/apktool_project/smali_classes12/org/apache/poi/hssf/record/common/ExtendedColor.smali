.class public final Lorg/apache/poi/hssf/record/common/ExtendedColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/Duplicatable;
.implements Lorg/apache/poi/common/usermodel/GenericRecord;


# static fields
.field public static final THEME_ACCENT_1:I = 0x4

.field public static final THEME_ACCENT_2:I = 0x5

.field public static final THEME_ACCENT_3:I = 0x6

.field public static final THEME_ACCENT_4:I = 0x7

.field public static final THEME_ACCENT_5:I = 0x8

.field public static final THEME_ACCENT_6:I = 0x9

.field public static final THEME_DARK_1:I = 0x0

.field public static final THEME_DARK_2:I = 0x2

.field public static final THEME_FOLLOWED_HYPERLINK:I = 0xb

.field public static final THEME_HYPERLINK:I = 0xa

.field public static final THEME_LIGHT_1:I = 0x1

.field public static final THEME_LIGHT_2:I = 0x3

.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_INDEXED:I = 0x1

.field public static final TYPE_RGB:I = 0x2

.field public static final TYPE_THEMED:I = 0x3

.field public static final TYPE_UNSET:I = 0x4


# instance fields
.field private colorIndex:I

.field private rgba:[B

.field private themeIndex:I

.field private tint:D

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget v0, p1, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    .line 7
    iget-wide v0, p1, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    .line 8
    iget v0, p1, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    .line 9
    iget-object v0, p1, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    .line 10
    iget p1, p1, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 13
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    .line 15
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 16
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    goto :goto_0

    .line 17
    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    .line 18
    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/poi/common/Duplicatable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->copy()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    return-object v0
.end method

.method public getColorIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    return p0
.end method

.method public getDataLength()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getGenericProperties()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    const-string v0, "type"

    new-instance v1, Lcom/sunia/HTREnginev2/v3g;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/v3g;-><init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    const-string v2, "tint"

    new-instance v3, Lcom/sunia/HTREnginev2/w3g;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/w3g;-><init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    const-string v4, "colorIndex"

    new-instance v5, Lcom/sunia/HTREnginev2/x3g;

    invoke-direct {v5, p0}, Lcom/sunia/HTREnginev2/x3g;-><init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    const-string v6, "rgba"

    new-instance v7, Lcom/sunia/HTREnginev2/y3g;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/y3g;-><init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    const-string v8, "themeIndex"

    new-instance v9, Lcom/sunia/HTREnginev2/z3g;

    invoke-direct {v9, p0}, Lcom/sunia/HTREnginev2/z3g;-><init>(Lorg/apache/poi/hssf/record/common/ExtendedColor;)V

    invoke-static/range {v0 .. v9}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRGBA()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    return-object p0
.end method

.method public getThemeIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    return p0
.end method

.method public getTint()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    return-wide v0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    return p0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    :goto_0
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    return-void
.end method

.method public setColorIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    return-void
.end method

.method public setRGBA([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    return-void
.end method

.method public setThemeIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    return-void
.end method

.method public setTint(D)V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tint/Shade must be between -1 and +1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/util/GenericRecordJsonWriter;->marshal(Lorg/apache/poi/common/usermodel/GenericRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
