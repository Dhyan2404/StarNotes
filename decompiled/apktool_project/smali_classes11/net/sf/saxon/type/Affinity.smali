.class public final enum Lnet/sf/saxon/type/Affinity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/type/Affinity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/type/Affinity;

.field public static final enum DISJOINT:Lnet/sf/saxon/type/Affinity;

.field public static final enum OVERLAPS:Lnet/sf/saxon/type/Affinity;

.field public static final enum SAME_TYPE:Lnet/sf/saxon/type/Affinity;

.field public static final enum SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

.field public static final enum SUBSUMES:Lnet/sf/saxon/type/Affinity;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/sf/saxon/type/Affinity;

    const-string v1, "SAME_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/type/Affinity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    new-instance v1, Lnet/sf/saxon/type/Affinity;

    const-string v2, "SUBSUMES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/type/Affinity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    new-instance v2, Lnet/sf/saxon/type/Affinity;

    const-string v3, "SUBSUMED_BY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/type/Affinity;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    new-instance v3, Lnet/sf/saxon/type/Affinity;

    const-string v4, "DISJOINT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/type/Affinity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    new-instance v4, Lnet/sf/saxon/type/Affinity;

    const-string v5, "OVERLAPS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/type/Affinity;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/type/Affinity;->OVERLAPS:Lnet/sf/saxon/type/Affinity;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/type/Affinity;->$VALUES:[Lnet/sf/saxon/type/Affinity;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/type/Affinity;
    .locals 1

    const-class v0, Lnet/sf/saxon/type/Affinity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/type/Affinity;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/type/Affinity;
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/Affinity;->$VALUES:[Lnet/sf/saxon/type/Affinity;

    invoke-virtual {v0}, [Lnet/sf/saxon/type/Affinity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/type/Affinity;

    return-object v0
.end method
