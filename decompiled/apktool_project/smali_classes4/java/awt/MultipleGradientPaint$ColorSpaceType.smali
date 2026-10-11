.class public final enum Ljava/awt/MultipleGradientPaint$ColorSpaceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/MultipleGradientPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorSpaceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/awt/MultipleGradientPaint$ColorSpaceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/awt/MultipleGradientPaint$ColorSpaceType;

.field public static final enum LINEAR_RGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

.field public static final enum SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    const-string v1, "SRGB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/awt/MultipleGradientPaint$ColorSpaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->SRGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    new-instance v1, Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    const-string v2, "LINEAR_RGB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/awt/MultipleGradientPaint$ColorSpaceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->LINEAR_RGB:Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    filled-new-array {v0, v1}, [Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    move-result-object v0

    sput-object v0, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->$VALUES:[Ljava/awt/MultipleGradientPaint$ColorSpaceType;

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

.method public static valueOf(Ljava/lang/String;)Ljava/awt/MultipleGradientPaint$ColorSpaceType;
    .locals 1

    const-class v0, Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    return-object p0
.end method

.method public static values()[Ljava/awt/MultipleGradientPaint$ColorSpaceType;
    .locals 1

    sget-object v0, Ljava/awt/MultipleGradientPaint$ColorSpaceType;->$VALUES:[Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    invoke-virtual {v0}, [Ljava/awt/MultipleGradientPaint$ColorSpaceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/MultipleGradientPaint$ColorSpaceType;

    return-object v0
.end method
