.class public final Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->i()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h;->e:Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->addAutoReLockNoteTask(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$h;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method
