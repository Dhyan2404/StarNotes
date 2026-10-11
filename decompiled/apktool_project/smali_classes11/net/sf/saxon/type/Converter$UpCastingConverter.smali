.class public Lnet/sf/saxon/type/Converter$UpCastingConverter;
.super Lnet/sf/saxon/type/Converter$UnfailingConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpCastingConverter"
.end annotation


# instance fields
.field public final b:Lnet/sf/saxon/type/AtomicType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/AtomicType;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter$UnfailingConverter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/Converter$UpCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$UpCastingConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/type/Converter$UpCastingConverter;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/AtomicValue;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method
