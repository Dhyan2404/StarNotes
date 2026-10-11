.class public Lnet/sf/saxon/expr/AtomicSequenceConverter$a;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/expr/AtomicSequenceConverter;->allocateConverter(Lnet/sf/saxon/Configuration;ZLnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnet/sf/saxon/expr/AtomicSequenceConverter;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/AtomicSequenceConverter;Lnet/sf/saxon/lib/ConversionRules;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter$a;->b:Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-direct {p0, p2}, Lnet/sf/saxon/type/Converter;-><init>(Lnet/sf/saxon/lib/ConversionRules;)V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/type/Converter;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter$a;->b:Lnet/sf/saxon/expr/AtomicSequenceConverter;

    iget-object v2, v2, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    check-cast v2, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter$a;->b:Lnet/sf/saxon/expr/AtomicSequenceConverter;

    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;->requiredItemType:Lnet/sf/saxon/type/PlainType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    return-object p0
.end method
