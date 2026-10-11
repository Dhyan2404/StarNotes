.class final Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$addToToc$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->I0()V
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
.field public static final INSTANCE:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$addToToc$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$addToToc$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$addToToc$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$addToToc$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$addToToc$1;

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

    .line 3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$addToToc$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/event/StatisticsNoteOutlineAddEvent;

    sget-object v0, Lcom/onyx/android/sdk/data/NoteOutlineAddFrom;->FULL_DOC_OVERVIEW_MULTI_SELECTION:Lcom/onyx/android/sdk/data/NoteOutlineAddFrom;

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/event/StatisticsNoteOutlineAddEvent;-><init>(Lcom/onyx/android/sdk/data/NoteOutlineAddFrom;)V

    .line 2
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
