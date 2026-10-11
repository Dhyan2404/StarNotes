.class public abstract Lcom/google/common/util/concurrent/c;
.super Lcom/google/common/util/concurrent/AbstractFuture$i;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation build Lcom/google/j2objc/annotations/ReflectionSupport;
    value = .enum Lcom/google/j2objc/annotations/ReflectionSupport$Level;->FULL:Lcom/google/j2objc/annotations/ReflectionSupport$Level;
.end annotation

.annotation runtime Lcom/sunia/HTREnginev2/pnf;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/c$d;,
        Lcom/google/common/util/concurrent/c$c;,
        Lcom/google/common/util/concurrent/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$i<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field public static final o:Lcom/google/common/util/concurrent/c$b;

.field public static final p:Ljava/util/logging/Logger;


# instance fields
.field public volatile m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public volatile n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/google/common/util/concurrent/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/c;->p:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/common/util/concurrent/c$c;

    const-class v3, Ljava/util/Set;

    const-string v4, "m"

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v4, "n"

    invoke-static {v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/common/util/concurrent/c$c;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Lcom/google/common/util/concurrent/c$d;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/c$d;-><init>(Lcom/google/common/util/concurrent/c$a;)V

    move-object v1, v0

    :goto_0
    sput-object v2, Lcom/google/common/util/concurrent/c;->o:Lcom/google/common/util/concurrent/c$b;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/google/common/util/concurrent/c;->p:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/c;->m:Ljava/util/Set;

    iput p1, p0, Lcom/google/common/util/concurrent/c;->n:I

    return-void
.end method

.method public static synthetic x(Lcom/google/common/util/concurrent/c;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/c;->m:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic y(Lcom/google/common/util/concurrent/c;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/c;->m:Ljava/util/Set;

    return-object p1
.end method

.method public static synthetic z(Lcom/google/common/util/concurrent/c;)I
    .locals 1

    iget v0, p0, Lcom/google/common/util/concurrent/c;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/c;->n:I

    return v0
.end method


# virtual methods
.method public abstract A(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method public final B()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/c;->m:Ljava/util/Set;

    return-void
.end method

.method public final C()I
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/c;->o:Lcom/google/common/util/concurrent/c$b;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/c$b;->b(Lcom/google/common/util/concurrent/c;)I

    move-result p0

    return p0
.end method

.method public final D()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/c;->m:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/c;->A(Ljava/util/Set;)V

    sget-object v1, Lcom/google/common/util/concurrent/c;->o:Lcom/google/common/util/concurrent/c$b;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/c$b;->a(Lcom/google/common/util/concurrent/c;Ljava/util/Set;Ljava/util/Set;)V

    iget-object p0, p0, Lcom/google/common/util/concurrent/c;->m:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    :cond_0
    return-object v0
.end method
