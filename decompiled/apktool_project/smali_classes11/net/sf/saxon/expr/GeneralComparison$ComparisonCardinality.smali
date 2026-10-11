.class public final enum Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/GeneralComparison;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComparisonCardinality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

.field public static final enum MANY_TO_MANY:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

.field public static final enum MANY_TO_ONE:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

.field public static final enum ONE_TO_ONE:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    const-string v1, "ONE_TO_ONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->ONE_TO_ONE:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    new-instance v1, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    const-string v2, "MANY_TO_ONE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->MANY_TO_ONE:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    new-instance v2, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    const-string v3, "MANY_TO_MANY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->MANY_TO_MANY:Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    filled-new-array {v0, v1, v2}, [Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->$VALUES:[Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

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

.method public static valueOf(Ljava/lang/String;)Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;
    .locals 1

    const-class v0, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    return-object p0
.end method

.method public static values()[Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->$VALUES:[Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    invoke-virtual {v0}, [Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/saxon/expr/GeneralComparison$ComparisonCardinality;

    return-object v0
.end method
