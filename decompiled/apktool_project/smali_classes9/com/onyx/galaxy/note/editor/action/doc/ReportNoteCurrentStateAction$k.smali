.class public final Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction;->v()Lio/reactivex/rxjava3/core/Observable;
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
.field public static final e:Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction$k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction$k<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction$k;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction$k;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction$k;->e:Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction$k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction;)Ljava/lang/Integer;
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserNoteTabProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/NoteTabDataProvider;->queryTabCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction$k;->a(Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
