.class public final synthetic Lcom/couchbase/lite/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/DocumentChangeNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/DocumentChangeNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/s;->e:Lcom/couchbase/lite/DocumentChangeNotifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/s;->e:Lcom/couchbase/lite/DocumentChangeNotifier;

    invoke-static {p0}, Lcom/couchbase/lite/DocumentChangeNotifier;->f(Lcom/couchbase/lite/DocumentChangeNotifier;)V

    return-void
.end method
