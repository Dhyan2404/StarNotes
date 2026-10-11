.class public Lnet/sf/saxon/type/Converter$BooleanToDouble;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanToDouble"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToDouble;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$BooleanToDouble;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$BooleanToDouble;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$BooleanToDouble;->INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToDouble;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$BooleanToDouble;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$BooleanToDouble;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/DoubleValue;
    .locals 2

    .line 3
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    check-cast p1, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p0
.end method
