.class public final synthetic Lcom/sunia/HTREnginev2/a5k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/ReplicationFilter;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a5k;->a:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    return-void
.end method


# virtual methods
.method public final filtered(Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/a5k;->a:Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;->t(Lcom/onyx/android/sdk/replicator/note/NoteTreeReplicator;Lcom/couchbase/lite/Document;Ljava/util/EnumSet;)Z

    move-result p0

    return p0
.end method
