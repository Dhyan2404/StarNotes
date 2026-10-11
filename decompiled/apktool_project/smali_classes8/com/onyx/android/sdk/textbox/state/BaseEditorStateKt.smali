.class public final Lcom/onyx/android/sdk/textbox/state/BaseEditorStateKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/textbox/state/BaseEditorStateKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getEditorState",
        "Lcom/onyx/android/sdk/textbox/state/IEditorState;",
        "state",
        "Lcom/onyx/android/sdk/textbox/data/EditorState;",
        "sdk-textbox_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getEditorState(Lcom/onyx/android/sdk/textbox/data/EditorState;)Lcom/onyx/android/sdk/textbox/state/IEditorState;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/textbox/data/EditorState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/textbox/state/BaseEditorStateKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/onyx/android/sdk/textbox/state/EditorIdleState;

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/state/EditorIdleState;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/onyx/android/sdk/textbox/state/EditorEditingState;

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/state/EditorEditingState;-><init>()V

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/onyx/android/sdk/textbox/state/EditorReadOnlyState;

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/state/EditorReadOnlyState;-><init>()V

    :goto_1
    return-object p0
.end method
