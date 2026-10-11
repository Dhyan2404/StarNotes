.class public final Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;
.super Lcom/chad/library/adapter4/BaseMultiItemAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioSetViewHolder;,
        Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$AudioViewHolder;,
        Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$Companion;,
        Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$NormalViewHolder;,
        Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter<",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0015\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004&\'%(B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008#\u0010$J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J\u0008\u0010\u0007\u001a\u00020\u0003H\u0002J\u0008\u0010\u0008\u001a\u00020\u0003H\u0002R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\"\u0010\u0010\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001d\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u000f\u001a\u0004\u0008\u001d\u0010\u0011\"\u0004\u0008\u001e\u0010\u0013R\"\u0010\"\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010\u000f\u001a\u0004\u0008 \u0010\u0011\"\u0004\u0008!\u0010\u0013\u00a8\u0006)"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;",
        "Lcom/chad/library/adapter4/BaseMultiItemAdapter;",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "",
        "r",
        "p",
        "q",
        "n",
        "o",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "t",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "",
        "u",
        "Z",
        "isRecording",
        "()Z",
        "setRecording",
        "(Z)V",
        "",
        "v",
        "J",
        "getRecordDuration",
        "()J",
        "setRecordDuration",
        "(J)V",
        "recordDuration",
        "w",
        "isPreviewAudioSet",
        "setPreviewAudioSet",
        "x",
        "getHasNewRecordTip",
        "setHasNewRecordTip",
        "hasNewRecordTip",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "Companion",
        "AudioSetViewHolder",
        "AudioViewHolder",
        "NormalViewHolder",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final A:I = 0x3

.field public static final Companion:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PAY_LOAD_UPDATE_RECORD_DUR:Ljava/lang/String; = "pay_load_update_record_dur"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final y:I = 0x1

.field public static final z:I = 0x2


# instance fields
.field public final t:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Z

.field public v:J

.field public w:Z

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->Companion:Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->t:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->p()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->r()V

    return-void
.end method

.method public static final synthetic access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->t:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public static synthetic m(ILjava/util/List;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->s(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final s(ILjava/util/List;)I
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    sget-object p1, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public final getHasNewRecordTip()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->x:Z

    return p0
.end method

.method public final getRecordDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->v:J

    return-wide v0
.end method

.method public final isPreviewAudioSet()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->w:Z

    return p0
.end method

.method public final isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->u:Z

    return p0
.end method

.method public final n()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioItem$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final o()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addAudioSetItem$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final p()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->n()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->o()V

    return-void
.end method

.method public final q()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter$addNormalItem$1;-><init>(Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->addItemType(ILcom/chad/library/adapter4/BaseMultiItemAdapter$OnMultiItemAdapterListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final r()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/yom;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/yom;-><init>()V

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter4/BaseMultiItemAdapter;->onItemViewType(Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;)Lcom/chad/library/adapter4/BaseMultiItemAdapter;

    return-void
.end method

.method public final setHasNewRecordTip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->x:Z

    return-void
.end method

.method public final setPreviewAudioSet(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->w:Z

    return-void
.end method

.method public final setRecordDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->v:J

    return-void
.end method

.method public final setRecording(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/ShortcutBarMoreFunctionAdapter;->u:Z

    return-void
.end method
