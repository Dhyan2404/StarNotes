.class public final synthetic Lcom/sunia/HTREnginev2/abk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:J

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(JLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/abk;->e:J

    iput-object p3, p0, Lcom/sunia/HTREnginev2/abk;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/abk;->e:J

    iget-object p0, p0, Lcom/sunia/HTREnginev2/abk;->f:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {v0, v1, p0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->u(JLjava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Field;)V

    return-void
.end method
