.class public Lbolts/CancellationToken;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbolts/CancellationTokenSource;


# direct methods
.method public constructor <init>(Lbolts/CancellationTokenSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbolts/CancellationToken;->a:Lbolts/CancellationTokenSource;

    return-void
.end method


# virtual methods
.method public isCancellationRequested()Z
    .locals 0

    iget-object p0, p0, Lbolts/CancellationToken;->a:Lbolts/CancellationTokenSource;

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result p0

    return p0
.end method

.method public register(Ljava/lang/Runnable;)Lbolts/CancellationTokenRegistration;
    .locals 0

    iget-object p0, p0, Lbolts/CancellationToken;->a:Lbolts/CancellationTokenSource;

    invoke-virtual {p0, p1}, Lbolts/CancellationTokenSource;->M(Ljava/lang/Runnable;)Lbolts/CancellationTokenRegistration;

    move-result-object p0

    return-object p0
.end method

.method public throwIfCancellationRequested()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/CancellationException;
        }
    .end annotation

    iget-object p0, p0, Lbolts/CancellationToken;->a:Lbolts/CancellationTokenSource;

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->e0()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lbolts/CancellationToken;->a:Lbolts/CancellationTokenSource;

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s@%s[cancellationRequested=%s]"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
