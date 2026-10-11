.class Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodObject"
.end annotation


# instance fields
.field access:I

.field arg_names:[Ljava/lang/String;

.field arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

.field class_name:Ljava/lang/String;

.field name:Ljava/lang/String;

.field result_type:Lcom/sun/org/apache/bcel/internal/generic/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/bcel/internal/generic/Type;[Lcom/sun/org/apache/bcel/internal/generic/Type;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;->class_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;->result_type:Lcom/sun/org/apache/bcel/internal/generic/Type;

    iput-object p4, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;->arg_types:[Lcom/sun/org/apache/bcel/internal/generic/Type;

    iput p5, p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionFactory$MethodObject;->access:I

    return-void
.end method
