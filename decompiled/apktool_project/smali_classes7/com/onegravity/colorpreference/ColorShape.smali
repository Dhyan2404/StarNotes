.class public final enum Lcom/onegravity/colorpreference/ColorShape;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onegravity/colorpreference/ColorShape;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onegravity/colorpreference/ColorShape;

.field public static final enum CIRCLE:Lcom/onegravity/colorpreference/ColorShape;

.field public static final enum SQUARE:Lcom/onegravity/colorpreference/ColorShape;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/onegravity/colorpreference/ColorShape;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/onegravity/colorpreference/ColorShape;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/onegravity/colorpreference/ColorShape;->CIRCLE:Lcom/onegravity/colorpreference/ColorShape;

    new-instance v1, Lcom/onegravity/colorpreference/ColorShape;

    const-string v2, "SQUARE"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/onegravity/colorpreference/ColorShape;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/onegravity/colorpreference/ColorShape;->SQUARE:Lcom/onegravity/colorpreference/ColorShape;

    filled-new-array {v0, v1}, [Lcom/onegravity/colorpreference/ColorShape;

    move-result-object v0

    sput-object v0, Lcom/onegravity/colorpreference/ColorShape;->$VALUES:[Lcom/onegravity/colorpreference/ColorShape;

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

    iput p3, p0, Lcom/onegravity/colorpreference/ColorShape;->value:I

    return-void
.end method

.method public static getShape(I)Lcom/onegravity/colorpreference/ColorShape;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/onegravity/colorpreference/ColorShape;->CIRCLE:Lcom/onegravity/colorpreference/ColorShape;

    return-object p0

    :cond_0
    sget-object p0, Lcom/onegravity/colorpreference/ColorShape;->SQUARE:Lcom/onegravity/colorpreference/ColorShape;

    return-object p0

    :cond_1
    sget-object p0, Lcom/onegravity/colorpreference/ColorShape;->CIRCLE:Lcom/onegravity/colorpreference/ColorShape;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onegravity/colorpreference/ColorShape;
    .locals 1

    const-class v0, Lcom/onegravity/colorpreference/ColorShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onegravity/colorpreference/ColorShape;

    return-object p0
.end method

.method public static values()[Lcom/onegravity/colorpreference/ColorShape;
    .locals 1

    sget-object v0, Lcom/onegravity/colorpreference/ColorShape;->$VALUES:[Lcom/onegravity/colorpreference/ColorShape;

    invoke-virtual {v0}, [Lcom/onegravity/colorpreference/ColorShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onegravity/colorpreference/ColorShape;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/onegravity/colorpreference/ColorShape;->value:I

    return p0
.end method
