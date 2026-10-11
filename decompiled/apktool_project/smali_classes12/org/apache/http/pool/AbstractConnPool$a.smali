.class public Lorg/apache/http/pool/AbstractConnPool$a;
.super Lcom/sunia/HTREnginev2/isl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/pool/AbstractConnPool;->g(Ljava/lang/Object;)Lcom/sunia/HTREnginev2/isl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sunia/HTREnginev2/isl<",
        "TT;TC;TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lorg/apache/http/pool/AbstractConnPool;


# direct methods
.method public constructor <init>(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/pool/AbstractConnPool$a;->f:Lorg/apache/http/pool/AbstractConnPool;

    iput-object p3, p0, Lorg/apache/http/pool/AbstractConnPool$a;->e:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/isl;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/pool/AbstractConnPool$a;->f:Lorg/apache/http/pool/AbstractConnPool;

    iget-object p0, p0, Lorg/apache/http/pool/AbstractConnPool$a;->e:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lorg/apache/http/pool/AbstractConnPool;->createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;

    move-result-object p0

    return-object p0
.end method
