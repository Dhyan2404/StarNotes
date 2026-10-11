.class public final synthetic Lcom/couchbase/lite/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/CollectionChangeNotifier;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/CollectionChangeNotifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/h;->e:Lcom/couchbase/lite/CollectionChangeNotifier;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/h;->e:Lcom/couchbase/lite/CollectionChangeNotifier;

    invoke-static {p0}, Lcom/couchbase/lite/CollectionChangeNotifier;->f(Lcom/couchbase/lite/CollectionChangeNotifier;)V

    return-void
.end method
