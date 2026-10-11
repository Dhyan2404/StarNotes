.class public final enum Lorg/apache/poi/xslf/draw/formatter/FormatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/xslf/draw/formatter/FormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/xslf/draw/formatter/FormatType;

.field public static final enum CUSTOM:Lorg/apache/poi/xslf/draw/formatter/FormatType;

.field public static final enum DATE:Lorg/apache/poi/xslf/draw/formatter/FormatType;

.field public static final enum GENERAL:Lorg/apache/poi/xslf/draw/formatter/FormatType;

.field public static final enum NONE:Lorg/apache/poi/xslf/draw/formatter/FormatType;

.field public static final enum PERCENT:Lorg/apache/poi/xslf/draw/formatter/FormatType;


# instance fields
.field private format:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xslf/draw/formatter/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->NONE:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    new-instance v1, Lorg/apache/poi/xslf/draw/formatter/FormatType;

    const-string v2, "GENERAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/xslf/draw/formatter/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/xslf/draw/formatter/FormatType;->GENERAL:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    new-instance v2, Lorg/apache/poi/xslf/draw/formatter/FormatType;

    const-string v3, "PERCENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/xslf/draw/formatter/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/xslf/draw/formatter/FormatType;->PERCENT:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    new-instance v3, Lorg/apache/poi/xslf/draw/formatter/FormatType;

    const-string v4, "DATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/xslf/draw/formatter/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/xslf/draw/formatter/FormatType;->DATE:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    new-instance v4, Lorg/apache/poi/xslf/draw/formatter/FormatType;

    const-string v5, "CUSTOM"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/xslf/draw/formatter/FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/xslf/draw/formatter/FormatType;->CUSTOM:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/xslf/draw/formatter/FormatType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->$VALUES:[Lorg/apache/poi/xslf/draw/formatter/FormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->NONE:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    goto :goto_0

    :cond_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->PERCENT:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    goto :goto_0

    :cond_1
    const-string v0, "yyyy/m/d"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->DATE:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    goto :goto_0

    :cond_2
    const-string v0, "General"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->GENERAL:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->CUSTOM:Lorg/apache/poi/xslf/draw/formatter/FormatType;

    :goto_0
    invoke-virtual {v0, p0}, Lorg/apache/poi/xslf/draw/formatter/FormatType;->setFormat(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;
    .locals 1

    const-class v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/xslf/draw/formatter/FormatType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/xslf/draw/formatter/FormatType;
    .locals 1

    sget-object v0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->$VALUES:[Lorg/apache/poi/xslf/draw/formatter/FormatType;

    invoke-virtual {v0}, [Lorg/apache/poi/xslf/draw/formatter/FormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/xslf/draw/formatter/FormatType;

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->format:Ljava/lang/String;

    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lorg/apache/poi/xslf/draw/formatter/FormatType;
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xslf/draw/formatter/FormatType;->format:Ljava/lang/String;

    return-object p0
.end method
