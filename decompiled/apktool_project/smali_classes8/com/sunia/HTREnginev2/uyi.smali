.class public final synthetic Lcom/sunia/HTREnginev2/uyi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs$Companion;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs$Companion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uyi;->e:Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs$Companion;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uyi;->e:Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs$Companion;

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs$Companion;->compare(Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;Lcom/onyx/android/sdk/replicator/note/proto/data/LinkDocumentArgs;)I

    move-result p0

    return p0
.end method
