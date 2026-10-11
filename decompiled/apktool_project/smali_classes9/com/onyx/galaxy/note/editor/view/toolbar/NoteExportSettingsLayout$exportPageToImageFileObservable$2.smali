.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$exportPageToImageFileObservable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;->g()Lio/reactivex/rxjava3/core/Observable;
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


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$exportPageToImageFileObservable$2;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->notifySystemToScan(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsPageOutputEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/event/StatisticsPageOutputEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$exportPageToImageFileObservable$2;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/onyx/galaxy/note/R$string;->export_succeed:I

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;Ljava/lang/CharSequence;ZILjava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$exportPageToImageFileObservable$2$1;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$exportPageToImageFileObservable$2;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$exportPageToImageFileObservable$2$1;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lkotlin/jvm/functions/Function1;)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/NoteExportSettingsLayout$exportPageToImageFileObservable$2;->a(Ljava/lang/String;)V

    return-void
.end method
