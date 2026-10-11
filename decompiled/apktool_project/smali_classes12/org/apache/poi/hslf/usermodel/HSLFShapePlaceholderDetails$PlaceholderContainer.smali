.class final enum Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlaceholderContainer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

.field public static final enum master:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

.field public static final enum notes:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

.field public static final enum notesMaster:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

.field public static final enum slide:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    const-string v1, "slide"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->slide:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    const-string v2, "master"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->master:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    const-string v3, "notes"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->notes:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    new-instance v3, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    const-string v4, "notesMaster"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->notesMaster:Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/usermodel/HSLFShapePlaceholderDetails$PlaceholderContainer;

    return-object v0
.end method
