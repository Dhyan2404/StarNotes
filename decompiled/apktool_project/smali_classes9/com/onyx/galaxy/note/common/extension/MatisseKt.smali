.class public final Lcom/onyx/galaxy/note/common/extension/MatisseKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u00a8\u0006\u0003"
    }
    d2 = {
        "buildSelectionCreator",
        "Lcom/onyx/android/sdk/matisse/SelectionCreator;",
        "Lcom/onyx/android/sdk/matisse/Matisse;",
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
.method public static final buildSelectionCreator(Lcom/onyx/android/sdk/matisse/Matisse;)Lcom/onyx/android/sdk/matisse/SelectionCreator;
    .locals 5
    .param p0    # Lcom/onyx/android/sdk/matisse/Matisse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/matisse/MimeType;->ofImage()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/Matisse;->choose(Ljava/util/Set;)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->showSingleMediaType(Z)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getScreenOnOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->setKeepScreenOnEnable(Ljava/lang/Boolean;)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->countable(Z)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->originalEnable(Z)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/matisse/GifSizeFilter;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->image_picker_min_size:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    sget v3, Lcom/onyx/galaxy/note/R$integer;->image_picker_min_size:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v3

    sget v4, Lcom/onyx/galaxy/note/R$integer;->image_quality_max:I

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x400

    mul-int/lit16 v4, v4, 0x400

    invoke-direct {v0, v2, v3, v4}, Lcom/onyx/android/sdk/matisse/GifSizeFilter;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->addFilter(Lcom/onyx/android/sdk/matisse/filter/Filter;)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->grid_expected_size:I

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->gridExpectedSize(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$integer;->image_picker_max_count:I

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->maxSelectable(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    sget v0, Lcom/onyx/galaxy/note/R$integer;->image_quality_max:I

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->maxOriginalSize(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/matisse/engine/impl/GlideEngine;

    invoke-direct {v0}, Lcom/onyx/android/sdk/matisse/engine/impl/GlideEngine;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->imageEngine(Lcom/onyx/android/sdk/matisse/engine/ImageEngine;)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$style;->Matisse_Dracula:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->theme(I)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    const-string v0, "theme(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
