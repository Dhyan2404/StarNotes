.class public final synthetic Lcom/couchbase/lite/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic e:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:J

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/a;->e:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;

    iput-object p2, p0, Lcom/couchbase/lite/internal/a;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/couchbase/lite/internal/a;->g:Ljava/lang/String;

    iput-wide p4, p0, Lcom/couchbase/lite/internal/a;->h:J

    iput p6, p0, Lcom/couchbase/lite/internal/a;->i:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/couchbase/lite/internal/a;->e:Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;

    iget-object v1, p0, Lcom/couchbase/lite/internal/a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/couchbase/lite/internal/a;->g:Ljava/lang/String;

    iget-wide v3, p0, Lcom/couchbase/lite/internal/a;->h:J

    iget v5, p0, Lcom/couchbase/lite/internal/a;->i:I

    invoke-static/range {v0 .. v5}, Lcom/couchbase/lite/internal/ReplicationCollection;->f(Lcom/couchbase/lite/internal/ReplicationCollection$C4Filter;Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
