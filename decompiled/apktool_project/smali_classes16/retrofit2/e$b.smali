.class public Lretrofit2/e$b;
.super Lretrofit2/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/e$b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;)Lretrofit2/CallAdapter$Factory;
    .locals 0

    new-instance p0, Lretrofit2/c;

    invoke-direct {p0, p1}, Lretrofit2/c;-><init>(Ljava/util/concurrent/Executor;)V

    return-object p0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 0

    new-instance p0, Lretrofit2/e$b$a;

    invoke-direct {p0}, Lretrofit2/e$b$a;-><init>()V

    return-object p0
.end method
