.class public final synthetic Lcom/sunia/HTREnginev2/xlm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs$Companion;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs$Companion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xlm;->e:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs$Companion;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xlm;->e:Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs$Companion;

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs$Companion;->compare(Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;)I

    move-result p0

    return p0
.end method
