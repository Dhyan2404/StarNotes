.class public final Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static forgetNotePassword(Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static verifyFinger(Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static verifyNotePassword(Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout$EditorViewLockLayoutListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "password"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
