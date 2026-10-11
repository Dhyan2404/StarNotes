.class public Lretrofit2/c$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/c$b$a;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Throwable;

.field public final synthetic f:Lretrofit2/c$b$a;


# direct methods
.method public constructor <init>(Lretrofit2/c$b$a;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/c$b$a$b;->f:Lretrofit2/c$b$a;

    iput-object p2, p0, Lretrofit2/c$b$a$b;->e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lretrofit2/c$b$a$b;->f:Lretrofit2/c$b$a;

    iget-object v1, v0, Lretrofit2/c$b$a;->a:Lretrofit2/Callback;

    iget-object v0, v0, Lretrofit2/c$b$a;->b:Lretrofit2/c$b;

    iget-object p0, p0, Lretrofit2/c$b$a$b;->e:Ljava/lang/Throwable;

    invoke-interface {v1, v0, p0}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method
