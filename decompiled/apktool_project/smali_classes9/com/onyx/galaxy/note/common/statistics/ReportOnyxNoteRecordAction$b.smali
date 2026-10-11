.class public final Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b;->e:Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)Z
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction$b;->a(Lcom/onyx/galaxy/note/common/statistics/ReportOnyxNoteRecordAction;)Z

    move-result p0

    return p0
.end method
