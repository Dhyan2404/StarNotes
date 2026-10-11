.class public final enum Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/usermodel/HSLFFontInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontRenderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

.field public static final enum device:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

.field public static final enum raster:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

.field public static final enum truetype:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    const-string v1, "raster"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->raster:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    new-instance v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    const-string v2, "device"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->device:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    new-instance v2, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    const-string v3, "truetype"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->truetype:Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    filled-new-array {v0, v1, v2}, [Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;
    .locals 1

    const-class v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;
    .locals 1

    sget-object v0, Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->$VALUES:[Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    invoke-virtual {v0}, [Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hslf/usermodel/HSLFFontInfo$FontRenderType;

    return-object v0
.end method
