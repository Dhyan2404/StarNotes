.class public Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToNormalizedString"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;

    invoke-direct {v0}, Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToNormalizedString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 1

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->normalizeWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->NORMALIZED_STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/type/AtomicType;)V

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
