.class public final synthetic Lcom/sunia/HTREnginev2/uzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/uzm;->a:Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/uzm;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/uzm;->a:Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/uzm;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;->c(Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;Ljava/lang/String;)V

    return-void
.end method
