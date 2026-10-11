.class public final enum Lnet/sf/saxon/functions/AccumulatorFn$Phase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/AccumulatorFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Phase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/functions/AccumulatorFn$Phase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/functions/AccumulatorFn$Phase;

.field public static final enum AFTER:Lnet/sf/saxon/functions/AccumulatorFn$Phase;

.field public static final enum BEFORE:Lnet/sf/saxon/functions/AccumulatorFn$Phase;

.field public static final enum UNSPECIFIED:Lnet/sf/saxon/functions/AccumulatorFn$Phase;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    const-string v1, "AFTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/functions/AccumulatorFn$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/functions/AccumulatorFn$Phase;->AFTER:Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    new-instance v1, Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    const-string v2, "BEFORE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/functions/AccumulatorFn$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/functions/AccumulatorFn$Phase;->BEFORE:Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    new-instance v2, Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    const-string v3, "UNSPECIFIED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/functions/AccumulatorFn$Phase;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/functions/AccumulatorFn$Phase;->UNSPECIFIED:Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    filled-new-array {v0, v1, v2}, [Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/AccumulatorFn$Phase;->$VALUES:[Lnet/sf/saxon/functions/AccumulatorFn$Phase;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/functions/AccumulatorFn$Phase;
    .locals 1

    const-class v0, Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/functions/AccumulatorFn$Phase;
    .locals 1

    sget-object v0, Lnet/sf/saxon/functions/AccumulatorFn$Phase;->$VALUES:[Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    invoke-virtual {v0}, [Lnet/sf/saxon/functions/AccumulatorFn$Phase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    return-object v0
.end method
