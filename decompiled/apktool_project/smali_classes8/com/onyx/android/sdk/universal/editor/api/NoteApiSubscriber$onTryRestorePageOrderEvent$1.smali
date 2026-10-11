.class final Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber;->onTryRestorePageOrderEvent(Lcom/onyx/android/sdk/universal/editor/events/app/TryRestorePageOrderEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteApiSubscriber.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteApiSubscriber.kt\ncom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1045#2:563\n1549#2:565\n1620#2,3:566\n1#3:564\n*S KotlinDebug\n*F\n+ 1 NoteApiSubscriber.kt\ncom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1\n*L\n515#1:563\n519#1:565\n519#1:566,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "workBundle",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteApiSubscriber.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteApiSubscriber.kt\ncom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,562:1\n1045#2:563\n1549#2:565\n1620#2,3:566\n1#3:564\n*S KotlinDebug\n*F\n+ 1 NoteApiSubscriber.kt\ncom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1\n*L\n515#1:563\n519#1:565\n519#1:566,3\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "workBundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->getVirtualPageList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 3
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1$invoke$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/api/NoteApiSubscriber$onTryRestorePageOrderEvent$1$invoke$$inlined$sortedBy$1;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 4
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->reorderOrderIndexByListIndex(Ljava/util/List;)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->toPagePathInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 6
    check-cast p0, Ljava/lang/Iterable;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;

    .line 10
    sget-object v3, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;->Companion:Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;

    invoke-virtual {v3, v2, v0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage$Companion;->createVirtualPageModel(Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;Ljava/util/List;)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;

    move-result-object v2

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualModelProvider()Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;->saveVirtualPageList(Ljava/util/List;)V

    .line 13
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getVirtualPolicy()Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/universal/editor/doc/VirtualDocPolicy;->close()V

    return-void
.end method
