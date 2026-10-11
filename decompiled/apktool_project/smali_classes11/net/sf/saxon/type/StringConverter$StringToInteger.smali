.class public Lnet/sf/saxon/type/StringConverter$StringToInteger;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToInteger"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToInteger;

    invoke-direct {v0}, Lnet/sf/saxon/type/StringConverter$StringToInteger;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToInteger;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/StringValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/value/StringValue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->stringToInteger(Ljava/lang/String;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method

.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->stringToInteger(Ljava/lang/String;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method

.method public validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    invoke-static {p1}, Lnet/sf/saxon/value/IntegerValue;->castableAsInteger(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method
