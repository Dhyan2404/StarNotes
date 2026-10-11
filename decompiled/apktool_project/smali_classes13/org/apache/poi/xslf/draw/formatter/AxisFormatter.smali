.class public abstract Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;
.implements Lcom/github/mikephil/charting/formatter/IValueFormatter;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected formatType:Lorg/apache/poi/xslf/draw/formatter/FormatType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/xslf/draw/formatter/FormatType;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->TAG:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->data:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->formatType:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xslf/draw/formatter/FormatType;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;-><init>(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)V

    return-void
.end method

.method public static create(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/poi/xslf/draw/formatter/FormatType;",
            ")",
            "Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter$1;->$SwitchMap$org$apache$poi$xslf$draw$formatter$FormatType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Lorg/apache/poi/xslf/draw/formatter/NormalAxisFormatter;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/formatter/NormalAxisFormatter;-><init>(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lorg/apache/poi/xslf/draw/formatter/PercentAxisFormatter;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/formatter/PercentAxisFormatter;-><init>(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/xslf/draw/formatter/DateAxisFormatter;-><init>(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)V

    return-object v0
.end method

.method public static create(Lorg/apache/poi/xslf/draw/formatter/FormatType;)Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;->create(Ljava/util/List;Lorg/apache/poi/xslf/draw/formatter/FormatType;)Lorg/apache/poi/xslf/draw/formatter/AxisFormatter;

    move-result-object p0

    return-object p0
.end method
