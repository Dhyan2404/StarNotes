.class public final Lonyx/org/apache/commons/io/function/IOStream$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lonyx/org/apache/commons/io/function/IOStream;->iterate(Ljava/lang/Object;Lonyx/org/apache/commons/io/function/IOUnaryOperator;)Lonyx/org/apache/commons/io/function/IOStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lonyx/org/apache/commons/io/function/IOUnaryOperator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lonyx/org/apache/commons/io/function/IOUnaryOperator;)V
    .locals 0

    iput-object p1, p0, Lonyx/org/apache/commons/io/function/IOStream$a;->f:Ljava/lang/Object;

    iput-object p2, p0, Lonyx/org/apache/commons/io/function/IOStream$a;->g:Lonyx/org/apache/commons/io/function/IOUnaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/sunia/HTREnginev2/ffi;->a:Ljava/lang/Object;

    iput-object p1, p0, Lonyx/org/apache/commons/io/function/IOStream$a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lonyx/org/apache/commons/io/function/IOStream$a;->e:Ljava/lang/Object;

    sget-object v1, Lcom/sunia/HTREnginev2/ffi;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lonyx/org/apache/commons/io/function/IOStream$a;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lonyx/org/apache/commons/io/function/IOStream$a;->g:Lonyx/org/apache/commons/io/function/IOUnaryOperator;

    invoke-interface {v1, v0}, Lonyx/org/apache/commons/io/function/IOFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lonyx/org/apache/commons/io/function/IOStream$a;->e:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method
