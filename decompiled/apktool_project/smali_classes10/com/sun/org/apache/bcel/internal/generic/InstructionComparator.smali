.class public interface abstract Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator$1;

    invoke-direct {v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator$1;-><init>()V

    sput-object v0, Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;->DEFAULT:Lcom/sun/org/apache/bcel/internal/generic/InstructionComparator;

    return-void
.end method


# virtual methods
.method public abstract equals(Lcom/sun/org/apache/bcel/internal/generic/Instruction;Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Z
.end method
