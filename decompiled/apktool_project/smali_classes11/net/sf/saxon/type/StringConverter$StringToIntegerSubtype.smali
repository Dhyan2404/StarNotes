.class public Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToIntegerSubtype"
.end annotation


# static fields
.field public static final synthetic c:Z


# instance fields
.field public b:Lnet/sf/saxon/type/BuiltInAtomicType;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/BuiltInAtomicType;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;->b:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-void
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/value/IntegerValue;->stringToInteger(Ljava/lang/String;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    const-string v1, "Integer value is out of range for type "

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;->b:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v2, v3, v0}, Lnet/sf/saxon/value/IntegerValue;->checkRange(JLnet/sf/saxon/type/BuiltInAtomicType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;->b:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/value/Int64Value;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;->b:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/value/BigIntegerValue;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/value/BigIntegerValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/BigIntegerValue;->asBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;->b:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {v2, v3}, Lnet/sf/saxon/value/IntegerValue;->checkBigRange(Ljava/math/BigInteger;Lnet/sf/saxon/type/BuiltInAtomicType;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;->b:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/value/AtomicValue;->setTypeLabel(Lnet/sf/saxon/type/AtomicType;)V

    return-object p1

    :cond_2
    new-instance p1, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToIntegerSubtype;->b:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method
