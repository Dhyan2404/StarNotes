.class public final synthetic Lcom/sunia/HTREnginev2/dfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/dfk;->a:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/dfk;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sunia/HTREnginev2/dfk;->a:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dfk;->b:Ljava/lang/String;

    check-cast p1, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    invoke-static {v0, p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->f(ILjava/lang/String;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method
