.class public Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64BinaryToHexBinary"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;->INSTANCE:Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/HexBinaryValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$Base64BinaryToHexBinary;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/HexBinaryValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/HexBinaryValue;
    .locals 0

    .line 3
    new-instance p0, Lnet/sf/saxon/value/HexBinaryValue;

    check-cast p1, Lnet/sf/saxon/value/Base64BinaryValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Base64BinaryValue;->getBinaryValue()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/HexBinaryValue;-><init>([B)V

    return-object p0
.end method
