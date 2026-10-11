.class public Lnet/sf/saxon/type/Converter$FloatToDecimal;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatToDecimal"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$FloatToDecimal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$FloatToDecimal;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$FloatToDecimal;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$FloatToDecimal;->INSTANCE:Lnet/sf/saxon/type/Converter$FloatToDecimal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    :try_start_0
    new-instance p0, Lnet/sf/saxon/value/BigDecimalValue;

    check-cast p1, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/FloatValue;->getFloatValue()F

    move-result p1

    float-to-double v0, p1

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(D)V
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationException;->getValidationFailure()Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method
