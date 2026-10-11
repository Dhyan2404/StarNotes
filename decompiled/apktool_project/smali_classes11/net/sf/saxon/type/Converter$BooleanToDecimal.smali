.class public Lnet/sf/saxon/type/Converter$BooleanToDecimal;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanToDecimal"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToDecimal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$BooleanToDecimal;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$BooleanToDecimal;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$BooleanToDecimal;->INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToDecimal;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$BooleanToDecimal;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/BigDecimalValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$BooleanToDecimal;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/BigDecimalValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/BigDecimalValue;
    .locals 0

    .line 3
    check-cast p1, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lnet/sf/saxon/value/BigDecimalValue;->ONE:Lnet/sf/saxon/value/BigDecimalValue;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/value/BigDecimalValue;->ZERO:Lnet/sf/saxon/value/BigDecimalValue;

    :goto_0
    return-object p0
.end method
