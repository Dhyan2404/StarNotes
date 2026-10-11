.class public final synthetic Lcom/sunia/HTREnginev2/pzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/pzm;->a:Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/pzm;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/pzm;->a:Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/pzm;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->b(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/util/List;)V

    return-void
.end method
