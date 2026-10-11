.class public final enum Lnet/sf/saxon/s9api/OccurrenceIndicator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/s9api/OccurrenceIndicator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/s9api/OccurrenceIndicator;

.field public static final enum ONE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

.field public static final enum ONE_OR_MORE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

.field public static final enum ZERO:Lnet/sf/saxon/s9api/OccurrenceIndicator;

.field public static final enum ZERO_OR_MORE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

.field public static final enum ZERO_OR_ONE:Lnet/sf/saxon/s9api/OccurrenceIndicator;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnet/sf/saxon/s9api/OccurrenceIndicator;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/s9api/OccurrenceIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ZERO:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    new-instance v1, Lnet/sf/saxon/s9api/OccurrenceIndicator;

    const-string v2, "ZERO_OR_ONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/s9api/OccurrenceIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ZERO_OR_ONE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    new-instance v2, Lnet/sf/saxon/s9api/OccurrenceIndicator;

    const-string v3, "ZERO_OR_MORE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/s9api/OccurrenceIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ZERO_OR_MORE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    new-instance v3, Lnet/sf/saxon/s9api/OccurrenceIndicator;

    const-string v4, "ONE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lnet/sf/saxon/s9api/OccurrenceIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ONE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    new-instance v4, Lnet/sf/saxon/s9api/OccurrenceIndicator;

    const-string v5, "ONE_OR_MORE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lnet/sf/saxon/s9api/OccurrenceIndicator;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ONE_OR_MORE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/sf/saxon/s9api/OccurrenceIndicator;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/s9api/OccurrenceIndicator;->$VALUES:[Lnet/sf/saxon/s9api/OccurrenceIndicator;

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

.method public static getOccurrenceIndicator(I)Lnet/sf/saxon/s9api/OccurrenceIndicator;
    .locals 1

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_4

    const/16 v0, 0x4000

    if-eq p0, v0, :cond_3

    const/16 v0, 0x6000

    if-eq p0, v0, :cond_2

    const v0, 0xc000

    if-eq p0, v0, :cond_1

    const v0, 0xe000

    if-eq p0, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ZERO_OR_MORE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ZERO_OR_MORE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-object p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ONE_OR_MORE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ZERO_OR_ONE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ONE:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-object p0

    :cond_4
    sget-object p0, Lnet/sf/saxon/s9api/OccurrenceIndicator;->ZERO:Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/s9api/OccurrenceIndicator;
    .locals 1

    const-class v0, Lnet/sf/saxon/s9api/OccurrenceIndicator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/s9api/OccurrenceIndicator;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/OccurrenceIndicator;->$VALUES:[Lnet/sf/saxon/s9api/OccurrenceIndicator;

    invoke-virtual {v0}, [Lnet/sf/saxon/s9api/OccurrenceIndicator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/s9api/OccurrenceIndicator;

    return-object v0
.end method


# virtual methods
.method public allowsMany()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    return p0
.end method

.method public allowsZero()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p0

    return p0
.end method

.method public getCardinality()I
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/OccurrenceIndicator$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 p0, 0x2000

    return p0

    :cond_0
    const p0, 0xc000

    return p0

    :cond_1
    const/16 p0, 0x4000

    return p0

    :cond_2
    const p0, 0xe000

    return p0

    :cond_3
    const/16 p0, 0x6000

    return p0
.end method

.method public subsumes(Lnet/sf/saxon/s9api/OccurrenceIndicator;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getCardinality()I

    move-result p0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/OccurrenceIndicator;->getCardinality()I

    move-result p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/OccurrenceIndicator$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "!!!"

    return-object p0

    :cond_0
    const-string p0, "+"

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0

    :cond_2
    const-string p0, "*"

    return-object p0

    :cond_3
    const-string p0, "?"

    return-object p0

    :cond_4
    const-string p0, "0"

    return-object p0
.end method
