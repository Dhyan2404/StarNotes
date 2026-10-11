.class public final Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;",
        "",
        "",
        "eraserType",
        "",
        "eraserTypeChange",
        "",
        "a",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isEraserTool(Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->ensureSelectShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->ERASER:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final eraserTypeChange(I)V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/EraserPropertyOption;->getEraserTypeOption()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/EraserPopup$Companion;->a()Z

    move-result p0

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeEraseTypeEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method
