.class final enum Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/media/crop/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

.field public static final enum None:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;


# direct methods
.method private static synthetic $values()[Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;
    .locals 3

    sget-object v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->None:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    sget-object v1, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->Move:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    sget-object v2, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->Grow:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    filled-new-array {v0, v1, v2}, [Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->None:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    new-instance v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    const-string v1, "Move"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->Move:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    new-instance v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    const-string v1, "Grow"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->Grow:Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    invoke-static {}, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->$values()[Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    move-result-object v0

    sput-object v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->$VALUES:[Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;
    .locals 1

    const-class v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    return-object p0
.end method

.method public static values()[Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->$VALUES:[Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onegravity/rteditor/media/crop/HighlightView$ModifyMode;

    return-object v0
.end method
