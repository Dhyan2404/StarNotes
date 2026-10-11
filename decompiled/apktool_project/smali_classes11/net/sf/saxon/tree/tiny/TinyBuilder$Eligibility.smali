.class final enum Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/tree/tiny/TinyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Eligibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

.field public static final enum ELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

.field public static final enum INELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

.field public static final enum PRIMED:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    const-string v1, "INELIGIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->INELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    new-instance v1, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    const-string v2, "PRIMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->PRIMED:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    new-instance v2, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    const-string v3, "ELIGIBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->ELIGIBLE:Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    filled-new-array {v0, v1, v2}, [Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->$VALUES:[Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;
    .locals 1

    const-class v0, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;
    .locals 1

    sget-object v0, Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->$VALUES:[Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    invoke-virtual {v0}, [Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/tree/tiny/TinyBuilder$Eligibility;

    return-object v0
.end method
