.class public final synthetic Lcom/sunia/HTREnginev2/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/CollectionChangeListener;


# instance fields
.field public final synthetic a:Lcom/couchbase/lite/DatabaseChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/DatabaseChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/y2;->a:Lcom/couchbase/lite/DatabaseChangeListener;

    return-void
.end method


# virtual methods
.method public final changed(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/y2;->a:Lcom/couchbase/lite/DatabaseChangeListener;

    check-cast p1, Lcom/couchbase/lite/CollectionChange;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/ChangeListener;->changed(Ljava/lang/Object;)V

    return-void
.end method
