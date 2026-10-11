.class public Lnet/sf/saxon/expr/UntypedSequenceConverter$UntypedConverter;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/UntypedSequenceConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UntypedConverter"
.end annotation


# instance fields
.field public b:Lnet/sf/saxon/type/Converter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/lib/ConversionRules;Lnet/sf/saxon/type/Converter;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/Converter;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/UntypedSequenceConverter$UntypedConverter;->b:Lnet/sf/saxon/type/Converter;

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isUntypedAtomic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/expr/UntypedSequenceConverter$UntypedConverter;->b:Lnet/sf/saxon/type/Converter;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method
