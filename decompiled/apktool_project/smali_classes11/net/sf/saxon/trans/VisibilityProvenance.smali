.class public final enum Lnet/sf/saxon/trans/VisibilityProvenance;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/trans/VisibilityProvenance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/trans/VisibilityProvenance;

.field public static final enum ACCEPTED:Lnet/sf/saxon/trans/VisibilityProvenance;

.field public static final enum DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

.field public static final enum DERIVED:Lnet/sf/saxon/trans/VisibilityProvenance;

.field public static final enum EXPLICIT:Lnet/sf/saxon/trans/VisibilityProvenance;

.field public static final enum EXPOSED:Lnet/sf/saxon/trans/VisibilityProvenance;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/sf/saxon/trans/VisibilityProvenance;

    const-string v1, "DEFAULTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/VisibilityProvenance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/trans/VisibilityProvenance;->DEFAULTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    new-instance v1, Lnet/sf/saxon/trans/VisibilityProvenance;

    const-string v2, "EXPLICIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/trans/VisibilityProvenance;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/trans/VisibilityProvenance;->EXPLICIT:Lnet/sf/saxon/trans/VisibilityProvenance;

    new-instance v2, Lnet/sf/saxon/trans/VisibilityProvenance;

    const-string v3, "EXPOSED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/trans/VisibilityProvenance;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/trans/VisibilityProvenance;->EXPOSED:Lnet/sf/saxon/trans/VisibilityProvenance;

    new-instance v3, Lnet/sf/saxon/trans/VisibilityProvenance;

    const-string v4, "ACCEPTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/trans/VisibilityProvenance;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/trans/VisibilityProvenance;->ACCEPTED:Lnet/sf/saxon/trans/VisibilityProvenance;

    new-instance v4, Lnet/sf/saxon/trans/VisibilityProvenance;

    const-string v5, "DERIVED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/trans/VisibilityProvenance;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/trans/VisibilityProvenance;->DERIVED:Lnet/sf/saxon/trans/VisibilityProvenance;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/sf/saxon/trans/VisibilityProvenance;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/trans/VisibilityProvenance;->$VALUES:[Lnet/sf/saxon/trans/VisibilityProvenance;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/trans/VisibilityProvenance;
    .locals 1

    const-class v0, Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/VisibilityProvenance;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/trans/VisibilityProvenance;
    .locals 1

    sget-object v0, Lnet/sf/saxon/trans/VisibilityProvenance;->$VALUES:[Lnet/sf/saxon/trans/VisibilityProvenance;

    invoke-virtual {v0}, [Lnet/sf/saxon/trans/VisibilityProvenance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/trans/VisibilityProvenance;

    return-object v0
.end method
