.class final Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$audioPlayer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$audioPlayer$2;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v6, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$audioPlayer$2;->this$0:Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string p0, "requireActivity(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getAlarmRes()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;-><init>(Landroid/content/Context;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/CounterAlarmSettingFragment$audioPlayer$2;->invoke()Lcom/onyx/galaxy/note/common/audio/ResourceRingPlayer;

    move-result-object p0

    return-object p0
.end method
