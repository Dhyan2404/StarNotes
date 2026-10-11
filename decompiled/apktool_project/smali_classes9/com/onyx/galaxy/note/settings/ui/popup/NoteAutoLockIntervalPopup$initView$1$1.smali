.class public final Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup$initView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup$initView$1$1",
        "Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "index",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup$initView$1$1;->a:Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup$initView$1$1;->a:Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;

    invoke-static {v0}, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->access$getPickCallback$p(Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup$initView$1$1;->a:Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;->access$getAdapter$p(Lcom/onyx/galaxy/note/settings/ui/popup/NoteAutoLockIntervalPopup;)Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/wheelview/NumericWheelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
