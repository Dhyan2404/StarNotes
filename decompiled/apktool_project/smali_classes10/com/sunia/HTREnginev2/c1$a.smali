.class public final enum Lcom/sunia/HTREnginev2/c1$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sunia/HTREnginev2/c1$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sunia/HTREnginev2/c1$a;

.field public static final enum b:Lcom/sunia/HTREnginev2/c1$a;

.field public static final enum c:Lcom/sunia/HTREnginev2/c1$a;

.field private static final synthetic d:[Lcom/sunia/HTREnginev2/c1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sunia/HTREnginev2/c1$a;

    const-string v1, "CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/c1$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/HTREnginev2/c1$a;->a:Lcom/sunia/HTREnginev2/c1$a;

    new-instance v0, Lcom/sunia/HTREnginev2/c1$a;

    const-string v1, "MODEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/c1$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/HTREnginev2/c1$a;->b:Lcom/sunia/HTREnginev2/c1$a;

    new-instance v0, Lcom/sunia/HTREnginev2/c1$a;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/c1$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sunia/HTREnginev2/c1$a;->c:Lcom/sunia/HTREnginev2/c1$a;

    invoke-static {}, Lcom/sunia/HTREnginev2/c1$a;->a()[Lcom/sunia/HTREnginev2/c1$a;

    move-result-object v0

    sput-object v0, Lcom/sunia/HTREnginev2/c1$a;->d:[Lcom/sunia/HTREnginev2/c1$a;

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

.method private static synthetic a()[Lcom/sunia/HTREnginev2/c1$a;
    .locals 3

    sget-object v0, Lcom/sunia/HTREnginev2/c1$a;->a:Lcom/sunia/HTREnginev2/c1$a;

    sget-object v1, Lcom/sunia/HTREnginev2/c1$a;->b:Lcom/sunia/HTREnginev2/c1$a;

    sget-object v2, Lcom/sunia/HTREnginev2/c1$a;->c:Lcom/sunia/HTREnginev2/c1$a;

    filled-new-array {v0, v1, v2}, [Lcom/sunia/HTREnginev2/c1$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sunia/HTREnginev2/c1$a;
    .locals 1

    const-class v0, Lcom/sunia/HTREnginev2/c1$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/c1$a;

    return-object p0
.end method

.method public static values()[Lcom/sunia/HTREnginev2/c1$a;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/c1$a;->d:[Lcom/sunia/HTREnginev2/c1$a;

    invoke-virtual {v0}, [Lcom/sunia/HTREnginev2/c1$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sunia/HTREnginev2/c1$a;

    return-object v0
.end method
