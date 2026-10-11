.class public Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/ItemMappingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/expr/AtomicSequenceConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtomicSequenceMappingFunction"
.end annotation


# instance fields
.field public e:Lnet/sf/saxon/type/Converter;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;->mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public mapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/value/AtomicValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;->e:Lnet/sf/saxon/type/Converter;

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;->f:Ljava/lang/String;

    if-eqz p0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public setConverter(Lnet/sf/saxon/type/Converter;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;->e:Lnet/sf/saxon/type/Converter;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/AtomicSequenceConverter$AtomicSequenceMappingFunction;->f:Ljava/lang/String;

    return-void
.end method
