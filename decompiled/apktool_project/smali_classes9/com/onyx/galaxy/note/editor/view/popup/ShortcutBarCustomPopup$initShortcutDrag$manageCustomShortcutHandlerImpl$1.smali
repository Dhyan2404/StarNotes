.class public final Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$initShortcutDrag$manageCustomShortcutHandlerImpl$1;
.super Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$initShortcutDrag$manageCustomShortcutHandlerImpl$1",
        "Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;",
        "swap",
        "",
        "fromPosition",
        "",
        "toPosition",
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
.field public final synthetic b:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$initShortcutDrag$manageCustomShortcutHandlerImpl$1;->b:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;

    invoke-direct {p0, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/CustomShortcutBarAdapter;)V

    return-void
.end method


# virtual methods
.method public swap(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/itemtouchcallback/ManageCustomShortcutHandlerImpl;->swap(II)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup$initShortcutDrag$manageCustomShortcutHandlerImpl$1;->b:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;->access$onShortcutSwapped(Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarCustomPopup;)V

    return-void
.end method
