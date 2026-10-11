.class public Lnet/sf/saxon/type/Converter$NumericToDouble;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumericToDouble"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$NumericToDouble;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$NumericToDouble;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$NumericToDouble;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$NumericToDouble;->INSTANCE:Lnet/sf/saxon/type/Converter$NumericToDouble;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter$UnfailingConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$NumericToDouble;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$NumericToDouble;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;
    .locals 2

    .line 3
    instance-of p0, p1, Lnet/sf/saxon/value/DoubleValue;

    if-eqz p0, :cond_0

    .line 4
    check-cast p1, Lnet/sf/saxon/value/DoubleValue;

    return-object p1

    .line 5
    :cond_0
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p0
.end method
