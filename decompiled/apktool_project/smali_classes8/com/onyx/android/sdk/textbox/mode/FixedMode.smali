.class public final Lcom/onyx/android/sdk/textbox/mode/FixedMode;
.super Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/mode/FixedMode;",
        "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;",
        "textBox",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V",
        "getType",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;",
        "onOrientationChanged",
        "",
        "isVertical",
        "",
        "resizeEditorHeight",
        "sizeInfo",
        "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
        "resizeEditorWidth",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;->FIXED:Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;

    return-object p0
.end method

.method public onOrientationChanged(Z)V
    .locals 0

    return-void
.end method

.method public resizeEditorHeight(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "sizeInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public resizeEditorWidth(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "sizeInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
