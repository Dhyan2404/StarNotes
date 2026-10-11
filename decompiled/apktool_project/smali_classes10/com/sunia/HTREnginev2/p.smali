.class public final enum Lcom/sunia/HTREnginev2/p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/HTREnginev2/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sunia/HTREnginev2/p;

.field public static final enum b:Lcom/sunia/HTREnginev2/p;

.field public static final enum c:Lcom/sunia/HTREnginev2/p;

.field public static final enum d:Lcom/sunia/HTREnginev2/p;

.field public static final enum e:Lcom/sunia/HTREnginev2/p;

.field public static final enum f:Lcom/sunia/HTREnginev2/p;

.field private static final synthetic g:[Lcom/sunia/HTREnginev2/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/p;

    const-string v1, "SCALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/HTREnginev2/p;->a:Lcom/sunia/HTREnginev2/p;

    new-instance v0, Lcom/sunia/HTREnginev2/p;

    const-string v1, "STYLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/HTREnginev2/p;->b:Lcom/sunia/HTREnginev2/p;

    new-instance v0, Lcom/sunia/HTREnginev2/p;

    const-string v1, "BLEND_MODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/HTREnginev2/p;->c:Lcom/sunia/HTREnginev2/p;

    new-instance v0, Lcom/sunia/HTREnginev2/p;

    const-string v1, "STROKE_DASH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/HTREnginev2/p;->d:Lcom/sunia/HTREnginev2/p;

    new-instance v0, Lcom/sunia/HTREnginev2/p;

    const-string v1, "BACKGROUND_COLOR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/HTREnginev2/p;->e:Lcom/sunia/HTREnginev2/p;

    new-instance v0, Lcom/sunia/HTREnginev2/p;

    const-string v1, "FOREGROUND_COLOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/HTREnginev2/p;->f:Lcom/sunia/HTREnginev2/p;

    invoke-static {}, Lcom/sunia/HTREnginev2/p;->a()[Lcom/sunia/HTREnginev2/p;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/p;->g:[Lcom/sunia/HTREnginev2/p;

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

.method private static synthetic a()[Lcom/sunia/HTREnginev2/p;
    .locals 6

    sget-object v0, Lcom/sunia/HTREnginev2/p;->a:Lcom/sunia/HTREnginev2/p;

    sget-object v1, Lcom/sunia/HTREnginev2/p;->b:Lcom/sunia/HTREnginev2/p;

    sget-object v2, Lcom/sunia/HTREnginev2/p;->c:Lcom/sunia/HTREnginev2/p;

    sget-object v3, Lcom/sunia/HTREnginev2/p;->d:Lcom/sunia/HTREnginev2/p;

    sget-object v4, Lcom/sunia/HTREnginev2/p;->e:Lcom/sunia/HTREnginev2/p;

    sget-object v5, Lcom/sunia/HTREnginev2/p;->f:Lcom/sunia/HTREnginev2/p;

    filled-new-array/range {v0 .. v5}, [Lcom/sunia/HTREnginev2/p;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/HTREnginev2/p;
    .locals 1

    const-class v0, Lcom/sunia/HTREnginev2/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/p;

    return-object p0
.end method

.method public static values()[Lcom/sunia/HTREnginev2/p;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/p;->g:[Lcom/sunia/HTREnginev2/p;

    invoke-virtual {v0}, [Lcom/sunia/HTREnginev2/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/HTREnginev2/p;

    return-object v0
.end method
