.class public final enum Lnet/sf/saxon/type/ComplexVariety;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/type/ComplexVariety;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/type/ComplexVariety;

.field public static final enum ELEMENT_ONLY:Lnet/sf/saxon/type/ComplexVariety;

.field public static final enum EMPTY:Lnet/sf/saxon/type/ComplexVariety;

.field public static final enum MIXED:Lnet/sf/saxon/type/ComplexVariety;

.field public static final enum SIMPLE:Lnet/sf/saxon/type/ComplexVariety;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnet/sf/saxon/type/ComplexVariety;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/type/ComplexVariety;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/type/ComplexVariety;->EMPTY:Lnet/sf/saxon/type/ComplexVariety;

    new-instance v1, Lnet/sf/saxon/type/ComplexVariety;

    const-string v2, "SIMPLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/type/ComplexVariety;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/type/ComplexVariety;->SIMPLE:Lnet/sf/saxon/type/ComplexVariety;

    new-instance v2, Lnet/sf/saxon/type/ComplexVariety;

    const-string v3, "ELEMENT_ONLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/type/ComplexVariety;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/type/ComplexVariety;->ELEMENT_ONLY:Lnet/sf/saxon/type/ComplexVariety;

    new-instance v3, Lnet/sf/saxon/type/ComplexVariety;

    const-string v4, "MIXED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/type/ComplexVariety;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/type/ComplexVariety;->MIXED:Lnet/sf/saxon/type/ComplexVariety;

    filled-new-array {v0, v1, v2, v3}, [Lnet/sf/saxon/type/ComplexVariety;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/ComplexVariety;->$VALUES:[Lnet/sf/saxon/type/ComplexVariety;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/type/ComplexVariety;
    .locals 1

    const-class v0, Lnet/sf/saxon/type/ComplexVariety;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/ComplexVariety;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/type/ComplexVariety;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/ComplexVariety;->$VALUES:[Lnet/sf/saxon/type/ComplexVariety;

    invoke-virtual {v0}, [Lnet/sf/saxon/type/ComplexVariety;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/ComplexVariety;

    return-object v0
.end method
