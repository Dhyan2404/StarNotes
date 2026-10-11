.class public final Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;


# direct methods
.method public constructor <init>([Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method


# virtual methods
.method public getTargets()[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/bcel/internal/generic/TargetLostException;->targets:[Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-object p0
.end method
