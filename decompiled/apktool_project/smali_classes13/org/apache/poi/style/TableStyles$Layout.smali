.class final enum Lorg/apache/poi/style/TableStyles$Layout;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/style/TableStyles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Layout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/style/TableStyles$Layout;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/style/TableStyles$Layout;

.field public static final enum AUTO:Lorg/apache/poi/style/TableStyles$Layout;

.field public static final enum FIXED:Lorg/apache/poi/style/TableStyles$Layout;

.field public static final enum NONE:Lorg/apache/poi/style/TableStyles$Layout;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/poi/style/TableStyles$Layout;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/style/TableStyles$Layout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/style/TableStyles$Layout;->NONE:Lorg/apache/poi/style/TableStyles$Layout;

    new-instance v1, Lorg/apache/poi/style/TableStyles$Layout;

    const/4 v2, 0x1

    const-string v3, "auto"

    const-string v4, "AUTO"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/style/TableStyles$Layout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/poi/style/TableStyles$Layout;->AUTO:Lorg/apache/poi/style/TableStyles$Layout;

    new-instance v2, Lorg/apache/poi/style/TableStyles$Layout;

    const/4 v3, 0x2

    const-string v4, "fixed"

    const-string v5, "FIXED"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/poi/style/TableStyles$Layout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/poi/style/TableStyles$Layout;->FIXED:Lorg/apache/poi/style/TableStyles$Layout;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/style/TableStyles$Layout;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/style/TableStyles$Layout;->$VALUES:[Lorg/apache/poi/style/TableStyles$Layout;

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

    iput-object p3, p0, Lorg/apache/poi/style/TableStyles$Layout;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/style/TableStyles$Layout;
    .locals 1

    const-class v0, Lorg/apache/poi/style/TableStyles$Layout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/style/TableStyles$Layout;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/style/TableStyles$Layout;
    .locals 1

    sget-object v0, Lorg/apache/poi/style/TableStyles$Layout;->$VALUES:[Lorg/apache/poi/style/TableStyles$Layout;

    invoke-virtual {v0}, [Lorg/apache/poi/style/TableStyles$Layout;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/style/TableStyles$Layout;

    return-object v0
.end method
