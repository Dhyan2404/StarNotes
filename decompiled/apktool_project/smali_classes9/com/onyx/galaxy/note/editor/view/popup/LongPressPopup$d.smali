.class public final Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d;->e:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->ensureUniqueIdExist()Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$d;->a(I)Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;

    move-result-object p0

    return-object p0
.end method
