.class public final enum Lorg/apache/poi/style/LineHeight$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/style/LineHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/style/LineHeight$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/style/LineHeight$Type;

.field public static final enum AT_LEAST:Lorg/apache/poi/style/LineHeight$Type;

.field public static final enum AUTO:Lorg/apache/poi/style/LineHeight$Type;

.field public static final enum EXACT:Lorg/apache/poi/style/LineHeight$Type;

.field public static final enum NONE:Lorg/apache/poi/style/LineHeight$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/poi/style/LineHeight$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/style/LineHeight$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/style/LineHeight$Type;->NONE:Lorg/apache/poi/style/LineHeight$Type;

    new-instance v1, Lorg/apache/poi/style/LineHeight$Type;

    const-string v2, "AUTO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/style/LineHeight$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/style/LineHeight$Type;->AUTO:Lorg/apache/poi/style/LineHeight$Type;

    new-instance v2, Lorg/apache/poi/style/LineHeight$Type;

    const-string v3, "EXACT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/style/LineHeight$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/style/LineHeight$Type;->EXACT:Lorg/apache/poi/style/LineHeight$Type;

    new-instance v3, Lorg/apache/poi/style/LineHeight$Type;

    const-string v4, "AT_LEAST"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/style/LineHeight$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/style/LineHeight$Type;->AT_LEAST:Lorg/apache/poi/style/LineHeight$Type;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/style/LineHeight$Type;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/style/LineHeight$Type;->$VALUES:[Lorg/apache/poi/style/LineHeight$Type;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/style/LineHeight$Type;
    .locals 1

    const-class v0, Lorg/apache/poi/style/LineHeight$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/LineHeight$Type;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/style/LineHeight$Type;
    .locals 1

    sget-object v0, Lorg/apache/poi/style/LineHeight$Type;->$VALUES:[Lorg/apache/poi/style/LineHeight$Type;

    invoke-virtual {v0}, [Lorg/apache/poi/style/LineHeight$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/style/LineHeight$Type;

    return-object v0
.end method
