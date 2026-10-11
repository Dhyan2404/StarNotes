.class public final enum Ljava/awt/MultipleGradientPaint$CycleMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/MultipleGradientPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CycleMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/awt/MultipleGradientPaint$CycleMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/awt/MultipleGradientPaint$CycleMethod;

.field public static final enum NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

.field public static final enum REFLECT:Ljava/awt/MultipleGradientPaint$CycleMethod;

.field public static final enum REPEAT:Ljava/awt/MultipleGradientPaint$CycleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/awt/MultipleGradientPaint$CycleMethod;

    const-string v1, "NO_CYCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/awt/MultipleGradientPaint$CycleMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/awt/MultipleGradientPaint$CycleMethod;->NO_CYCLE:Ljava/awt/MultipleGradientPaint$CycleMethod;

    new-instance v1, Ljava/awt/MultipleGradientPaint$CycleMethod;

    const-string v2, "REFLECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/awt/MultipleGradientPaint$CycleMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/awt/MultipleGradientPaint$CycleMethod;->REFLECT:Ljava/awt/MultipleGradientPaint$CycleMethod;

    new-instance v2, Ljava/awt/MultipleGradientPaint$CycleMethod;

    const-string v3, "REPEAT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/awt/MultipleGradientPaint$CycleMethod;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ljava/awt/MultipleGradientPaint$CycleMethod;->REPEAT:Ljava/awt/MultipleGradientPaint$CycleMethod;

    filled-new-array {v0, v1, v2}, [Ljava/awt/MultipleGradientPaint$CycleMethod;

    move-result-object v0

    sput-object v0, Ljava/awt/MultipleGradientPaint$CycleMethod;->$VALUES:[Ljava/awt/MultipleGradientPaint$CycleMethod;

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

.method public static valueOf(Ljava/lang/String;)Ljava/awt/MultipleGradientPaint$CycleMethod;
    .locals 1

    const-class v0, Ljava/awt/MultipleGradientPaint$CycleMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava/awt/MultipleGradientPaint$CycleMethod;

    return-object p0
.end method

.method public static values()[Ljava/awt/MultipleGradientPaint$CycleMethod;
    .locals 1

    sget-object v0, Ljava/awt/MultipleGradientPaint$CycleMethod;->$VALUES:[Ljava/awt/MultipleGradientPaint$CycleMethod;

    invoke-virtual {v0}, [Ljava/awt/MultipleGradientPaint$CycleMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/MultipleGradientPaint$CycleMethod;

    return-object v0
.end method
