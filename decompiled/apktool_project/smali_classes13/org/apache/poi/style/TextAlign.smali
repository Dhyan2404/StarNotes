.class public final enum Lorg/apache/poi/style/TextAlign;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/style/TextAlign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/style/TextAlign;

.field public static final enum CENTER:Lorg/apache/poi/style/TextAlign;

.field public static final enum END:Lorg/apache/poi/style/TextAlign;

.field public static final enum JUSTIFY:Lorg/apache/poi/style/TextAlign;

.field public static final enum JUSTIFY_LAST:Lorg/apache/poi/style/TextAlign;

.field public static final enum LEFT:Lorg/apache/poi/style/TextAlign;

.field public static final enum NONE:Lorg/apache/poi/style/TextAlign;

.field public static final enum RIGHT:Lorg/apache/poi/style/TextAlign;

.field public static final enum START:Lorg/apache/poi/style/TextAlign;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/poi/style/TextAlign;

    const/4 v1, 0x0

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/style/TextAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/style/TextAlign;->NONE:Lorg/apache/poi/style/TextAlign;

    new-instance v1, Lorg/apache/poi/style/TextAlign;

    const/4 v2, 0x1

    const-string v3, "start"

    const-string v4, "START"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/style/TextAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/style/TextAlign;->START:Lorg/apache/poi/style/TextAlign;

    new-instance v2, Lorg/apache/poi/style/TextAlign;

    const/4 v3, 0x2

    const-string v4, "left"

    const-string v5, "LEFT"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/style/TextAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/style/TextAlign;->LEFT:Lorg/apache/poi/style/TextAlign;

    new-instance v3, Lorg/apache/poi/style/TextAlign;

    const/4 v4, 0x3

    const-string v5, "end"

    const-string v6, "END"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/style/TextAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/style/TextAlign;->END:Lorg/apache/poi/style/TextAlign;

    new-instance v4, Lorg/apache/poi/style/TextAlign;

    const/4 v5, 0x4

    const-string v6, "right"

    const-string v7, "RIGHT"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/style/TextAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/style/TextAlign;->RIGHT:Lorg/apache/poi/style/TextAlign;

    new-instance v5, Lorg/apache/poi/style/TextAlign;

    const/4 v6, 0x5

    const-string v7, "center"

    const-string v8, "CENTER"

    invoke-direct {v5, v8, v6, v7}, Lorg/apache/poi/style/TextAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/poi/style/TextAlign;->CENTER:Lorg/apache/poi/style/TextAlign;

    new-instance v6, Lorg/apache/poi/style/TextAlign;

    const-string v7, "JUSTIFY"

    const/4 v8, 0x6

    const-string v9, "justify"

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/poi/style/TextAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/apache/poi/style/TextAlign;->JUSTIFY:Lorg/apache/poi/style/TextAlign;

    new-instance v7, Lorg/apache/poi/style/TextAlign;

    const-string v8, "JUSTIFY_LAST"

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9}, Lorg/apache/poi/style/TextAlign;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/style/TextAlign;->JUSTIFY_LAST:Lorg/apache/poi/style/TextAlign;

    filled-new-array/range {v0 .. v7}, [Lorg/apache/poi/style/TextAlign;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/style/TextAlign;->$VALUES:[Lorg/apache/poi/style/TextAlign;

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

    iput-object p3, p0, Lorg/apache/poi/style/TextAlign;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/style/TextAlign;
    .locals 1

    const-class v0, Lorg/apache/poi/style/TextAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/TextAlign;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/style/TextAlign;
    .locals 1

    sget-object v0, Lorg/apache/poi/style/TextAlign;->$VALUES:[Lorg/apache/poi/style/TextAlign;

    invoke-virtual {v0}, [Lorg/apache/poi/style/TextAlign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/style/TextAlign;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/TextAlign;->value:Ljava/lang/String;

    return-object p0
.end method

.method public toStyle()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/apache/poi/style/TextAlign;->LEFT:Lorg/apache/poi/style/TextAlign;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text-align:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/style/TextAlign;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Lorg/apache/poi/style/TextAlign;->JUSTIFY_LAST:Lorg/apache/poi/style/TextAlign;

    if-ne p0, v2, :cond_1

    const-string v2, "text-align-last:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/style/TextAlign;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
