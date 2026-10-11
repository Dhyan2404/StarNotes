.class public Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public argumentTypes:[Lnet/sf/saxon/value/SequenceType;

.field public arity:I

.field public cardinality:I

.field public functionSet:Lnet/sf/saxon/functions/registry/BuiltInFunctionSet;

.field public implementationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lnet/sf/saxon/functions/SystemFunction;",
            ">;"
        }
    .end annotation
.end field

.field public itemType:Lnet/sf/saxon/type/ItemType;

.field public name:Lnet/sf/saxon/om/StructuredQName;

.field public optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

.field public properties:I

.field public resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

.field public usage:[Lnet/sf/saxon/expr/OperandUsage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public arg(ILnet/sf/saxon/type/ItemType;ILnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;
    .locals 3

    const v0, 0xe000

    and-int/2addr v0, p3

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->NAVIGATION:Lnet/sf/saxon/expr/OperandUsage;

    const/high16 v2, 0x2000000

    and-int/2addr v2, p3

    if-eqz v2, :cond_0

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    goto :goto_0

    :cond_0
    const/high16 v2, 0x4000000

    and-int/2addr v2, p3

    if-eqz v2, :cond_1

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->TRANSMISSION:Lnet/sf/saxon/expr/OperandUsage;

    goto :goto_0

    :cond_1
    const/high16 v2, 0x1000000

    and-int/2addr p3, v2

    if-eqz p3, :cond_2

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->INSPECTION:Lnet/sf/saxon/expr/OperandUsage;

    goto :goto_0

    :cond_2
    instance-of p3, p2, Lnet/sf/saxon/type/PlainType;

    if-eqz p3, :cond_3

    sget-object v1, Lnet/sf/saxon/expr/OperandUsage;->ABSORPTION:Lnet/sf/saxon/expr/OperandUsage;

    :cond_3
    :goto_0
    :try_start_0
    iget-object p3, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->argumentTypes:[Lnet/sf/saxon/value/SequenceType;

    invoke-static {p2, v0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object p2

    aput-object p2, p3, p1

    iget-object p2, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->resultIfEmpty:[Lnet/sf/saxon/om/Sequence;

    aput-object p4, p2, p1

    iget-object p2, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->usage:[Lnet/sf/saxon/expr/OperandUsage;

    aput-object v1, p2, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Internal Saxon error: Can\'t set argument "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->name:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public setOptionDetails(Lnet/sf/saxon/functions/OptionsParameter;)Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    return-object p0
.end method
