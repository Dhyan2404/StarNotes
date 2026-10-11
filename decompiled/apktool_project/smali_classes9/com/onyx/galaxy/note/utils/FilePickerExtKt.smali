.class public final Lcom/onyx/galaxy/note/utils/FilePickerExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "setCommonConfig",
        "Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;",
        "note_overseasRelease"
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
.method public static final setCommonConfig(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
    .locals 2
    .param p0    # Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getScreenOnOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->setKeepScreenOnEnable(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getStatusBarHideOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->setHideStatusBar(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object p0

    return-object p0
.end method
