.class public final enum Lnet/sf/saxon/om/Genre;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/om/Genre;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/om/Genre;

.field public static final enum ANY:Lnet/sf/saxon/om/Genre;

.field public static final enum ARRAY:Lnet/sf/saxon/om/Genre;

.field public static final enum ATOMIC:Lnet/sf/saxon/om/Genre;

.field public static final enum EXTERNAL:Lnet/sf/saxon/om/Genre;

.field public static final enum FUNCTION:Lnet/sf/saxon/om/Genre;

.field public static final enum MAP:Lnet/sf/saxon/om/Genre;

.field public static final enum NODE:Lnet/sf/saxon/om/Genre;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnet/sf/saxon/om/Genre;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/om/Genre;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/om/Genre;->ANY:Lnet/sf/saxon/om/Genre;

    new-instance v1, Lnet/sf/saxon/om/Genre;

    const-string v2, "ATOMIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/om/Genre;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/om/Genre;->ATOMIC:Lnet/sf/saxon/om/Genre;

    new-instance v2, Lnet/sf/saxon/om/Genre;

    const-string v3, "NODE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/om/Genre;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/om/Genre;->NODE:Lnet/sf/saxon/om/Genre;

    new-instance v3, Lnet/sf/saxon/om/Genre;

    const-string v4, "FUNCTION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/om/Genre;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/om/Genre;->FUNCTION:Lnet/sf/saxon/om/Genre;

    new-instance v4, Lnet/sf/saxon/om/Genre;

    const-string v5, "MAP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/om/Genre;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/om/Genre;->MAP:Lnet/sf/saxon/om/Genre;

    new-instance v5, Lnet/sf/saxon/om/Genre;

    const-string v6, "ARRAY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lnet/sf/saxon/om/Genre;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/saxon/om/Genre;->ARRAY:Lnet/sf/saxon/om/Genre;

    new-instance v6, Lnet/sf/saxon/om/Genre;

    const-string v7, "EXTERNAL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lnet/sf/saxon/om/Genre;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    filled-new-array/range {v0 .. v6}, [Lnet/sf/saxon/om/Genre;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/om/Genre;->$VALUES:[Lnet/sf/saxon/om/Genre;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/om/Genre;
    .locals 1

    const-class v0, Lnet/sf/saxon/om/Genre;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Genre;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/om/Genre;
    .locals 1

    sget-object v0, Lnet/sf/saxon/om/Genre;->$VALUES:[Lnet/sf/saxon/om/Genre;

    invoke-virtual {v0}, [Lnet/sf/saxon/om/Genre;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/om/Genre;

    return-object v0
.end method
