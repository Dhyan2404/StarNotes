.class public final synthetic Lcom/sunia/HTREnginev2/szm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

.field public final synthetic c:Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/szm;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/szm;->b:Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/szm;->c:Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/szm;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/szm;->b:Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/szm;->c:Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;

    invoke-static {v0, v1, p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->d(Ljava/util/List;Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;)V

    return-void
.end method
