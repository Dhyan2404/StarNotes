.class public final enum Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/RTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToolbarVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

.field public static final enum AUTOMATIC:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

.field public static final enum HIDE:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

.field public static final enum SHOW:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;


# direct methods
.method private static synthetic $values()[Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;
    .locals 3

    sget-object v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->AUTOMATIC:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    sget-object v1, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->SHOW:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    sget-object v2, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->HIDE:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    filled-new-array {v0, v1, v2}, [Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->AUTOMATIC:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    new-instance v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    const-string v1, "SHOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->SHOW:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    new-instance v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    const-string v1, "HIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->HIDE:Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    invoke-static {}, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->$values()[Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->$VALUES:[Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;
    .locals 1

    const-class v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    return-object p0
.end method

.method public static values()[Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->$VALUES:[Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    invoke-virtual {v0}, [Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onegravity/rteditor/RTManager$ToolbarVisibility;

    return-object v0
.end method
