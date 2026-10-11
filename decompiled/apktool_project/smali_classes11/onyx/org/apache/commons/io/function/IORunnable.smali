.class public interface abstract Lonyx/org/apache/commons/io/function/IORunnable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static synthetic a(Lonyx/org/apache/commons/io/function/IORunnable;)V
    .locals 0

    invoke-direct {p0}, Lonyx/org/apache/commons/io/function/IORunnable;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 0

    invoke-static {p0}, Lonyx/org/apache/commons/io/function/Uncheck;->run(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-void
.end method

.method public static noop()Lonyx/org/apache/commons/io/function/IORunnable;
    .locals 1

    sget-object v0, Lcom/sunia/HTREnginev2/bae;->b:Lonyx/org/apache/commons/io/function/IORunnable;

    return-object v0
.end method


# virtual methods
.method public asRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/cei;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cei;-><init>(Lonyx/org/apache/commons/io/function/IORunnable;)V

    return-object v0
.end method

.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
