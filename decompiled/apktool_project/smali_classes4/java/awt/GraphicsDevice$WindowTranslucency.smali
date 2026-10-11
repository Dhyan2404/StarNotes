.class public final enum Ljava/awt/GraphicsDevice$WindowTranslucency;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/GraphicsDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowTranslucency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/awt/GraphicsDevice$WindowTranslucency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/awt/GraphicsDevice$WindowTranslucency;

.field public static final enum PERPIXEL_TRANSLUCENT:Ljava/awt/GraphicsDevice$WindowTranslucency;

.field public static final enum PERPIXEL_TRANSPARENT:Ljava/awt/GraphicsDevice$WindowTranslucency;

.field public static final enum TRANSLUCENT:Ljava/awt/GraphicsDevice$WindowTranslucency;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/awt/GraphicsDevice$WindowTranslucency;

    const-string v1, "PERPIXEL_TRANSPARENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/awt/GraphicsDevice$WindowTranslucency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/awt/GraphicsDevice$WindowTranslucency;->PERPIXEL_TRANSPARENT:Ljava/awt/GraphicsDevice$WindowTranslucency;

    new-instance v1, Ljava/awt/GraphicsDevice$WindowTranslucency;

    const-string v2, "TRANSLUCENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/awt/GraphicsDevice$WindowTranslucency;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljava/awt/GraphicsDevice$WindowTranslucency;->TRANSLUCENT:Ljava/awt/GraphicsDevice$WindowTranslucency;

    new-instance v2, Ljava/awt/GraphicsDevice$WindowTranslucency;

    const-string v3, "PERPIXEL_TRANSLUCENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/awt/GraphicsDevice$WindowTranslucency;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ljava/awt/GraphicsDevice$WindowTranslucency;->PERPIXEL_TRANSLUCENT:Ljava/awt/GraphicsDevice$WindowTranslucency;

    filled-new-array {v0, v1, v2}, [Ljava/awt/GraphicsDevice$WindowTranslucency;

    move-result-object v0

    sput-object v0, Ljava/awt/GraphicsDevice$WindowTranslucency;->$VALUES:[Ljava/awt/GraphicsDevice$WindowTranslucency;

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

.method public static valueOf(Ljava/lang/String;)Ljava/awt/GraphicsDevice$WindowTranslucency;
    .locals 1

    const-class v0, Ljava/awt/GraphicsDevice$WindowTranslucency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljava/awt/GraphicsDevice$WindowTranslucency;

    return-object p0
.end method

.method public static values()[Ljava/awt/GraphicsDevice$WindowTranslucency;
    .locals 1

    sget-object v0, Ljava/awt/GraphicsDevice$WindowTranslucency;->$VALUES:[Ljava/awt/GraphicsDevice$WindowTranslucency;

    invoke-virtual {v0}, [Ljava/awt/GraphicsDevice$WindowTranslucency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/awt/GraphicsDevice$WindowTranslucency;

    return-object v0
.end method
