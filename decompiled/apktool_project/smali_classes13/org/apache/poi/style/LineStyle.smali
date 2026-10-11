.class public final enum Lorg/apache/poi/style/LineStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/style/LineStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/style/LineStyle;

.field public static final enum DASHED:Lorg/apache/poi/style/LineStyle;

.field public static final enum DOTTED:Lorg/apache/poi/style/LineStyle;

.field public static final enum DOUBLE:Lorg/apache/poi/style/LineStyle;

.field public static final enum INSET:Lorg/apache/poi/style/LineStyle;

.field public static final enum NONE:Lorg/apache/poi/style/LineStyle;

.field public static final enum OUTSET:Lorg/apache/poi/style/LineStyle;

.field public static final enum SOLID:Lorg/apache/poi/style/LineStyle;

.field public static final enum WAVY:Lorg/apache/poi/style/LineStyle;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/style/LineStyle;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/style/LineStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/style/LineStyle;->NONE:Lorg/apache/poi/style/LineStyle;

    new-instance v1, Lorg/apache/poi/style/LineStyle;

    const/4 v2, 0x1

    const-string v3, "dashed"

    const-string v4, "DASHED"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/style/LineStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/style/LineStyle;->DASHED:Lorg/apache/poi/style/LineStyle;

    new-instance v2, Lorg/apache/poi/style/LineStyle;

    const/4 v3, 0x2

    const-string v4, "dotted"

    const-string v5, "DOTTED"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/style/LineStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/style/LineStyle;->DOTTED:Lorg/apache/poi/style/LineStyle;

    new-instance v3, Lorg/apache/poi/style/LineStyle;

    const/4 v4, 0x3

    const-string v5, "solid"

    const-string v6, "SOLID"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/style/LineStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/style/LineStyle;->SOLID:Lorg/apache/poi/style/LineStyle;

    new-instance v4, Lorg/apache/poi/style/LineStyle;

    const/4 v5, 0x4

    const-string v6, "double"

    const-string v7, "DOUBLE"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/style/LineStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/style/LineStyle;->DOUBLE:Lorg/apache/poi/style/LineStyle;

    new-instance v5, Lorg/apache/poi/style/LineStyle;

    const/4 v6, 0x5

    const-string v7, "wavy"

    const-string v8, "WAVY"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/style/LineStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/style/LineStyle;->WAVY:Lorg/apache/poi/style/LineStyle;

    new-instance v6, Lorg/apache/poi/style/LineStyle;

    const/4 v7, 0x6

    const-string v8, "inset"

    const-string v9, "INSET"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/style/LineStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/style/LineStyle;->INSET:Lorg/apache/poi/style/LineStyle;

    new-instance v7, Lorg/apache/poi/style/LineStyle;

    const/4 v8, 0x7

    const-string v9, "outset"

    const-string v10, "OUTSET"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/style/LineStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/style/LineStyle;->OUTSET:Lorg/apache/poi/style/LineStyle;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/style/LineStyle;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/style/LineStyle;->$VALUES:[Lorg/apache/poi/style/LineStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/apache/poi/style/LineStyle;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/style/LineStyle;
    .locals 1

    const-class v0, Lorg/apache/poi/style/LineStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/LineStyle;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/style/LineStyle;
    .locals 1

    sget-object v0, Lorg/apache/poi/style/LineStyle;->$VALUES:[Lorg/apache/poi/style/LineStyle;

    invoke-virtual {v0}, [Lorg/apache/poi/style/LineStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/style/LineStyle;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/LineStyle;->value:Ljava/lang/String;

    return-object p0
.end method
