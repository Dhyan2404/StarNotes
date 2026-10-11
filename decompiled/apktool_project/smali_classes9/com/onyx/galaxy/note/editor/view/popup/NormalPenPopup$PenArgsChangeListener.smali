.class public interface abstract Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PenArgsChangeListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;",
        "",
        "onAddPenArgs",
        "",
        "onChangeSmoothLevel",
        "smoothLevel",
        "",
        "onChangeStrokeNib",
        "nib",
        "onChangeStrokePressure",
        "pressureSensitivity",
        "onChangeStrokeWidth",
        "strokeWidth",
        "onRemovePenArgs",
        "onSelectedColor",
        "color",
        "",
        "colorIndex",
        "onSelectedColorDismiss",
        "onSelectedColorList",
        "colorList",
        "Lcom/onyx/android/sdk/base/extension/IntList;",
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


# virtual methods
.method public abstract onAddPenArgs()V
.end method

.method public abstract onChangeSmoothLevel(F)V
.end method

.method public abstract onChangeStrokeNib(F)V
.end method

.method public abstract onChangeStrokePressure(F)V
.end method

.method public abstract onChangeStrokeWidth(F)V
.end method

.method public abstract onRemovePenArgs()V
.end method

.method public abstract onSelectedColor(II)V
.end method

.method public abstract onSelectedColorDismiss()V
.end method

.method public abstract onSelectedColorList(Lcom/onyx/android/sdk/base/extension/IntList;I)V
    .param p1    # Lcom/onyx/android/sdk/base/extension/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
