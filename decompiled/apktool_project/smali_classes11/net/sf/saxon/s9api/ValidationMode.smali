.class public final enum Lnet/sf/saxon/s9api/ValidationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/s9api/ValidationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/s9api/ValidationMode;

.field public static final enum DEFAULT:Lnet/sf/saxon/s9api/ValidationMode;

.field public static final enum LAX:Lnet/sf/saxon/s9api/ValidationMode;

.field public static final enum PRESERVE:Lnet/sf/saxon/s9api/ValidationMode;

.field public static final enum STRICT:Lnet/sf/saxon/s9api/ValidationMode;

.field public static final enum STRIP:Lnet/sf/saxon/s9api/ValidationMode;


# instance fields
.field private final number:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lnet/sf/saxon/s9api/ValidationMode;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/s9api/ValidationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/sf/saxon/s9api/ValidationMode;->STRICT:Lnet/sf/saxon/s9api/ValidationMode;

    new-instance v1, Lnet/sf/saxon/s9api/ValidationMode;

    const-string v4, "LAX"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/sf/saxon/s9api/ValidationMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/sf/saxon/s9api/ValidationMode;->LAX:Lnet/sf/saxon/s9api/ValidationMode;

    new-instance v3, Lnet/sf/saxon/s9api/ValidationMode;

    const-string v4, "PRESERVE"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lnet/sf/saxon/s9api/ValidationMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/sf/saxon/s9api/ValidationMode;->PRESERVE:Lnet/sf/saxon/s9api/ValidationMode;

    new-instance v4, Lnet/sf/saxon/s9api/ValidationMode;

    const-string v5, "STRIP"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lnet/sf/saxon/s9api/ValidationMode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/sf/saxon/s9api/ValidationMode;->STRIP:Lnet/sf/saxon/s9api/ValidationMode;

    new-instance v5, Lnet/sf/saxon/s9api/ValidationMode;

    const-string v6, "DEFAULT"

    invoke-direct {v5, v6, v7, v2}, Lnet/sf/saxon/s9api/ValidationMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/sf/saxon/s9api/ValidationMode;->DEFAULT:Lnet/sf/saxon/s9api/ValidationMode;

    filled-new-array {v0, v1, v3, v4, v5}, [Lnet/sf/saxon/s9api/ValidationMode;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/s9api/ValidationMode;->$VALUES:[Lnet/sf/saxon/s9api/ValidationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnet/sf/saxon/s9api/ValidationMode;->number:I

    return-void
.end method

.method public static get(I)Lnet/sf/saxon/s9api/ValidationMode;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lnet/sf/saxon/s9api/ValidationMode;->DEFAULT:Lnet/sf/saxon/s9api/ValidationMode;

    return-object p0

    :cond_0
    sget-object p0, Lnet/sf/saxon/s9api/ValidationMode;->STRIP:Lnet/sf/saxon/s9api/ValidationMode;

    return-object p0

    :cond_1
    sget-object p0, Lnet/sf/saxon/s9api/ValidationMode;->PRESERVE:Lnet/sf/saxon/s9api/ValidationMode;

    return-object p0

    :cond_2
    sget-object p0, Lnet/sf/saxon/s9api/ValidationMode;->LAX:Lnet/sf/saxon/s9api/ValidationMode;

    return-object p0

    :cond_3
    sget-object p0, Lnet/sf/saxon/s9api/ValidationMode;->STRICT:Lnet/sf/saxon/s9api/ValidationMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/s9api/ValidationMode;
    .locals 1

    const-class v0, Lnet/sf/saxon/s9api/ValidationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/ValidationMode;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/s9api/ValidationMode;
    .locals 1

    sget-object v0, Lnet/sf/saxon/s9api/ValidationMode;->$VALUES:[Lnet/sf/saxon/s9api/ValidationMode;

    invoke-virtual {v0}, [Lnet/sf/saxon/s9api/ValidationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/s9api/ValidationMode;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/s9api/ValidationMode;->number:I

    return p0
.end method
