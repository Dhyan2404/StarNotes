.class public final Lnet/sf/saxon/expr/UntypedSequenceConverter$a;
.super Lnet/sf/saxon/type/Converter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceRejector(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnet/sf/saxon/type/PlainType;

.field public final synthetic c:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/PlainType;Lnet/sf/saxon/expr/Expression;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/UntypedSequenceConverter$a;->b:Lnet/sf/saxon/type/PlainType;

    iput-object p2, p0, Lnet/sf/saxon/expr/UntypedSequenceConverter$a;->c:Lnet/sf/saxon/expr/Expression;

    invoke-direct {p0}, Lnet/sf/saxon/type/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;
    .locals 2

    new-instance p1, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Implicit conversion of untypedAtomic value to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/UntypedSequenceConverter$a;->b:Lnet/sf/saxon/type/PlainType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string v0, "XPTY0117"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/UntypedSequenceConverter$a;->c:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    return-object p1
.end method
