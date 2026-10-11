.class public abstract Lretrofit2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/d$c;,
        Lretrofit2/d$i;,
        Lretrofit2/d$m;,
        Lretrofit2/d$h;,
        Lretrofit2/d$e;,
        Lretrofit2/d$d;,
        Lretrofit2/d$g;,
        Lretrofit2/d$l;,
        Lretrofit2/d$k;,
        Lretrofit2/d$j;,
        Lretrofit2/d$f;,
        Lretrofit2/d$n;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/sunia/HTREnginev2/vkl;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/vkl;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b()Lretrofit2/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lretrofit2/d$b;

    invoke-direct {v0, p0}, Lretrofit2/d$b;-><init>(Lretrofit2/d;)V

    return-object v0
.end method

.method public final c()Lretrofit2/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/d<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lretrofit2/d$a;

    invoke-direct {v0, p0}, Lretrofit2/d$a;-><init>(Lretrofit2/d;)V

    return-object v0
.end method
