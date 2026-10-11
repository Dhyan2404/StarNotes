.class public final synthetic Lcom/sunia/HTREnginev2/w8n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w8n;->a:Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w8n;->a:Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/harmony/unpack200/bytecode/forms/TableSwitchForm;->a(Lorg/apache/commons/compress/harmony/unpack200/bytecode/OperandManager;I)I

    move-result p0

    return p0
.end method
