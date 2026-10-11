.class public abstract Lcom/sunia/HTREnginev2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/sunia/HTREnginev2/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sunia/HTREnginev2/k;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/k;->b:J

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
.end method

.method public abstract a(Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V
.end method

.method public b()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k;->c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/k;->a()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/k;->c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/k;->c:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    return-object p0
.end method

.method public abstract c()Ljava/lang/String;
.end method
