.class public final synthetic Lcom/couchbase/lite/internal/exec/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;

    invoke-static {p1}, Lcom/couchbase/lite/internal/exec/CleanerImpl;->a(Lcom/couchbase/lite/internal/exec/CleanerImpl$CleanableRef;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
