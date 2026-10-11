.class public Lnet/sf/saxon/type/StringConverter$StringToString;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToString"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToString;

    invoke-direct {v0}, Lnet/sf/saxon/type/StringConverter$StringToString;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToString;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method

.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method

.method public isAlwaysSuccessful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
