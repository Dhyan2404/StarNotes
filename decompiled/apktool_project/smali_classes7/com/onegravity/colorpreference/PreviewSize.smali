.class public final enum Lcom/onegravity/colorpreference/PreviewSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onegravity/colorpreference/PreviewSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onegravity/colorpreference/PreviewSize;

.field public static final enum LARGE:Lcom/onegravity/colorpreference/PreviewSize;

.field public static final enum NORMAL:Lcom/onegravity/colorpreference/PreviewSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/onegravity/colorpreference/PreviewSize;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onegravity/colorpreference/PreviewSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onegravity/colorpreference/PreviewSize;->NORMAL:Lcom/onegravity/colorpreference/PreviewSize;

    new-instance v1, Lcom/onegravity/colorpreference/PreviewSize;

    const-string v2, "LARGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/onegravity/colorpreference/PreviewSize;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onegravity/colorpreference/PreviewSize;->LARGE:Lcom/onegravity/colorpreference/PreviewSize;

    filled-new-array {v0, v1}, [Lcom/onegravity/colorpreference/PreviewSize;

    move-result-object v0

    sput-object v0, Lcom/onegravity/colorpreference/PreviewSize;->$VALUES:[Lcom/onegravity/colorpreference/PreviewSize;

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

.method public static getSize(I)Lcom/onegravity/colorpreference/PreviewSize;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/onegravity/colorpreference/PreviewSize;->LARGE:Lcom/onegravity/colorpreference/PreviewSize;

    return-object p0

    :cond_0
    sget-object p0, Lcom/onegravity/colorpreference/PreviewSize;->NORMAL:Lcom/onegravity/colorpreference/PreviewSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onegravity/colorpreference/PreviewSize;
    .locals 1

    const-class v0, Lcom/onegravity/colorpreference/PreviewSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onegravity/colorpreference/PreviewSize;

    return-object p0
.end method

.method public static values()[Lcom/onegravity/colorpreference/PreviewSize;
    .locals 1

    sget-object v0, Lcom/onegravity/colorpreference/PreviewSize;->$VALUES:[Lcom/onegravity/colorpreference/PreviewSize;

    invoke-virtual {v0}, [Lcom/onegravity/colorpreference/PreviewSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onegravity/colorpreference/PreviewSize;

    return-object v0
.end method
