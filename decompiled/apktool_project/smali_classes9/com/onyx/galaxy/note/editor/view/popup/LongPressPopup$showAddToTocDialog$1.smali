.class final Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$showAddToTocDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup;->z(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$showAddToTocDialog$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$showAddToTocDialog$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$showAddToTocDialog$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$showAddToTocDialog$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$showAddToTocDialog$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LongPressPopup$showAddToTocDialog$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 1
    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsNoteOutlineAddEvent;

    sget-object v1, Lcom/onyx/android/sdk/data/NoteOutlineAddFrom;->LONG_CLICK_MENU:Lcom/onyx/android/sdk/data/NoteOutlineAddFrom;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/event/StatisticsNoteOutlineAddEvent;-><init>(Lcom/onyx/android/sdk/data/NoteOutlineAddFrom;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
