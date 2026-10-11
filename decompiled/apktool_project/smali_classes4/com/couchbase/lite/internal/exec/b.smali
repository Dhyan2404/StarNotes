.class public final synthetic Lcom/couchbase/lite/internal/exec/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/internal/exec/CleanerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/exec/CleanerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/b;->e:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    return-void
.end method


# virtual methods
.method public final clean(Z)V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/b;->e:Lcom/couchbase/lite/internal/exec/CleanerImpl;

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/exec/Cleaner;->a(Lcom/couchbase/lite/internal/exec/CleanerImpl;Z)V

    return-void
.end method
