.class public final enum Lcom/onegravity/rteditor/utils/Constants$MediaAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onegravity/rteditor/utils/Constants$MediaAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onegravity/rteditor/utils/Constants$MediaAction;

.field public static final enum CAPTURE_AUDIO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

.field public static final enum CAPTURE_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

.field public static final enum CAPTURE_VIDEO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

.field public static final enum PICK_AUDIO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

.field public static final enum PICK_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

.field public static final enum PICK_VIDEO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;


# instance fields
.field private mRequestCode:I


# direct methods
.method private static synthetic $values()[Lcom/onegravity/rteditor/utils/Constants$MediaAction;
    .locals 6

    sget-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->PICK_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    sget-object v1, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->PICK_VIDEO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    sget-object v2, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->PICK_AUDIO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    sget-object v3, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->CAPTURE_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    sget-object v4, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->CAPTURE_VIDEO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    sget-object v5, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->CAPTURE_AUDIO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    filled-new-array/range {v0 .. v5}, [Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    const/4 v1, 0x0

    const/16 v2, 0x65

    const-string v3, "PICK_PICTURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->PICK_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    new-instance v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    const/4 v1, 0x1

    const/16 v2, 0x66

    const-string v3, "PICK_VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->PICK_VIDEO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    new-instance v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    const/4 v1, 0x2

    const/16 v2, 0x67

    const-string v3, "PICK_AUDIO"

    invoke-direct {v0, v3, v1, v2}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->PICK_AUDIO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    new-instance v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    const/4 v1, 0x3

    const/16 v2, 0x68

    const-string v3, "CAPTURE_PICTURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->CAPTURE_PICTURE:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    new-instance v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    const/4 v1, 0x4

    const/16 v2, 0x69

    const-string v3, "CAPTURE_VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->CAPTURE_VIDEO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    new-instance v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    const/4 v1, 0x5

    const/16 v2, 0x6a

    const-string v3, "CAPTURE_AUDIO"

    invoke-direct {v0, v3, v1, v2}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->CAPTURE_AUDIO:Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    invoke-static {}, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->$values()[Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->$VALUES:[Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->mRequestCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onegravity/rteditor/utils/Constants$MediaAction;
    .locals 1

    const-class v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    return-object p0
.end method

.method public static values()[Lcom/onegravity/rteditor/utils/Constants$MediaAction;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->$VALUES:[Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    invoke-virtual {v0}, [Lcom/onegravity/rteditor/utils/Constants$MediaAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onegravity/rteditor/utils/Constants$MediaAction;

    return-object v0
.end method


# virtual methods
.method public requestCode()I
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/utils/Constants$MediaAction;->mRequestCode:I

    return p0
.end method
