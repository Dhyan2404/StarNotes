.class public abstract Lnet/sf/saxon/type/Converter$UnfailingConverter;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UnfailingConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter$UnfailingConverter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public abstract convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/AtomicValue;
.end method

.method public final isAlwaysSuccessful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
