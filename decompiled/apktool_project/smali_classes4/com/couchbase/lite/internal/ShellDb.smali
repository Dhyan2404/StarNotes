.class public Lcom/couchbase/lite/internal/ShellDb;
.super Lcom/couchbase/lite/BaseDatabase;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/couchbase/lite/BaseDatabase;-><init>()V

    const-string v0, "db handle"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    const-string v0, "Cannot create database"

    invoke-static {v0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->requireInit(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/core/C4Database;->getUnmanagedDatabase(J)Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/BaseDatabase;->setC4DatabaseLocked(Lcom/couchbase/lite/internal/core/C4Database;)V

    return-void
.end method
