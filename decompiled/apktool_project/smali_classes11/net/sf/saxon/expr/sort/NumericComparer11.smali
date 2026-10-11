.class public Lnet/sf/saxon/expr/sort/NumericComparer11;
.super Lnet/sf/saxon/expr/sort/NumericComparer;
.source "SourceFile"


# static fields
.field public static final b:Lnet/sf/saxon/expr/sort/NumericComparer11;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/expr/sort/NumericComparer11;

    invoke-direct {v0}, Lnet/sf/saxon/expr/sort/NumericComparer11;-><init>()V

    sput-object v0, Lnet/sf/saxon/expr/sort/NumericComparer11;->b:Lnet/sf/saxon/expr/sort/NumericComparer11;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/expr/sort/NumericComparer;-><init>()V

    invoke-static {}, Lnet/sf/saxon/value/StringToDouble11;->getInstance()Lnet/sf/saxon/value/StringToDouble11;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/NumericComparer;->converter:Lnet/sf/saxon/type/StringToDouble;

    return-void
.end method

.method public static getInstance()Lnet/sf/saxon/expr/sort/NumericComparer;
    .locals 1

    sget-object v0, Lnet/sf/saxon/expr/sort/NumericComparer11;->b:Lnet/sf/saxon/expr/sort/NumericComparer11;

    return-object v0
.end method


# virtual methods
.method public save()Ljava/lang/String;
    .locals 0

    const-string p0, "NC11"

    return-object p0
.end method
