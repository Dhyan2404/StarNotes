.class public final enum Lorg/apache/poi/style/TextVerAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/style/TextVerAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/style/TextVerAlign;

.field public static final enum AUTO:Lorg/apache/poi/style/TextVerAlign;

.field public static final enum BASELINE:Lorg/apache/poi/style/TextVerAlign;

.field public static final enum BOTTOM:Lorg/apache/poi/style/TextVerAlign;

.field public static final enum MIDDLE:Lorg/apache/poi/style/TextVerAlign;

.field public static final enum NONE:Lorg/apache/poi/style/TextVerAlign;

.field public static final enum SUB:Lorg/apache/poi/style/TextVerAlign;

.field public static final enum SUPER:Lorg/apache/poi/style/TextVerAlign;

.field public static final enum TEXT_BOTTOM:Lorg/apache/poi/style/TextVerAlign;

.field public static final enum TEXT_TOP:Lorg/apache/poi/style/TextVerAlign;

.field public static final enum TOP:Lorg/apache/poi/style/TextVerAlign;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/apache/poi/style/TextVerAlign;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/style/TextVerAlign;->NONE:Lorg/apache/poi/style/TextVerAlign;

    new-instance v1, Lorg/apache/poi/style/TextVerAlign;

    const/4 v2, 0x1

    const-string v3, "auto"

    const-string v4, "AUTO"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/style/TextVerAlign;->AUTO:Lorg/apache/poi/style/TextVerAlign;

    new-instance v2, Lorg/apache/poi/style/TextVerAlign;

    const/4 v3, 0x2

    const-string v4, "top"

    const-string v5, "TOP"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/style/TextVerAlign;->TOP:Lorg/apache/poi/style/TextVerAlign;

    new-instance v3, Lorg/apache/poi/style/TextVerAlign;

    const/4 v4, 0x3

    const-string v5, "bottom"

    const-string v6, "BOTTOM"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/style/TextVerAlign;->BOTTOM:Lorg/apache/poi/style/TextVerAlign;

    new-instance v4, Lorg/apache/poi/style/TextVerAlign;

    const/4 v5, 0x4

    const-string v6, "middle"

    const-string v7, "MIDDLE"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/style/TextVerAlign;->MIDDLE:Lorg/apache/poi/style/TextVerAlign;

    new-instance v5, Lorg/apache/poi/style/TextVerAlign;

    const/4 v6, 0x5

    const-string v7, "baseline"

    const-string v8, "BASELINE"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/style/TextVerAlign;->BASELINE:Lorg/apache/poi/style/TextVerAlign;

    new-instance v6, Lorg/apache/poi/style/TextVerAlign;

    const/4 v7, 0x6

    const-string v8, "text-top"

    const-string v9, "TEXT_TOP"

    invoke-direct {v6, v9, v7, v8}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/style/TextVerAlign;->TEXT_TOP:Lorg/apache/poi/style/TextVerAlign;

    new-instance v7, Lorg/apache/poi/style/TextVerAlign;

    const/4 v8, 0x7

    const-string v9, "text-bottom"

    const-string v10, "TEXT_BOTTOM"

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/style/TextVerAlign;->TEXT_BOTTOM:Lorg/apache/poi/style/TextVerAlign;

    new-instance v8, Lorg/apache/poi/style/TextVerAlign;

    const/16 v9, 0x8

    const-string v10, "sub"

    const-string v11, "SUB"

    invoke-direct {v8, v11, v9, v10}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/apache/poi/style/TextVerAlign;->SUB:Lorg/apache/poi/style/TextVerAlign;

    new-instance v9, Lorg/apache/poi/style/TextVerAlign;

    const/16 v10, 0x9

    const-string v11, "super"

    const-string v12, "SUPER"

    invoke-direct {v9, v12, v10, v11}, Lorg/apache/poi/style/TextVerAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/poi/style/TextVerAlign;->SUPER:Lorg/apache/poi/style/TextVerAlign;

    filled-new-array/range {v0 .. v9}, [Lorg/apache/poi/style/TextVerAlign;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/style/TextVerAlign;->$VALUES:[Lorg/apache/poi/style/TextVerAlign;

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

    iput-object p3, p0, Lorg/apache/poi/style/TextVerAlign;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/style/TextVerAlign;
    .locals 1

    const-class v0, Lorg/apache/poi/style/TextVerAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/TextVerAlign;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/style/TextVerAlign;
    .locals 1

    sget-object v0, Lorg/apache/poi/style/TextVerAlign;->$VALUES:[Lorg/apache/poi/style/TextVerAlign;

    invoke-virtual {v0}, [Lorg/apache/poi/style/TextVerAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/style/TextVerAlign;

    return-object v0
.end method


# virtual methods
.method public toStyle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/apache/poi/style/TextVerAlign;->AUTO:Lorg/apache/poi/style/TextVerAlign;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vertical-align:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/TextVerAlign;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
