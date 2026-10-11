.class public final enum Lnet/sf/saxon/expr/OperandUsage;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/expr/OperandUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/expr/OperandUsage;

.field public static final enum ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

.field public static final enum INSPECTION:Lnet/sf/saxon/expr/OperandUsage;

.field public static final enum NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

.field public static final enum TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/sf/saxon/expr/OperandUsage;

    const-string v1, "ABSORPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/OperandUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    new-instance v1, Lnet/sf/saxon/expr/OperandUsage;

    const-string v2, "INSPECTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/expr/OperandUsage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/expr/OperandUsage;->INSPECTION:Lnet/sf/saxon/expr/OperandUsage;

    new-instance v2, Lnet/sf/saxon/expr/OperandUsage;

    const-string v3, "TRANSMISSION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/expr/OperandUsage;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    new-instance v3, Lnet/sf/saxon/expr/OperandUsage;

    const-string v4, "NAVIGATION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/expr/OperandUsage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    filled-new-array {v0, v1, v2, v3}, [Lnet/sf/saxon/expr/OperandUsage;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/OperandUsage;->$VALUES:[Lnet/sf/saxon/expr/OperandUsage;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/expr/OperandUsage;
    .locals 1

    const-class v0, Lnet/sf/saxon/expr/OperandUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/OperandUsage;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/expr/OperandUsage;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/OperandUsage;->$VALUES:[Lnet/sf/saxon/expr/OperandUsage;

    invoke-virtual {v0}, [Lnet/sf/saxon/expr/OperandUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/OperandUsage;

    return-object v0
.end method
