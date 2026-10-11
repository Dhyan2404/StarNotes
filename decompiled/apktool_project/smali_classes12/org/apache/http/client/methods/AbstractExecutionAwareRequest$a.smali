.class public Lorg/apache/http/client/methods/AbstractExecutionAwareRequest$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/concurrent/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;->setConnectionRequest(Lorg/apache/http/conn/ClientConnectionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lorg/apache/http/conn/ClientConnectionRequest;

.field public final synthetic f:Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;Lorg/apache/http/conn/ClientConnectionRequest;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest$a;->f:Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;

    iput-object p2, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest$a;->e:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest$a;->e:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-interface {p0}, Lorg/apache/http/conn/ClientConnectionRequest;->abortRequest()V

    const/4 p0, 0x1

    return p0
.end method
