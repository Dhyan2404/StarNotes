.class public final enum Lorg/apache/poi/style/UnitValue$Unit;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/style/UnitValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/style/UnitValue$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/style/UnitValue$Unit;

.field public static final enum EM:Lorg/apache/poi/style/UnitValue$Unit;

.field public static final enum NUMBER:Lorg/apache/poi/style/UnitValue$Unit;

.field public static final enum PCT:Lorg/apache/poi/style/UnitValue$Unit;

.field public static final enum PT:Lorg/apache/poi/style/UnitValue$Unit;

.field public static final enum PX:Lorg/apache/poi/style/UnitValue$Unit;


# instance fields
.field suffix:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/apache/poi/style/UnitValue$Unit;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "NUMBER"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/style/UnitValue$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/style/UnitValue$Unit;->NUMBER:Lorg/apache/poi/style/UnitValue$Unit;

    new-instance v1, Lorg/apache/poi/style/UnitValue$Unit;

    const/4 v2, 0x1

    const-string v3, "px"

    const-string v4, "PX"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/style/UnitValue$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/style/UnitValue$Unit;->PX:Lorg/apache/poi/style/UnitValue$Unit;

    new-instance v2, Lorg/apache/poi/style/UnitValue$Unit;

    const/4 v3, 0x2

    const-string v4, "pt"

    const-string v5, "PT"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/style/UnitValue$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/style/UnitValue$Unit;->PT:Lorg/apache/poi/style/UnitValue$Unit;

    new-instance v3, Lorg/apache/poi/style/UnitValue$Unit;

    const/4 v4, 0x3

    const-string v5, "em"

    const-string v6, "EM"

    invoke-direct {v3, v6, v4, v5}, Lorg/apache/poi/style/UnitValue$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/poi/style/UnitValue$Unit;->EM:Lorg/apache/poi/style/UnitValue$Unit;

    new-instance v4, Lorg/apache/poi/style/UnitValue$Unit;

    const/4 v5, 0x4

    const-string v6, "%"

    const-string v7, "PCT"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/poi/style/UnitValue$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/poi/style/UnitValue$Unit;->PCT:Lorg/apache/poi/style/UnitValue$Unit;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/poi/style/UnitValue$Unit;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/style/UnitValue$Unit;->$VALUES:[Lorg/apache/poi/style/UnitValue$Unit;

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

    iput-object p3, p0, Lorg/apache/poi/style/UnitValue$Unit;->suffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/style/UnitValue$Unit;
    .locals 1

    const-class v0, Lorg/apache/poi/style/UnitValue$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/UnitValue$Unit;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/style/UnitValue$Unit;
    .locals 1

    sget-object v0, Lorg/apache/poi/style/UnitValue$Unit;->$VALUES:[Lorg/apache/poi/style/UnitValue$Unit;

    invoke-virtual {v0}, [Lorg/apache/poi/style/UnitValue$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/style/UnitValue$Unit;

    return-object v0
.end method


# virtual methods
.method public getSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/style/UnitValue$Unit;->suffix:Ljava/lang/String;

    return-object p0
.end method
