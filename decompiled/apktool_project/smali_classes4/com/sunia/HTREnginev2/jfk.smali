.class public final synthetic Lcom/sunia/HTREnginev2/jfk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jfk;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jfk;->a:Ljava/lang/String;

    check-cast p1, Lcom/couchbase/lite/internal/sockets/SocketFromRemote;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;->H(Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-void
.end method
