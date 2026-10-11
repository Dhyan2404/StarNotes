.class public final Lcom/couchbase/lite/Collation$ASCII;
.super Lcom/couchbase/lite/Collation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/Collation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ASCII"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/couchbase/lite/Collation;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setIgnoreCase(Z)Lcom/couchbase/lite/Collation$ASCII;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/couchbase/lite/Collation;->setIgnoreCase(Z)Lcom/couchbase/lite/Collation;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Collation$ASCII;

    return-object p0
.end method

.method public bridge synthetic setIgnoreCase(Z)Lcom/couchbase/lite/Collation;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collation$ASCII;->setIgnoreCase(Z)Lcom/couchbase/lite/Collation$ASCII;

    move-result-object p0

    return-object p0
.end method
