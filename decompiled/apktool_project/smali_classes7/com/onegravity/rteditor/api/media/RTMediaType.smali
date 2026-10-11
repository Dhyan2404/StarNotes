.class public final enum Lcom/onegravity/rteditor/api/media/RTMediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onegravity/rteditor/api/media/RTMediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onegravity/rteditor/api/media/RTMediaType;

.field public static final enum AUDIO:Lcom/onegravity/rteditor/api/media/RTMediaType;

.field public static final enum IMAGE:Lcom/onegravity/rteditor/api/media/RTMediaType;

.field public static final enum VIDEO:Lcom/onegravity/rteditor/api/media/RTMediaType;


# instance fields
.field private mMediaPath:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/onegravity/rteditor/api/media/RTMediaType;
    .locals 3

    sget-object v0, Lcom/onegravity/rteditor/api/media/RTMediaType;->IMAGE:Lcom/onegravity/rteditor/api/media/RTMediaType;

    sget-object v1, Lcom/onegravity/rteditor/api/media/RTMediaType;->VIDEO:Lcom/onegravity/rteditor/api/media/RTMediaType;

    sget-object v2, Lcom/onegravity/rteditor/api/media/RTMediaType;->AUDIO:Lcom/onegravity/rteditor/api/media/RTMediaType;

    filled-new-array {v0, v1, v2}, [Lcom/onegravity/rteditor/api/media/RTMediaType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onegravity/rteditor/api/media/RTMediaType;

    const/4 v1, 0x0

    const-string v2, "images"

    const-string v3, "IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/onegravity/rteditor/api/media/RTMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onegravity/rteditor/api/media/RTMediaType;->IMAGE:Lcom/onegravity/rteditor/api/media/RTMediaType;

    new-instance v0, Lcom/onegravity/rteditor/api/media/RTMediaType;

    const/4 v1, 0x1

    const-string v2, "videos"

    const-string v3, "VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/onegravity/rteditor/api/media/RTMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onegravity/rteditor/api/media/RTMediaType;->VIDEO:Lcom/onegravity/rteditor/api/media/RTMediaType;

    new-instance v0, Lcom/onegravity/rteditor/api/media/RTMediaType;

    const/4 v1, 0x2

    const-string v2, "audios"

    const-string v3, "AUDIO"

    invoke-direct {v0, v3, v1, v2}, Lcom/onegravity/rteditor/api/media/RTMediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onegravity/rteditor/api/media/RTMediaType;->AUDIO:Lcom/onegravity/rteditor/api/media/RTMediaType;

    invoke-static {}, Lcom/onegravity/rteditor/api/media/RTMediaType;->$values()[Lcom/onegravity/rteditor/api/media/RTMediaType;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/api/media/RTMediaType;->$VALUES:[Lcom/onegravity/rteditor/api/media/RTMediaType;

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

    iput-object p3, p0, Lcom/onegravity/rteditor/api/media/RTMediaType;->mMediaPath:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onegravity/rteditor/api/media/RTMediaType;
    .locals 1

    const-class v0, Lcom/onegravity/rteditor/api/media/RTMediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/api/media/RTMediaType;

    return-object p0
.end method

.method public static values()[Lcom/onegravity/rteditor/api/media/RTMediaType;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/api/media/RTMediaType;->$VALUES:[Lcom/onegravity/rteditor/api/media/RTMediaType;

    invoke-virtual {v0}, [Lcom/onegravity/rteditor/api/media/RTMediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onegravity/rteditor/api/media/RTMediaType;

    return-object v0
.end method


# virtual methods
.method public mediaPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaType;->mMediaPath:Ljava/lang/String;

    return-object p0
.end method
