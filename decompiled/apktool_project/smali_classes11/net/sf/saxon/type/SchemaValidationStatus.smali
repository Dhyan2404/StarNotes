.class public final enum Lnet/sf/saxon/type/SchemaValidationStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/type/SchemaValidationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/type/SchemaValidationStatus;

.field public static final enum FIXED_UP:Lnet/sf/saxon/type/SchemaValidationStatus;

.field public static final enum INCOMPLETE:Lnet/sf/saxon/type/SchemaValidationStatus;

.field public static final enum INVALID:Lnet/sf/saxon/type/SchemaValidationStatus;

.field public static final enum UNVALIDATED:Lnet/sf/saxon/type/SchemaValidationStatus;

.field public static final enum VALIDATED:Lnet/sf/saxon/type/SchemaValidationStatus;

.field public static final enum VALIDATING:Lnet/sf/saxon/type/SchemaValidationStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/type/SchemaValidationStatus;

    const-string v1, "UNVALIDATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/type/SchemaValidationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/type/SchemaValidationStatus;->UNVALIDATED:Lnet/sf/saxon/type/SchemaValidationStatus;

    new-instance v1, Lnet/sf/saxon/type/SchemaValidationStatus;

    const-string v2, "FIXED_UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/type/SchemaValidationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/type/SchemaValidationStatus;->FIXED_UP:Lnet/sf/saxon/type/SchemaValidationStatus;

    new-instance v2, Lnet/sf/saxon/type/SchemaValidationStatus;

    const-string v3, "VALIDATING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/type/SchemaValidationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/type/SchemaValidationStatus;->VALIDATING:Lnet/sf/saxon/type/SchemaValidationStatus;

    new-instance v3, Lnet/sf/saxon/type/SchemaValidationStatus;

    const-string v4, "VALIDATED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/type/SchemaValidationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/type/SchemaValidationStatus;->VALIDATED:Lnet/sf/saxon/type/SchemaValidationStatus;

    new-instance v4, Lnet/sf/saxon/type/SchemaValidationStatus;

    const-string v5, "INVALID"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/type/SchemaValidationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/type/SchemaValidationStatus;->INVALID:Lnet/sf/saxon/type/SchemaValidationStatus;

    new-instance v5, Lnet/sf/saxon/type/SchemaValidationStatus;

    const-string v6, "INCOMPLETE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/type/SchemaValidationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/type/SchemaValidationStatus;->INCOMPLETE:Lnet/sf/saxon/type/SchemaValidationStatus;

    filled-new-array/range {v0 .. v5}, [Lnet/sf/saxon/type/SchemaValidationStatus;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/SchemaValidationStatus;->$VALUES:[Lnet/sf/saxon/type/SchemaValidationStatus;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/type/SchemaValidationStatus;
    .locals 1

    const-class v0, Lnet/sf/saxon/type/SchemaValidationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/SchemaValidationStatus;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/type/SchemaValidationStatus;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/SchemaValidationStatus;->$VALUES:[Lnet/sf/saxon/type/SchemaValidationStatus;

    invoke-virtual {v0}, [Lnet/sf/saxon/type/SchemaValidationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/SchemaValidationStatus;

    return-object v0
.end method
