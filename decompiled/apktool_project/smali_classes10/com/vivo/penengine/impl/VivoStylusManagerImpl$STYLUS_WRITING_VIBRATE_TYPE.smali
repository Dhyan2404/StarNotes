.class final enum Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/penengine/impl/VivoStylusManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STYLUS_WRITING_VIBRATE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

.field public static final enum OFF:Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

.field public static final enum TYPE_1:Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

.field public static final enum TYPE_2:Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;->OFF:Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    new-instance v1, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    const-string v2, "TYPE_1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;->TYPE_1:Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    new-instance v2, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    const-string v3, "TYPE_2"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;->TYPE_2:Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;->$VALUES:[Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;
    .locals 1

    const-class v0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;
    .locals 1

    sget-object v0, Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;->$VALUES:[Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    invoke-virtual {v0}, [Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vivo/penengine/impl/VivoStylusManagerImpl$STYLUS_WRITING_VIBRATE_TYPE;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Enum;

    invoke-super {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    return p0
.end method
