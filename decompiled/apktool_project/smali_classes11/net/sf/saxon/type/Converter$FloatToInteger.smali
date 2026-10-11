.class public Lnet/sf/saxon/type/Converter$FloatToInteger;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatToInteger"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$FloatToInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$FloatToInteger;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$FloatToInteger;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$FloatToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$FloatToInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    check-cast p1, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/FloatValue;->getDoubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lnet/sf/saxon/value/IntegerValue;->fromDouble(D)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method
