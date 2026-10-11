.class public Lnet/sf/saxon/type/StringConverter$StringToHexBinary;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToHexBinary"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToHexBinary;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToHexBinary;

    invoke-direct {v0}, Lnet/sf/saxon/type/StringConverter$StringToHexBinary;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToHexBinary;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToHexBinary;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    :try_start_0
    new-instance p0, Lnet/sf/saxon/value/HexBinaryValue;

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/HexBinaryValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/type/ValidationFailure;->fromException(Ljava/lang/Exception;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    return-object p0
.end method
