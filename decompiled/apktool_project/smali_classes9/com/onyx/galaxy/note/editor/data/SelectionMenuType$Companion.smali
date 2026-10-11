.class public final Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000cJ\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0012\u001a\u00020\u0013J\u001c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0013J\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000cJ\u000e\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000cJ\u000e\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;",
        "",
        "()V",
        "getAnnotationColorIndexOption",
        "Lcom/onyx/android/sdk/data/utils/IntOption;",
        "annotationStyle",
        "",
        "getAnnotationColorListOption",
        "Lcom/onyx/android/sdk/data/utils/IntListOption;",
        "getAnnotationColorOption",
        "getAnnotationMenuTypes",
        "",
        "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
        "getAnnotationStyleOption",
        "getAnnotationStyleType",
        "menu",
        "getCommonMenuTypes",
        "getExcerptMenus",
        "hasQuote",
        "",
        "getPageInsertMenus",
        "uiFeature",
        "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;",
        "keepPasteMenu",
        "getPasteMenus",
        "getTextSelectionMenuTypes",
        "getUniversalMenus",
        "isAnnotationMenuType",
        "type",
        "isRootMenuType",
        "isValidImageResId",
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAnnotationColorIndexOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/IntOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ONYX_NOTE_EDIT_COLOR_ANNOTATION_INDEX_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/data/utils/IntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final getAnnotationColorListOption(I)Lcom/onyx/android/sdk/data/utils/IntListOption;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_DOC_HIGHLIGHT_COLOR_LIST()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_DOC_HIGHLIGHT_OPAQUE_COLOR_LIST()Ljava/util/List;

    move-result-object p0

    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/data/utils/IntListOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONYX_NOTE_EDIT_ANNOTATION_COLOR_LIST_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/TypeExtKt;->toIntList(Ljava/util/List;)Lcom/onyx/android/sdk/base/extension/IntList;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Lcom/onyx/android/sdk/data/utils/IntListOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/IntList;)V

    return-object v0
.end method

.method public final getAnnotationColorOption(I)Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$color;->doc_highlight_default_pink_color:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$color;->doc_highlight_opaque_default_blue_color:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$color;->doc_highlight_opaque_default_yellow_color:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/onyx/galaxy/note/R$color;->doc_highlight_default_pink_color:I

    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/data/utils/IntOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONYX_NOTE_EDIT_ANNOTATION_COLOR_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result p0

    invoke-direct {v0, v1, p1, p0}, Lcom/onyx/android/sdk/data/utils/IntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getAnnotationMenuTypes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->HIGHLIGHT:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->UNDERLINE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->WAVY_LINE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->COPY:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v4, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->TRANSLATE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v5, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->SAVE_TEXT_EXCERPT:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v6, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->DELETE_ANNOTATION:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    filled-new-array/range {v0 .. v6}, [Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getAnnotationStyleOption()Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/IntOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "ONYX_NOTE_EDIT_ANNOTATION_STYLE"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/IntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final getAnnotationStyleType(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)I
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "menu"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public final getCommonMenuTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->DELETE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getExcerptMenus(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->DELETE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->JUMP_TO_QUOTE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->COMMENT:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    filled-new-array {p0, v0, v1}, [Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final getPageInsertMenus(Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;Z)Ljava/util/List;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uiFeature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportCreatePageLink()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->CREATE_PAGE_LINK:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->ADD_TAG:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportAddToOutline()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->ADD_TO_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->PASTE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->CLIPBOARD_CLEAN:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType$Companion;->getPasteMenus()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public final getPasteMenus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->PASTE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->CLIPBOARD_CLEAN:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    filled-new-array {p0, v0}, [Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTextSelectionMenuTypes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->HIGHLIGHT:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->UNDERLINE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->WAVY_LINE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->COPY:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v4, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->TRANSLATE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v5, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->SAVE_TEXT_EXCERPT:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    filled-new-array/range {v0 .. v5}, [Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUniversalMenus()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->DELETE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->CUT:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->COPY:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->STYLE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v4, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->TOPPING:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v5, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->BOTTOMING:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v6, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->CREATE_LINK:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v7, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->MOVE_TO_LAYER:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    filled-new-array/range {v0 .. v7}, [Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isAnnotationMenuType(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->HIGHLIGHT:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->WAVY_LINE:Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isRootMenuType(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getParentMenu()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isValidImageResId(Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;)Z
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;->getImageResId()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
