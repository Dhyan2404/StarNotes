.class public final synthetic Lcom/sunia/HTREnginev2/i3j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/logging/BaseLogSink;

.field public final synthetic f:Lcom/couchbase/lite/LogLevel;

.field public final synthetic g:Lcom/couchbase/lite/LogDomain;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/logging/BaseLogSink;Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i3j;->e:Lcom/couchbase/lite/logging/BaseLogSink;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/i3j;->f:Lcom/couchbase/lite/LogLevel;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/i3j;->g:Lcom/couchbase/lite/LogDomain;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/i3j;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/i3j;->e:Lcom/couchbase/lite/logging/BaseLogSink;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/i3j;->f:Lcom/couchbase/lite/LogLevel;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/i3j;->g:Lcom/couchbase/lite/LogDomain;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i3j;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->a(Lcom/couchbase/lite/logging/BaseLogSink;Lcom/couchbase/lite/LogLevel;Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method
