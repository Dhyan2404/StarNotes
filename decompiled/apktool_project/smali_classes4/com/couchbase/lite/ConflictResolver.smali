.class public interface abstract Lcom/couchbase/lite/ConflictResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final DEFAULT:Lcom/couchbase/lite/ConflictResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/DefaultConflictResolver;

    invoke-direct {v0}, Lcom/couchbase/lite/DefaultConflictResolver;-><init>()V

    sput-object v0, Lcom/couchbase/lite/ConflictResolver;->DEFAULT:Lcom/couchbase/lite/ConflictResolver;

    return-void
.end method


# virtual methods
.method public abstract resolve(Lcom/couchbase/lite/Conflict;)Lcom/couchbase/lite/Document;
    .param p1    # Lcom/couchbase/lite/Conflict;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
